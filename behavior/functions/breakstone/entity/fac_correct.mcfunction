execute as @e[type=brst:fac_correct] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_correct] at @s if entity @a[r=50] run particle minecraft:redstone_torch_dust_particle ~~0.5~
execute as @e[type=brst:fac_correct,scores={death_timer=200..}] at @s if entity @e[r=10,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct,scores={death_timer=200..}] at @s if entity @e[r=10,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct,scores={death_timer=200..}] at @s if entity @e[r=10,type=item,rm=1] run tp @e[r=10,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct,scores={death_timer=200..}] at @s run scoreboard players set @s death_timer 0