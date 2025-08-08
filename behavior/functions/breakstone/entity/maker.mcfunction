execute as @e[type=brst:maker] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:maker] at @s run scoreboard players set @s edge 0
execute as @e[type=brst:maker] as @s[scores={edge=0}] at @s run tp ~1 ~ ~1
execute as @e[type=brst:maker] at @s run function breakstone/making/ready_move
execute as @e[type=brst:maker] at @s run tickingarea remove test1
execute as @e[type=brst:maker] at @s run tickingarea remove test2
execute as @e[type=brst:maker] at @s run tickingarea remove test3
execute as @e[type=brst:maker] at @s run tickingarea remove test4
execute as @e[type=brst:maker] at @s if score @s death_timer = @s MAX run kill @s
#stopper
execute as @e[type=brst:maker,scores={death_timer=1100..}] at @s run kill @s