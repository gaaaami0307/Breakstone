#type
#生成する物
# 1~20.. 3x3 穴
# 21~50.. 5x5 穴
# 51~80.. 7x7 穴
# 81~84.. 3x3 水
# 85~89.. 5x5 水
# 90~94.. 7x7 水
# 95~97.. 3x3 溶岩
# 98~99.. 5x5 溶岩
# 100.. 7x7 溶岩
#chain
#連続生成数
# 1~15 ... 1
# 16~35 ... 2
# 36~75 ... 3
# 76~90 ... 4
# 91~97 ... 5
# 98~99 ... 6
# 100 ... 7
execute as @e[type=brst:hole] as @s[scores={type=1}] at @s run fill ~-1 -54 ~-1 ~1 -54 ~1 minecraft:gray_concrete
execute as @e[type=brst:hole] as @s[scores={type=1}] at @s run fill ~-1 -59 ~-1 ~1 -60 ~1 minecraft:air
#
execute as @e[type=brst:hole] as @s[scores={type=2}] at @s run fill ~-2 -54 ~-2 ~2 -54 ~2 minecraft:gray_concrete
execute as @e[type=brst:hole] as @s[scores={type=2}] at @s run fill ~-2 -58 ~-2 ~2 -60 ~2 minecraft:air
#
execute as @e[type=brst:hole] as @s[scores={type=3}] at @s run fill ~-3 -54 ~-3 ~3 -54 ~3 minecraft:gray_concrete
execute as @e[type=brst:hole] as @s[scores={type=3}] at @s run fill ~-3 -57 ~-3 ~3 -60 ~3 minecraft:air
#
execute as @e[type=brst:hole] as @s[scores={type=4}] at @s run fill ~-1 -54 ~-1 ~1 -54 ~1 minecraft:blue_concrete
execute as @e[type=brst:hole] as @s[scores={type=4}] at @s run fill ~-1 -59 ~-1 ~1 -60 ~1 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=4}] at @s run fill ~-1 -61 ~-1 ~1 -61 ~1 minecraft:water
#
execute as @e[type=brst:hole] as @s[scores={type=5}] at @s run fill ~-2 -54 ~-2 ~2 -54 ~2 minecraft:blue_concrete
execute as @e[type=brst:hole] as @s[scores={type=5}] at @s run fill ~-2 -58 ~-2 ~2 -60 ~2 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=5}] at @s run fill ~-2 -61 ~-2 ~2 -62 ~2 minecraft:water
#
execute as @e[type=brst:hole] as @s[scores={type=6}] at @s run fill ~-3 -54 ~-3 ~3 -54 ~3 minecraft:blue_concrete
execute as @e[type=brst:hole] as @s[scores={type=6}] at @s run fill ~-3 -57 ~-3 ~3 -60 ~3 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=6}] at @s run fill ~-3 -61 ~-3 ~3 -63 ~3 minecraft:water
#
execute as @e[type=brst:hole] as @s[scores={type=7}] at @s run fill ~-1 -54 ~-1 ~1 -54 ~1 minecraft:red_concrete
execute as @e[type=brst:hole] as @s[scores={type=7}] at @s run fill ~-1 -59 ~-1 ~1 -60 ~1 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=7}] at @s run fill ~-1 -61 ~-1 ~1 -61 ~1 minecraft:lava
#
execute as @e[type=brst:hole] as @s[scores={type=8}] at @s run fill ~-2 -54 ~-2 ~2 -54 ~2 minecraft:red_concrete
execute as @e[type=brst:hole] as @s[scores={type=8}] at @s run fill ~-2 -58 ~-2 ~2 -60 ~2 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=8}] at @s run fill ~-2 -61 ~-2 ~2 -62 ~2 minecraft:lava
#
execute as @e[type=brst:hole] as @s[scores={type=9}] at @s run fill ~-3 -54 ~-3 ~3 -54 ~3 minecraft:red_concrete
execute as @e[type=brst:hole] as @s[scores={type=9}] at @s run fill ~-3 -57 ~-3 ~3 -60 ~3 minecraft:air
execute as @e[type=brst:hole] as @s[scores={type=9}] at @s run fill ~-3 -61 ~-3 ~3 -63 ~3 minecraft:lava