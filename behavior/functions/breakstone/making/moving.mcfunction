execute as @e[type=brst:maker] as @s[scores={edge=1}] at @s run tp ~-1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=2}] at @s run tp ~ ~ ~-1
execute as @e[type=brst:maker] as @s[scores={edge=3}] at @s run tp ~1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=4}] at @s run tp ~ ~ ~1
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players remove @s loop1 1
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s looplimit 1
execute as @e[type=brst:maker] as @s[scores={loop1=0}] at @s run tag @s remove moving
execute as @e[type=brst:maker] as @s[scores={loop1=1..}] as @s[scores={looplimit=..30}] at @s run function breakstone/making/moving