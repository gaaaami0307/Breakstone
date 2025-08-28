execute as @e[scores={func_move_f=1..}] at @s run tp @s ^^^1
execute as @e[scores={func_move_f=1..}] at @s positioned ~~~ run tp @p ~~~
execute as @e[scores={func_move_f=1..}] at @s run scoreboard players remove @s func_move_f 1
execute if entity @e[scores={func_move_f=1..}] at @s run function breakstone/func/move_f