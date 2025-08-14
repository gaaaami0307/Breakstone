execute as @e[type=brst:fac_stick,tag=!setup] at @s run scoreboard players set @s death_timer 1
execute as @e[type=brst:fac_stick,tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:fac_stick] at @s if block ~~~ air run scoreboard players add @s death_timer 1
execute as @e[type=brst:fac_stick] at @s run setblock ~~-1~ minecraft:podzol
execute as @e[type=brst:fac_stick] as @s[scores={death_timer=1}] at @s run setblock ~~~ minecraft:deadbush
execute as @e[type=brst:fac_stick] as @s[scores={death_timer=100..}] at @s run scoreboard players set @s death_timer 0