#small_rock1
execute as @s[type=brst:small_rock] at @s run tp @s ~~~
execute as @s[type=brst:small_rock] at @s run effect @s resistance 1 99 true
execute as @s[type=brst:small_rock] at @s run scoreboard players add @s death_timer 1
execute as @s[type=brst:small_rock] as @s[scores={death_timer=1}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock1 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=3}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock2 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=5}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock3 ~-1 ~ ~-1 0_degrees none 
execute as @s[type=brst:small_rock] as @s[scores={death_timer=7}] at @s align xyz positioned ~0.5 0 ~0.5 run structure load small_rock4 ~-1 ~ ~-1 0_degrees none 