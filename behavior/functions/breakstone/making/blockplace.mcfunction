#floor ... 0 = 床三面 1 ~ 5 = 鉱石 6 = 天井
#床作成
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=10..60}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=10..60}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=61..110}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=61..110}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=111..160}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=111..160}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=161..210}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=161..210}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=211..260}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=211..260}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=261..310}] at @s run fill ~~-3~ ~~-2~ minecraft:bedrock
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=261..310}] at @s run setblock ~~-1~ minecraft:bedrock
#天井
execute as @e[type=brst:maker] as @s[scores={floor=6}] as @s[scores={death_timer=10..}] at @s run setblock ~~~ minecraft:bedrock
#生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] at @s run scoreboard players random @s rnd 1 10000
execute as @e[type=brst:maker] as @s[scores={floor=1..6}] as @s[scores={death_timer=0..10}] at @s run setblock ~~~ minecraft:air
#
# ステージ 1
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] at @s run setblock ~~~ minecraft:stone
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=1..150}] at @s run setblock ~~~ minecraft:coal_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=1001..1100}] at @s run setblock ~~~ minecraft:copper_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ brst:heavy_stone
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=3001..3030}] at @s run setblock ~~~ minecraft:lapis_ore
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10}] at @s run setblock ~~~ minecraft:stone
