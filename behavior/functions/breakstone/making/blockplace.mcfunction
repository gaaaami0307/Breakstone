#floor ... 0 = 床三面 1 ~ 5 = 鉱石 6 = 天井
#床作成
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=4..50}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=4..50}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=51..100}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=51..100}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=101..150}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=101..150}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=151..200}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=151..200}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=201..250}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=201..250}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=251..300}] at @s run fill ~~-3~ ~~-2~ minecraft:bedrock
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=251..300}] at @s run setblock ~~-1~ minecraft:bedrock
#天井
execute as @e[type=brst:maker] as @s[scores={floor=6}] as @s[scores={death_timer=4..}] at @s run setblock ~~~ minecraft:bedrock
#生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] at @s run scoreboard players random @s rnd 1 1000
#
# ステージ 1
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=4..50}] at @s run setblock ~~~ minecraft:stone
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=4..50}] as @s[scores={rnd=1..15}] at @s run setblock ~~~ minecraft:coal_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=4..50}] as @s[scores={rnd=101..110}] at @s run setblock ~~~ minecraft:copper_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=4..50}] as @s[scores={rnd=201..205}] at @s run setblock ~~~ brst:heavy_stone
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=4..50}] as @s[scores={rnd=301..303}] at @s run setblock ~~~ minecraft:lapis_ore