#arg1=攻撃ティック
#arg2=ダメージ
execute as @e[type=brst:fac_attack,tag=!setup] at @s run scoreboard players set @s arg1 200
execute as @e[type=brst:fac_attack,tag=!setup] at @s run scoreboard players set @s arg2 6
execute as @e[type=brst:fac_attack,tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:fac_attack] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_attack] at @s if entity @a[r=50] run particle brst:attack ~~0.5~
execute as @e[type=brst:fac_attack,tag=sound] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] run playsound mob.blaze.shoot @a ~~~ 1 1.2
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=2}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 2 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=4}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 4 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=6}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 6 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=8}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 8 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=10}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 10 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=12}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 12 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=14}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 14 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=16}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 16 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=18}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 18 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 as @s[scores={arg2=20}] run damage @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] 20 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,type=!xp_orb,type=!item,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 run scoreboard players set @s death_timer 0