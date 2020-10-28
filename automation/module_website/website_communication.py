import os
import sys
import re
import time
import uuid
import subprocess
import traceback
import paramiko
from django.conf import settings

from .utils import get_host_ip


MATCH_SUB_CNZZ = re.compile(r"""<script type="text/javascript" src="https://.*?\.cnzz(\.com|\.cn)/.*?">.*?</script>?|<script type="text/javascript">document.write.*? src='https://.*?cnzz(\.com|\.cn)/.*?</script>?""", flags=re.DOTALL)


class WebsiteCommunication(object):
    website_root = '/www/wwwroot'
    local_mode = False
    def __init__(self, hostname, port, username, password, local_host=None, website_root=None):
        if website_root:
            self.website_root = website_root
        ip = get_host_ip()
        if ip == hostname or ip == local_host:
            self.local_mode = True

        else:
            self.client = paramiko.SSHClient()
            self.client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
            # self.client.connect('47.241.128.107', 22, 'root', 'B9KaW%xYvTn$2Mm&', timeout=5)
            self.client.connect(hostname=hostname,
                                port=port,
                                username=username,
                                password=password,
                                timeout=30)
            self.sftp_client = self.client.open_sftp()

    def rename_service(self, target_dir):
        target_full_path_filename = os.path.join(self.website_root, target_dir, 'data.bat')
        if sys.platform.find("win") != -1:
            target_full_path_filename = target_full_path_filename.replace('\\', '/')
        new_filename = os.path.join(self.website_root, target_dir, 'data'+str(int(time.time())))
        if sys.platform.find("win") != -1:
            new_filename = new_filename.replace('\\', '/')
        self.client.exec_command(r'mv {} {}'.format(target_full_path_filename, new_filename))
        return target_full_path_filename, new_filename

    def local_mode_rename_service(self, target_dir):
        target_full_path_filename = os.path.join(self.website_root, target_dir, 'data.bat')
        if sys.platform.find("win") != -1:
            target_full_path_filename = target_full_path_filename.replace('\\', '/')
        new_filename = os.path.join(self.website_root, target_dir, 'data' + str(int(time.time())))
        if sys.platform.find("win") != -1:
            new_filename = new_filename.replace('\\', '/')
        os.system(r'mv {} {}'.format(target_full_path_filename, new_filename))

    def restore_service(self, old_name, new_name):
        self.client.exec_command(r'mv {} {}'.format(old_name, new_name))

    def local_mode_restore_service(self, old_name, new_name):
        os.system(r'mv {} {}'.format(old_name, new_name))

    def move_dir(self, source_dir, target_dir):
        # cp -R -f A/ B/
        source_path = os.path.join(self.website_root, source_dir, "*")
        if sys.platform.find("win") != -1:
            source_path = source_path.replace('\\', '/')

        target_path = os.path.join(self.website_root, target_dir)
        if sys.platform.find("win") != -1:
            target_path = target_path.replace('\\', '/')
        try:
            self.client.exec_command(f"cp -R -f -p {source_path} {target_path}")
        except Exception as e:
            print(e)
            return False
        else:
            return True

    def local_mode_move_dir(self, source_dir, target_dir):
        # cp -R -f A/ B/
        source_path = os.path.join(self.website_root, source_dir, "*")
        if sys.platform.find("win") != -1:
            source_path = source_path.replace('\\', '/')

        target_path = os.path.join(self.website_root, target_dir)
        if sys.platform.find("win") != -1:
            target_path = target_path.replace('\\', '/')
        try:
            os.system(f"cp -R -f -p {source_path} {target_path}")
            # result = subprocess.run("dir", stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True,
            #                         shell=True)
        except Exception as e:
            print(e)
            return False
        else:
            return True

    def get_file(self, target_filename, local_filename):
        try:
            print(target_filename, local_filename)
            self.sftp_client.get(target_filename, local_filename)
        except Exception as e:
            return False
        else:
            return True

    def put_file(self, local_filename, target_filename):
        try:
            print(local_filename, target_filename)
            self.sftp_client.put(local_filename, target_filename)
        except Exception as e:
            return False
        else:
            return True

    def replace_cnzz(self, target_dir, cnzz):
        # index.php 修改文件
        target_file = os.path.join(self.website_root, target_dir, 'index.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')
        local_file = os.path.join(settings.BASE_DIR, 'temp', str(int(time.time()))+'.php')
        try:
            self.sftp_client.get(target_file, local_file)

            temp_file_list = []

            with open(local_file, "r", encoding='utf-8') as f:
                for i in f.readlines():
                    temp_file_list.append(i)
            zip_text = ''.join(temp_file_list)
            match_status = MATCH_SUB_CNZZ.search(zip_text)
            if match_status:
                zip_text = MATCH_SUB_CNZZ.sub(cnzz, zip_text)

            else:
                if temp_file_list[-1] == "</html>" or temp_file_list[-1].rfind('</html>') != -1:
                    temp_file_list.insert(-1, cnzz)
                else:
                    for no, line in enumerate(temp_file_list):
                        coordinates = line.find("</html>")
                        if coordinates != -1:
                            temp_file_list.insert(no, cnzz)
                        else:
                            temp_file_list.append(cnzz)
                zip_text = ''.join(temp_file_list)
            with open(local_file, 'w+', encoding='utf-8') as f:
                f.write(zip_text)

            self.sftp_client.put(local_file, target_file)
        except Exception as e:
            traceback.print_exc()
            print(e)
        self.del_local_file(local_file)

    def local_mode_replace_cnzz(self, target_dir, cnzz):
        # index.php 修改文件
        target_file = os.path.join(self.website_root, target_dir, 'index.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')
        try:
            temp_file_list = []
            with open(target_file, "r", encoding='utf-8') as f:
                for i in f.readlines():
                    temp_file_list.append(i)
            zip_text = ''.join(temp_file_list)
            match_status = MATCH_SUB_CNZZ.search(zip_text)
            if match_status:
                zip_text = MATCH_SUB_CNZZ.sub(cnzz, zip_text)
            else:
                if temp_file_list[-1] == "</html>" or temp_file_list[-1].rfind('</html>') != -1:
                    temp_file_list.insert(-1, cnzz)
                else:
                    for no, line in enumerate(temp_file_list):
                        coordinates = line.find("</html>")
                        if coordinates != -1:
                            temp_file_list.insert(no, cnzz)
                        else:
                            temp_file_list.append(cnzz)
                zip_text = ''.join(temp_file_list)
            with open(target_file, 'w+', encoding='utf-8') as f:
                f.write(zip_text)

        except Exception as e:
            traceback.print_exc()
            print(e)

    def replace_facebook(self, target_dir, facebook):
        target_file = os.path.join(self.website_root, target_dir, 'index.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')
        local_file = os.path.join(settings.BASE_DIR, 'temp', str(int(time.time())) + '.php')
        facebook = '\n<!-- facebook_mark_code_start -->\n' + facebook + '\n<!-- facebook_mark_code_end -->\n'
        r_status = self.get_file(target_file, local_file)
        temp_file_list = []
        with open(local_file, 'r', encoding='utf-8') as f:
            facebook_area = False
            facebook_index_start = 0
            facebook_index_end = 0
            facebook_add_status = False

            facebook_exist = False
            file_inside_head = '</head>'
            file_inside_head_index = 0
            for no, line in enumerate(f.readlines()):
                if line.find(file_inside_head) != -1:
                    file_inside_head_index = no

                if line.find('facebook_mark_code_start') != -1:
                    facebook_area = True
                    facebook_index_start = no
                    facebook_exist = True

                elif line.find('facebook_mark_code_end') != -1:
                    facebook_area = False
                    facebook_index_end = no
                    continue

                if facebook_area == False:
                    temp_file_list.append(line)
                elif facebook_add_status == False:
                    temp_file_list.append(facebook)
                    facebook_add_status = True
            if not facebook_exist:
                temp_file_list.insert(file_inside_head_index, facebook)
        with open(local_file, "w+", encoding='utf-8') as ff:
            ff.writelines(temp_file_list)
        self.put_file(local_file, target_file)
        self.del_local_file(local_file)

    def local_mode_replace_facebook(self, target_dir, facebook):
        target_file = os.path.join(self.website_root, target_dir, 'index.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')
        # local_file = os.path.join(settings.BASE_DIR, 'temp', str(int(time.time())) + '.php')
        facebook = '\n<!-- facebook_mark_code_start -->\n' + facebook + '\n<!-- facebook_mark_code_end -->\n'
        # r_status = self.get_file(target_file, local_file)
        temp_file_list = []
        with open(target_file, 'r', encoding='utf-8') as f:
            facebook_area = False
            facebook_index_start = 0
            facebook_index_end = 0
            facebook_add_status = False

            facebook_exist = False
            file_inside_head = '</head>'
            file_inside_head_index = 0
            for no, line in enumerate(f.readlines()):
                if line.find(file_inside_head) != -1:
                    file_inside_head_index = no

                if line.find('facebook_mark_code_start') != -1:
                    facebook_area = True
                    facebook_index_start = no
                    facebook_exist = True

                elif line.find('facebook_mark_code_end') != -1:
                    facebook_area = False
                    facebook_index_end = no
                    continue

                if facebook_area == False:
                    temp_file_list.append(line)
                elif facebook_add_status == False:
                    temp_file_list.append(facebook)
                    facebook_add_status = True
            if not facebook_exist:
                temp_file_list.insert(file_inside_head_index, facebook)
        with open(target_file, "w+", encoding='utf-8') as ff:
            ff.writelines(temp_file_list)

    def change_block_status(self, status, target_dir):
        """
        :param status: True False
        :param target_dir: 文件夹名称
        :return:
        """
        target_file = os.path.join(self.website_root, target_dir, 'ip_cloak.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')
        local_file = os.path.join(settings.BASE_DIR, 'temp', str(int(time.time())) + '.php')
        self.sftp_client.get(target_file, local_file)

        temp_file_list = []
        with open(local_file, "r", encoding='utf8') as f:
            for line in f.readlines():
                if line.find("广告通过审核前 请勿删除此行。") != -1:
                    if status:
                        if not line.startswith('//'):
                            line = "//" + line
                    else:
                        if line.startswith('//'):
                            line = line.replace('//', '', 1)
                            line = line.replace('true', 'false')

                    temp_file_list.append(line)
                else:
                    temp_file_list.append(line)
        with open(local_file, "w", encoding='utf-8') as f:
            f.writelines(temp_file_list)
        self.sftp_client.put(local_file, target_file)
        self.del_local_file(local_file)

    def local_mode_change_block_status(self, status, target_dir):
        """
        :param status: True False
        :param target_dir: 文件夹名称
        :return:
        """
        target_file = os.path.join(self.website_root, target_dir, 'ip_cloak.php')
        if sys.platform.find("win") != -1:
            target_file = target_file.replace('\\', '/')

        temp_file_list = []
        with open(target_file, "r", encoding='utf8') as f:
            for line in f.readlines():
                if line.find("广告通过审核前 请勿删除此行。") != -1:
                    if status:
                        if not line.startswith('//'):
                            line = "//" + line
                    else:
                        if line.startswith('//'):
                            line = line.replace('//', '', 1)
                            line = line.replace('true', 'false')

                    temp_file_list.append(line)
                else:
                    temp_file_list.append(line)
        with open(target_file, "w", encoding='utf-8') as f:
            f.writelines(temp_file_list)

    def del_local_file(self, full_path_filename):
        try:
            os.remove(r'%s' % full_path_filename)
        except Exception as e:
            print(e)
            return False
        else:
            return True

    def __del__(self):
        if self.local_mode:
            pass
        else:
            self.sftp_client.close()
            self.client.close()


def main():
    pass


if __name__ == "__main__":
    main()
