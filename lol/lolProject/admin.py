from django.contrib import admin
from .models import Game_Mode, Masteries, Minions, Neutral_Monsters

# Register your models here.
admin.site.register(Game_Mode)
admin.site.register(Masteries)
admin.site.register(Minions)
admin.site.register(Neutral_Monsters)

