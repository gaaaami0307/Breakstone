#/summon brst:target bosscreate 1000 -1 1000
execute as @e[type=brst:target,name=bosscreate] at @s run tp @s ~~~~1~
execute as @e[type=brst:target,name=bosscreate] at @s run fill ^^^ ^^^25 brst:road_block
execute as @e[type=brst:target,name=bosscreate] at @s run fill ^^^26 ^^^26 deny
execute as @e[type=brst:target,name=bosscreate] at @s run fill ^^-1^26 ^^-1^26 border_block
execute as @e[type=brst:target,name=bosscreate] at @s run fill ^^^26 ^^21^26 brst:black_shield_stone
execute as @e[type=brst:target,name=bosscreate] at @s run fill ^^21^ ^^21^25 minecraft:structure_void