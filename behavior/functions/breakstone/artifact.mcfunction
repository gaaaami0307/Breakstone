#water_artifact
execute as @a as @s[hasitem={item=brst:water_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=1..100}] at @s positioned ^^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:water_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=100}] at @s run tag @s add art_water
execute as @a as @s[tag=art_water] at @s run playsound random.splash @a ~~~ 0.8 1
execute as @a as @s[tag=art_water] at @s run clear @s minecraft:bucket 0 1 
execute as @a as @s[tag=art_water] at @s run give @s minecraft:water_bucket 1
execute as @a as @s[tag=art_water] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_water] at @s run tag @s remove art_water
#lava_artifact

#liquid_artifact