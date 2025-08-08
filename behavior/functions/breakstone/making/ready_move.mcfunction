execute as @e[type=brst:maker] as @s[tag=!moving] at @s run scoreboard players add @s edge 1
execute as @e[type=brst:maker] as @s[tag=!moving] at @s run scoreboard players operation @s loop1 = @s death_timer
execute as @e[type=brst:maker] as @s[tag=!moving] at @s run scoreboard players operation @s loop1 *= @s multi
execute as @e[type=brst:maker] as @s[tag=!moving] at @s run tag @s add moving
execute as @e[type=brst:maker] as @s[scores={edge=1..4}] at @s run function breakstone/making/moving