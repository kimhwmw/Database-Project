from django.db import models

# Create your models here.
class Game_Mode(models.Model):
	name = models.CharField(max_length=16, null=False)
	neutral_ground = models.CharField(max_length=50, null=False)

class Masteries(models.Model):
	name = models.CharField(max_length=30, null=False)
	m_type = models.CharField(max_length=10, null=False)
	effect = models.CharField(max_length=100, null=False)

class Minions(models.Model):
	minion_type = models.CharField(max_length=30, null=False)
	health = models.IntegerField(max_length = 4, null = False)
	attack_dmg = models.IntegerField(max_length = 4, null = False)
	armor = models.IntegerField(max_length = 4, null = False)
	magic_resist = models.IntegerField(max_length = 4, null = False)
	attack_speed = models.DecimalField(max_digits = 10, decimal_places = 3, null = False)
	gold = models.IntegerField(max_length = 4, null = False)
	exp = models.IntegerField(max_length = 4, null = False)

class Neutral_Monsters(models.Model):
	camp = models.CharField(max_length=20, null=False)
	rewards = models.CharField(max_length=100, null=False)
	health = models.IntegerField(max_length = 4, null = False)
	damage = models.IntegerField(max_length = 4, null = False)
	resistance = models.CharField(max_length=16, null=False)
	initial_spawn = models.TimeField()
	respawn_time = models.TimeField()
