execute as @e[scores={func_rotate=1..}] at @s run tp @s ~~~~1~
execute as @e[scores={func_rotate=1..}] at @s run scoreboard players remove @s func_rotate 1
execute if entity @e[scores={func_rotate=1..}] at @s run function breakstone/func/rotate