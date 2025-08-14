execute as @e[type=brst:maker] as @s[scores={edge=1}] at @s run tp ~-1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=2}] at @s run tp ~ ~ ~-1
execute as @e[type=brst:maker] as @s[scores={edge=3}] at @s run tp ~1 ~ ~
execute as @e[type=brst:maker] as @s[scores={edge=4}] at @s run tp ~ ~ ~1
execute as @e[type=brst:maker] as @s at @s run scoreboard players set @s floor 0
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -59 ~
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -58 ~
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -57 ~
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -56 ~
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s floor 1
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -55 ~
execute as @e[type=brst:maker] as @s at @s run function breakstone/making/blockplace
execute as @e[type=brst:maker] as @s at @s run tp @s ~ -60 ~
execute as @e[type=brst:maker] as @s at @s run scoreboard players remove @s loop1 1
execute as @e[type=brst:maker] as @s at @s run scoreboard players add @s looplimit 1
execute as @e[type=brst:maker] as @s[scores={loop1=0}] at @s run tag @s remove moving
execute as @e[type=brst:maker] as @s[scores={loop1=1..}] as @s[scores={looplimit=..20}] at @s run function breakstone/making/moving