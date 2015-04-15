from django.contrib import admin
from .models import Game_Mode, Masteries, Minions
from .models import Neutral_Monsters, Runes, Summoner_Spells

# Register your models here.
admin.site.register(Game_Mode)
admin.site.register(Masteries)
admin.site.register(Minions)
admin.site.register(Neutral_Monsters)
admin.site.register(Runes)
admin.site.register(Summoner_Spells)

