tp @p 5000 -30 5000
summon brst:hole 5000 -30 5000
scoreboard players set @e[type=brst:hole] MAX 240
scoreboard players set @e[type=brst:hole] death_timer 30
tickingarea add 4995 -60 4995 5005 0 5005 hole_area