#arg1=攻撃ティック
#arg2=ダメージ
execute as @e[type=brst:fac_attack,tag=!setup] at @s run scoreboard players set @s arg1 200
execute as @e[type=brst:fac_attack,tag=!setup] at @s run scoreboard players set @s arg2 6
execute as @e[type=brst:fac_attack,tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:fac_attack] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_attack] at @s if entity @a[r=50] run particle brst:attack ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,r=5] run playsound mob.blaze.shoot @a ~~~ 1 1.2
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 run damage @e[type=!brst:fac_attack,type=!player,r=5] 6 entity_attack entity @p
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 if entity @e[type=!brst:fac_attack,type=!player,r=5] run particle minecraft:lava_particle ~~0.5~
execute as @e[type=brst:fac_attack] at @s if score @s death_timer >= @s arg1 run scoreboard players set @s death_timer 0