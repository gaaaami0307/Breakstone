# normal - boss_normal
# ready - boss_ready
execute as @s[type=brst:boss] at @s run particle minecraft:basic_flame_particle ~~0.5~
execute as @s[type=brst:boss] at @s run tp @s 1000 0 1000
execute as @s[type=brst:boss] at @s run scoreboard players add @s death_timer 1
#bgm
execute as @s[type=brst:boss] as @s[scores={death_timer=50}] at @s run playsound record.pigstep @a 1000 0 1000 0.7 0.8 80
execute as @s[type=brst:boss] as @s[scores={death_timer=3520..}] at @s run scoreboard players set @s death_timer 0
