#arg1=収集周期
#arg2=範囲
execute as @e[type=brst:fac_correct,tag=!setup] at @s run scoreboard players set @s arg1 200
execute as @e[type=brst:fac_correct,tag=!setup] at @s run scoreboard players set @s arg2 10
execute as @e[type=brst:fac_correct,tag=!setup] at @s run tag @s add can_spanner
execute as @e[type=brst:fac_correct,tag=!setup] at @s run tag @s add sound
execute as @e[type=brst:fac_correct,tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:fac_correct] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_correct] at @s if entity @a[r=50] run particle minecraft:redstone_torch_dust_particle ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=5},tag=sound] at @s if entity @e[r=5,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=5}] at @s if entity @e[r=5,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=5}] at @s if entity @e[r=5,type=item,rm=1] run tp @e[r=5,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=10},tag=sound] at @s if entity @e[r=10,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] at @s if entity @e[r=10,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] at @s if entity @e[r=10,type=item,rm=1] run tp @e[r=10,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=15},tag=sound] at @s if entity @e[r=15,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=15}] at @s if entity @e[r=15,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=15}] at @s if entity @e[r=15,type=item,rm=1] run tp @e[r=15,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=20},tag=sound] at @s if entity @e[r=20,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] at @s if entity @e[r=20,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] at @s if entity @e[r=20,type=item,rm=1] run tp @e[r=20,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=25},tag=sound] at @s if entity @e[r=25,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=25}] at @s if entity @e[r=25,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=25}] at @s if entity @e[r=25,type=item,rm=1] run tp @e[r=25,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=30},tag=sound] at @s if entity @e[r=30,type=item,rm=1] run playsound random.lever_click @a ~~~ 1 1.5
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=30}] at @s if entity @e[r=30,type=item,rm=1] run particle minecraft:cauldron_explosion_emitter ~~0.5~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 as @s[scores={arg2=30}] at @s if entity @e[r=30,type=item,rm=1] run tp @e[r=30,type=item,rm=1] ~~~
execute as @e[type=brst:fac_correct] if score @s death_timer >= @s arg1 at @s run scoreboard players set @s death_timer 0