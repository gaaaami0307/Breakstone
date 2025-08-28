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
execute as @e[type=brst:hole] as @s at @s run function breakstone/making/hole/place
execute as @e[type=brst:hole] as @s at @s run scoreboard players random @s func_rotate 1 360
execute as @e[type=brst:hole] as @s at @s run function breakstone/func/rotate

execute as @e[type=brst:hole] as @s at @s run scoreboard players random @s func_move_f 1 3
execute as @e[type=brst:hole] as @s at @s run function breakstone/func/move_f
execute as @e[type=brst:hole] as @s at @s run scoreboard players remove @s chain 1
execute as @e[type=brst:hole] as @s[scores={chain=1..}] at @s run function breakstone/making/hole/make
