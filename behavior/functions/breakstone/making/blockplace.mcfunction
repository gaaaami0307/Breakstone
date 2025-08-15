#floor ... 0 = 床三面 1 ~ 5 = 鉱石 6 = 天井
#床作成
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=10..60}] at @s run fill ~~-3~ ~~-2~ minecraft:dirt
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=10..60}] at @s run setblock ~~-1~ minecraft:grass_block
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=61..110}] at @s run fill ~~-3~ ~~-2~ minecraft:deepslate
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=61..110}] at @s run setblock ~~-1~ minecraft:polished_andesite
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=111..160}] at @s run fill ~~-3~ ~~-2~ minecraft:deepslate_bricks
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=111..160}] at @s run setblock ~~-1~ minecraft:deepslate_bricks
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=161..210}] at @s run fill ~~-3~ ~~-2~ brst:abyss_stone
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=161..210}] at @s run setblock ~~-1~ minecraft:obsidian
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=211..260}] at @s run fill ~~-3~ ~~-2~ brst:abyss_stone
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=211..260}] at @s run setblock ~~-1~ brst:abyss_stone
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=261..310}] at @s run fill ~~-3~ ~~-2~ minecraft:bedrock
execute as @e[type=brst:maker] as @s[scores={floor=0}] as @s[scores={death_timer=261..310}] at @s run setblock ~~-1~ minecraft:bedrock
#天井
execute as @e[type=brst:maker] as @s[scores={floor=6}] as @s[scores={death_timer=10..}] at @s run setblock ~~~ minecraft:bedrock
#生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] at @s run scoreboard players random @s rnd 1 10000
#
# ステージ 1
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] at @s run setblock ~~~ minecraft:stone
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=1..200}] at @s run setblock ~~~ minecraft:coal_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=1001..1100}] at @s run setblock ~~~ minecraft:copper_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ brst:heavy_stone
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10..60}] as @s[scores={rnd=3001..3030}] at @s run setblock ~~~ minecraft:lapis_ore
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=10}] at @s run setblock ~~~ minecraft:stone
#
# ステージ 2
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] at @s run setblock ~~~ minecraft:blackstone
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] as @s[scores={rnd=1..200}] at @s run setblock ~~~ minecraft:coal_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] as @s[scores={rnd=1001..1100}] at @s run setblock ~~~ minecraft:iron_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ minecraft:lapis_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] as @s[scores={rnd=3001..3030}] at @s run setblock ~~~ minecraft:redstone_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61..110}] as @s[scores={rnd=4001..4010}] at @s run setblock ~~~ minecraft:nether_gold_ore
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=61}] at @s run setblock ~~~ minecraft:blackstone
#
# ステージ 3
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] at @s run setblock ~~~ minecraft:deepslate
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] as @s[scores={rnd=1..200}] at @s run setblock ~~~ minecraft:deepslate_iron_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] as @s[scores={rnd=1001..1075}] at @s run setblock ~~~ minecraft:deepslate_diamond_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ minecraft:deepslate_redstone_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] as @s[scores={rnd=3001..3030}] at @s run setblock ~~~ minecraft:deepslate_gold_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111..160}] as @s[scores={rnd=4001..4010}] at @s run setblock ~~~ minecraft:deepslate_emerald_ore
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=111}] at @s run setblock ~~~ minecraft:deepslate
#
# ステージ 4
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] at @s run setblock ~~~ minecraft:obsidian
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] as @s[scores={rnd=1..200}] at @s run setblock ~~~ minecraft:deepslate_diamond_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] as @s[scores={rnd=1001..1075}] at @s run setblock ~~~ minecraft:sculk
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ minecraft:deepslate_gold_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] as @s[scores={rnd=3001..3030}] at @s run setblock ~~~ minecraft:deepslate_emerald_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161..210}] as @s[scores={rnd=4001..4005}] at @s run setblock ~~~ minecraft:quartz_ore
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=161}] at @s run setblock ~~~ minecraft:obsidian
#
# ステージ 5
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] at @s run setblock ~~~ brst:abyss_stone
#鉱石生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] as @s[scores={rnd=1..200}] at @s run setblock ~~~ minecraft:sculk
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] as @s[scores={rnd=1001..1100}] at @s run setblock ~~~ brst:luminite_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] as @s[scores={rnd=2001..2050}] at @s run setblock ~~~ minecraft:deepslate_emerald_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] as @s[scores={rnd=3001..3010}] at @s run setblock ~~~ minecraft:quartz_ore
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211..260}] as @s[scores={rnd=4001..4010}] at @s run setblock ~~~ minecraft:glowstone
#境目の鉱石を無くす
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=211}] at @s run setblock ~~~ brst:abyss_stone
#
# 岩盤
#
#通常生成
execute as @e[type=brst:maker] as @s[scores={floor=1..5}] as @s[scores={death_timer=261..}] at @s run setblock ~~~ minecraft:bedrock