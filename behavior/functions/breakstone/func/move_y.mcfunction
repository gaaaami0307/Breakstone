execute as @e[scores={func_move_y=1..}] at @s run tp @s ~~1~
execute as @e[scores={func_move_y=1..}] at @s run scoreboard players remove @s func_move_y 1
execute as @e[scores={func_move_y=..-1}] at @s run tp @s ~~-1~
execute as @e[scores={func_move_y=..-1}] at @s run scoreboard players add @s func_move_y 1
execute if entity @e[scores={func_move_y=!0}] at @s run function breakstone/func/move_y