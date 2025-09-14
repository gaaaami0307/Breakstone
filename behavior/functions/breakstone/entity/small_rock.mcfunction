#small_rock1
execute as @s[type=brst:small_rock] at @s run tp @s ~~~
execute as @s[type=brst:small_rock] at @s run effect @s resistance 1 99 true
execute as @s[type=brst:small_rock] at @s run scoreboard players add @s death_timer 1
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 run playsound mob.enderdragon.hit @a ~~~ 1 0.8
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 unless entity @e[type=brst:boss,tag=less_particle] run particle minecraft:smash_ground_particle_center ~~~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=7}] at @s align xyz positioned ~0.5 0 ~0.5 run particle minecraft:cauldron_explosion_emitter ~~4~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock1 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=3}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock2 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=5}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock3 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=7}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock4 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 run damage @e[type=player,r=1] 16 entity_attack entity @e[type=brst:boss,c=1]
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 run tp @e[type=player,r=1] ~~1~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=3}] at @s align xyz positioned ~0.5 0 ~0.5 run damage @e[type=player,r=1.5] 14 entity_attack entity @e[type=brst:boss,c=1]
execute as @s[type=brst:small_rock] as @s[scores={death_timer=3}] at @s align xyz positioned ~0.5 0 ~0.5 run tp @e[type=player,r=1.5] ~~1.5~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=5}] at @s align xyz positioned ~0.5 0 ~0.5 run damage @e[type=player,r=2] 12 entity_attack entity @e[type=brst:boss,c=1]
execute as @s[type=brst:small_rock] as @s[scores={death_timer=5}] at @s align xyz positioned ~0.5 0 ~0.5 run tp @e[type=player,r=1.75] ~~2~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=7}] at @s align xyz positioned ~0.5 0 ~0.5 run damage @e[type=player,r=2] 10 entity_attack entity @e[type=brst:boss,c=1]
execute as @s[type=brst:small_rock] as @s[scores={death_timer=7}] at @s align xyz positioned ~0.5 0 ~0.5 run tp @e[type=player,r=2] ~~4~
#消滅判定
execute as @s[type=brst:small_rock] as @s[scores={death_timer=10..}] at @s align xyz positioned ~0.5 0 ~0.5 unless block ~~~ brst:dark_break_block run scoreboard players set @s death_timer 700
execute as @s[type=brst:small_rock] as @s[scores={death_timer=10..}] at @s align xyz positioned ~0.5 0 ~0.5 unless block ~~1~ brst:dark_break_block run scoreboard players set @s death_timer 700
execute as @s[type=brst:small_rock] as @s[scores={death_timer=600..}] at @s align xyz positioned ~0.5 0 ~0.5 run particle minecraft:cauldron_explosion_emitter ~~1~
execute as @s[type=brst:small_rock] as @s[scores={death_timer=600..}] at @s align xyz positioned ~0.5 0 ~0.5 run fill ~-1~~-1 ~1~3~1 minecraft:air replace brst:dark_break_block
execute as @s[type=brst:small_rock] as @s[scores={death_timer=600..}] at @s align xyz positioned ~0.5 0 ~0.5 run kill @s