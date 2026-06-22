# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class PartTool(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    id_part = models.ForeignKey('Parts', models.DO_NOTHING, db_column='ID_Part')  # Field name made lowercase.
    id_tool = models.ForeignKey('Tools', models.DO_NOTHING, db_column='ID_Tool')  # Field name made lowercase.
    operations = models.CharField(db_column='Operations', max_length=60, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Part_Tool'


class Parts(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nr = models.CharField(db_column='Nr', max_length=20)  # Field name made lowercase.
    name = models.CharField(db_column='Name', unique=True, max_length=20)  # Field name made lowercase.
    dir = models.CharField(db_column='Dir', max_length=255, blank=True, null=True)  # Field name made lowercase.
    model = models.CharField(db_column='Model', max_length=255, blank=True, null=True)  # Field name made lowercase.
    drawing = models.CharField(db_column='Drawing', max_length=255, blank=True, null=True)  # Field name made lowercase.
    photo = models.CharField(db_column='Photo', max_length=255, blank=True, null=True)  # Field name made lowercase.
    g_code = models.CharField(db_column='G_Code', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Parts'


class Tools(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    type = models.CharField(db_column='Type', max_length=45, blank=True, null=True)  # Field name made lowercase.
    unique_code = models.CharField(db_column='Unique_Code', unique=True, max_length=45, blank=True, null=True)  # Field name made lowercase.
    name = models.CharField(db_column='Name', max_length=45)  # Field name made lowercase.
    length_mm = models.DecimalField(db_column='Length_mm', max_digits=7, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    diameter_mm = models.DecimalField(db_column='Diameter_mm', max_digits=6, decimal_places=3, blank=True, null=True)  # Field name made lowercase.
    angle = models.DecimalField(db_column='Angle', max_digits=4, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    storage_machine_id = models.CharField(db_column='Storage_Machine_ID', max_length=10, blank=True, null=True)  # Field name made lowercase.
    slot = models.IntegerField(db_column='Slot', blank=True, null=True)  # Field name made lowercase.
    dir = models.CharField(db_column='Dir', max_length=255, blank=True, null=True)  # Field name made lowercase.
    photo = models.CharField(db_column='Photo', max_length=255, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Tools'
