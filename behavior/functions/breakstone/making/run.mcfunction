tp @p 5000 -60 5000
kill @e[type=!player]
kill @e[type=!player]
structure load main_spawn 4991 -64 4991 0_degrees none 
summon brst:maker 5000 -60 5000
scoreboard players set @e[type=brst:maker] MAX 265
scoreboard players set @e[type=brst:maker] multi 2
effect @e[type=brst:maker] regeneration 20000000 20 true