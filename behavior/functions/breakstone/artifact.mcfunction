#water_artifact
execute as @a as @s[hasitem={item=brst:water_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=1..100}] at @s positioned ^^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:water_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=100}] at @s run tag @s add art_water
execute as @a as @s[tag=art_water] at @s run playsound random.splash @a ~~~ 0.8 1
execute as @a as @s[tag=art_water] at @s run clear @s minecraft:bucket 0 1 
execute as @a as @s[tag=art_water] at @s run give @s minecraft:water_bucket 1
execute as @a as @s[tag=art_water] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_water] at @s run tag @s remove art_water
#lava_artifact
execute as @a as @s[hasitem={item=brst:lava_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=1..100}] at @s positioned ^^^ run particle minecraft:trial_spawner_detection ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:lava_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=100}] at @s run tag @s add art_lava
execute as @a as @s[tag=art_lava] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 0.5
execute as @a as @s[tag=art_lava] at @s run clear @s minecraft:bucket 0 1 
execute as @a as @s[tag=art_lava] at @s run give @s minecraft:lava_bucket 1
execute as @a as @s[tag=art_lava] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_lava] at @s run tag @s remove art_lava
#liquid_artifact
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:bucket,location=slot.weapon.mainhand}] at @s positioned ^1^^ run particle minecraft:trial_spawner_detection ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:bucket,location=slot.weapon.mainhand}] at @s positioned ^-1^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:lava_bucket,location=slot.weapon.mainhand}] at @s positioned ^1^^ run particle minecraft:trial_spawner_detection ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:lava_bucket,location=slot.weapon.mainhand}] at @s positioned ^-1^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:water_bucket,location=slot.weapon.mainhand}] at @s positioned ^1^^ run particle minecraft:trial_spawner_detection ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[scores={sneak_time=1..},hasitem={item=minecraft:water_bucket,location=slot.weapon.mainhand}] at @s positioned ^-1^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:bucket,location=slot.weapon.mainhand},scores={sneak_time=30}] at @s run tag @s add art_water
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:water_bucket,location=slot.weapon.mainhand},scores={sneak_time=30}] at @s run tag @s add art_lava
execute as @a as @s[hasitem={item=brst:liquid_artifact,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:lava_bucket,location=slot.weapon.mainhand},scores={sneak_time=30}] at @s run tag @s add art_emp
execute as @a as @s[tag=art_water] at @s run playsound random.splash @a ~~~ 0.8 1
execute as @a as @s[tag=art_water] at @s run clear @s minecraft:bucket 0 1 
execute as @a as @s[tag=art_water] at @s run give @s minecraft:water_bucket 1
execute as @a as @s[tag=art_water] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_water] at @s run tag @s remove art_water
execute as @a as @s[tag=art_lava] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 0.5
execute as @a as @s[tag=art_lava] at @s run clear @s minecraft:water_bucket 0 1 
execute as @a as @s[tag=art_lava] at @s run give @s minecraft:lava_bucket 1
execute as @a as @s[tag=art_lava] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_lava] at @s run tag @s remove art_lava
execute as @a as @s[tag=art_emp] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 0.5
execute as @a as @s[tag=art_emp] at @s run clear @s minecraft:lava_bucket 0 1 
execute as @a as @s[tag=art_emp] at @s run give @s minecraft:bucket 1
execute as @a as @s[tag=art_emp] at @s run scoreboard players set @s sneak_time 0
execute as @a as @s[tag=art_emp] at @s run tag @s remove art_emp