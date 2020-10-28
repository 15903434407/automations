from django.db import models
from django.contrib.auth.models import (
    BaseUserManager, AbstractBaseUser, PermissionsMixin
)
from django_extensions.db.models import TimeStampedModel
from versatileimagefield.fields import VersatileImageField


def user_directory_path(instance, filename):
    return "headshot/{}/{}".format(instance.id, filename)



class FireGameUserManager(BaseUserManager):
    def create_user(self, username, password=None):
        """
        Creates and saves a User with the given email, date of
        birth and password.
        """
        if not username:
            raise ValueError('Users must have an email address')

        user = self.model(
            username=username,
        )

        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, password=None):
        """
        Creates and saves a superuser with the given email, date of
        birth and password.
        """
        user = self.create_user(
            username,
            password=password,
        )
        user.is_admin = True
        user.save(using=self._db)
        return user


class FireGameUser(AbstractBaseUser, PermissionsMixin, TimeStampedModel):
    username = models.CharField(verbose_name="用户名", max_length=32, db_index=True, unique=True)
    email = models.EmailField(
        verbose_name='email address',
        max_length=255,
    )
    date_of_birth = models.DateField(blank=True, null=True)
    headshot = VersatileImageField(
        verbose_name="头像",
        upload_to=user_directory_path,
        width_field='width',
        height_field='height'
    )
    height = models.PositiveIntegerField(
        'Image Height',
        blank=True,
        null=True
    )
    width = models.PositiveIntegerField(
        'Image Width',
        blank=True,
        null=True
    )
    is_active = models.BooleanField(default=True)
    is_admin = models.BooleanField(default=False)

    objects = FireGameUserManager()

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []

    def __str__(self):
        return self.email

    # def has_perm(self, perm, obj=None):
    #     "Does the user have a specific permission?"
    #     # Simplest possible answer: Yes, always
    #     return True
    #
    # def has_module_perms(self, app_label):
    #     "Does the user have permissions to view the app `app_label`?"
    #     # Simplest possible answer: Yes, always
    #     return True

    @property
    def is_staff(self):
        "Is the user a member of staff?"
        # Simplest possible answer: All admins are staff
        return self.is_admin


    def __str__(self):
        return f'{self.username}'

    class Meta:
        verbose_name = "用户"
        verbose_name_plural = "用户"
        ordering = ['-id']