#no_attack
#less_particle 
#unless entity @e[type=brst:boss,tag=less_particle]
#diff 1=easy 2=normal 3=hard 4=breakstone
summon brst:boss 1000 0 1000
execute as @a at @s run playsound random.anvil_land @s ~ ~ ~ 1 0.4 50
execute as @a at @s run playsound mob.wither.spawn @a ~ ~ ~ 1 0.5 50
execute as @a at @s run playsound mace.heavy_smash_ground @a ~ ~ ~ 1 0.4 50
execute as @a at @s run playsound random.explode @a ~ ~ ~ 1 0.8 50
execute as @a at @s run playsound firework.launch @a ~ ~ ~ 1 0.2 50
execute as @a at @s run playsound random.totem @a ~ ~ ~ 1 0.3 50
time set midnight
camerashake add @s 2 0.5
structure load boss_normal 998 0 998 0_degrees none
tag @a[m=s] add battle
#settings
execute as @s[type=brst:boss] at @s run scoreboard players set @s cooldown_max 200