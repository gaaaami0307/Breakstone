execute as @e[type=brst:maker] as @s[scores={edge=1}] at @s if entity @a[r=2] run tp ~-1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=2}] at @s if entity @a[r=2] run tp ~ ~ ~-1
execute as @e[type=brst:maker] as @s[scores={edge=3}] at @s if entity @a[r=2] run tp ~1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=4}] at @s if entity @a[r=2] run tp ~ ~ ~1
execute as @e[type=brst:maker] as @s at @s run tp @p @s
execute as @e[type=brst:maker] as @s at @s if entity @a[r=2] run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s if entity @a[r=2] run scoreboard players remove @s loop1 1
execute as @e[type=brst:maker] as @s[scores={loop1=1..}] at @s run function breakstone/making/moving