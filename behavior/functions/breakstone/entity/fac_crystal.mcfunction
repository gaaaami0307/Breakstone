#arg1=変換周期
#arg2=範囲
execute as @e[type=brst:fac_crystal,tag=!setup] at @s run scoreboard players set @s arg1 100
execute as @e[type=brst:fac_crystal,tag=!setup] at @s run scoreboard players set @s arg2 10
execute as @e[type=brst:fac_crystal,tag=!setup] at @s run tag @s add can_spanner
execute as @e[type=brst:fac_crystal,tag=!setup] at @s run tag @s add sound
execute as @e[type=brst:fac_crystal,tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:fac_crystal] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_crystal] at @s if entity @a[r=50] run particle minecraft:water_wake_particle ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=5},tag=sound] at @s if entity @e[r=5,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=5}] at @s if entity @e[r=5,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=5}] at @s as @e[r=5,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=5}] at @s if entity @e[r=5,type=xp_orb] run kill @e[r=5,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=10},tag=sound] at @s if entity @e[r=10,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] at @s if entity @e[r=10,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] at @s as @e[r=10,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] at @s if entity @e[r=10,type=xp_orb] run kill @e[r=10,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=15},tag=sound] at @s if entity @e[r=15,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=15}] at @s if entity @e[r=15,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=15}] at @s as @e[r=15,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=15}] at @s if entity @e[r=15,type=xp_orb] run kill @e[r=15,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=20},tag=sound] at @s if entity @e[r=20,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] at @s if entity @e[r=20,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] at @s as @e[r=20,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] at @s if entity @e[r=20,type=xp_orb] run kill @e[r=20,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=25},tag=sound] at @s if entity @e[r=25,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=25}] at @s if entity @e[r=25,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=25}] at @s as @e[r=25,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=25}] at @s if entity @e[r=25,type=xp_orb] run kill @e[r=25,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=30},tag=sound] at @s if entity @e[r=30,type=xp_orb] run playsound random.orb @a ~~~ 1 1
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=30}] at @s if entity @e[r=30,type=xp_orb] run particle minecraft:villager_happy ~~0.5~
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=30}] at @s as @e[r=30,type=xp_orb] at @s run structure load xp_crystal ~~~ 0_degrees none true false
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 as @s[scores={arg2=30}] at @s if entity @e[r=30,type=xp_orb] run kill @e[r=30,type=xp_orb]
execute as @e[type=brst:fac_crystal] if score @s death_timer >= @s arg1 at @s run scoreboard players set @s death_timer 0