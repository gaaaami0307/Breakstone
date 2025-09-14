# normal - boss_normal
# ready - boss_ready
execute as @s[type=brst:boss] at @s run particle minecraft:basic_flame_particle ~~0.5~
execute as @s[type=brst:boss] at @s run tp @s 1000 0 1000
execute as @s[type=brst:boss] at @s run scoreboard players add @s death_timer 1
#bgm
execute as @s[type=brst:boss] as @s[scores={death_timer=50}] at @s run playsound record.pigstep @a 1000 0 1000 0.7 0.8 80
execute as @s[type=brst:boss] as @s[scores={death_timer=3520..}] at @s run scoreboard players set @s death_timer 0
#ブロック復活 arg1
execute as @s[type=brst:boss] at @s run scoreboard players add @s arg1 1
execute as @s[type=brst:boss] as @s[scores={arg1=20..}] at @s run structure load boss_normal 998 0 998 0_degrees none
execute as @s[type=brst:boss] as @s[scores={arg1=20..}] at @s run scoreboard players set @s arg1 0
#コアからダメージを受ける
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run damage @s 10 self_destruct
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run playsound mob.enderdragon.hit @a ~~~ 1 1
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run kill @e[type=item,name=§r§r§r§r§0暗黒のコア,c=1]
#技の発動
execute as @s[type=brst:boss] as @s[tag=!no_attack] at @s run scoreboard players add @s cooldown 1
execute as @s[type=brst:boss] at @s run scoreboard players add @s cooldown 1
#難易度分け与え(最後に持ってくること)
execute as @s[type=brst:boss] at @s run scoreboard players operation @e[type=brst:boss_target] diff = @s diff