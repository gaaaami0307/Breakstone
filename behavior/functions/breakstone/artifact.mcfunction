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
#attack_artifact
execute as @a as @s[hasitem={item=brst:attack_artifact1}] at @s positioned ^^^ run effect @s strength 12 0 true
execute as @a as @s[hasitem={item=brst:attack_artifact2}] at @s positioned ^^^ run effect @s strength 12 1 true
execute as @a as @s[hasitem={item=brst:attack_artifact3}] at @s positioned ^^^ run effect @s strength 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:attack_artifact1}] at @s positioned ^^^ run effect @s strength 12 1 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:attack_artifact2}] at @s positioned ^^^ run effect @s strength 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:attack_artifact3}] at @s positioned ^^^ run effect @s strength 12 3 true
#mining_artifact
execute as @a as @s[hasitem={item=brst:mining_artifact1}] at @s positioned ^^^ run effect @s haste 12 0 true
execute as @a as @s[hasitem={item=brst:mining_artifact2}] at @s positioned ^^^ run effect @s haste 12 1 true
execute as @a as @s[hasitem={item=brst:mining_artifact3}] at @s positioned ^^^ run effect @s haste 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:mining_artifact1}] at @s positioned ^^^ run effect @s haste 12 1 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:mining_artifact2}] at @s positioned ^^^ run effect @s haste 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:mining_artifact3}] at @s positioned ^^^ run effect @s haste 12 3 true
#shield_artifact
execute as @a as @s[hasitem={item=brst:shield_artifact1}] at @s positioned ^^^ run effect @s resistance 12 0 true
execute as @a as @s[hasitem={item=brst:shield_artifact2}] at @s positioned ^^^ run effect @s resistance 12 1 true
execute as @a as @s[hasitem={item=brst:shield_artifact3}] at @s positioned ^^^ run effect @s resistance 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:shield_artifact1}] at @s positioned ^^^ run effect @s resistance 12 1 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:shield_artifact2}] at @s positioned ^^^ run effect @s resistance 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:shield_artifact3}] at @s positioned ^^^ run effect @s resistance 12 3 true
#speed_artifact
execute as @a as @s[hasitem={item=brst:speed_artifact1}] at @s positioned ^^^ run effect @s speed 12 0 true
execute as @a as @s[hasitem={item=brst:speed_artifact2}] at @s positioned ^^^ run effect @s speed 12 1 true
execute as @a as @s[hasitem={item=brst:speed_artifact3}] at @s positioned ^^^ run effect @s speed 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:speed_artifact1}] at @s positioned ^^^ run effect @s speed 12 1 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:speed_artifact2}] at @s positioned ^^^ run effect @s speed 12 2 true
execute if block -120 -51 -120 brst:luminite_block as @a as @s[hasitem={item=brst:speed_artifact3}] at @s positioned ^^^ run effect @s speed 12 3 true
#furnace_artifact1
execute as @a as @s[hasitem={item=brst:furnace_artifact1,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run xp 1
execute as @a as @s[hasitem={item=brst:furnace_artifact1,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run give @s minecraft:copper_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact1,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run clear @s minecraft:raw_copper 0 1 
#furnace_artifact2
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run xp 2
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run give @s minecraft:copper_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run clear @s minecraft:raw_copper 0 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run xp 3
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run give @s minecraft:iron_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact2,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run clear @s minecraft:raw_iron 0 1 
#furnace_artifact3
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run xp 3
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run give @s minecraft:copper_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_copper}] at @s run clear @s minecraft:raw_copper 0 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run xp 4
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run give @s minecraft:iron_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_iron}] at @s run clear @s minecraft:raw_iron 0 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_gold}] at @s run xp 4
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_gold}] at @s run give @s minecraft:gold_ingot 1 
execute as @a as @s[hasitem={item=brst:furnace_artifact3,location=slot.weapon.offhand}] as @s[hasitem={item=minecraft:raw_gold}] at @s run clear @s minecraft:raw_gold 0 1 
#trash_artifact1
execute as @a as @s[hasitem={item=brst:trash_artifact1,location=slot.weapon.offhand}] at @s run clear @s minecraft:stone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact1,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobblestone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact1,location=slot.weapon.offhand}] at @s run clear @s minecraft:blackstone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact1,location=slot.weapon.offhand}] at @s run clear @s minecraft:deepslate 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact1,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobbled_deepslate 0 1
#trash_artifact2
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:stone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobblestone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:blackstone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:deepslate 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobbled_deepslate 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact2,location=slot.weapon.offhand}] at @s run clear @s minecraft:obsidian 0 1
#trash_artifact3
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:stone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobblestone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:blackstone 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:deepslate 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:cobbled_deepslate 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s minecraft:obsidian 0 1
execute as @a as @s[hasitem={item=brst:trash_artifact3,location=slot.weapon.offhand}] at @s run clear @s brst:abyss_stone 0 1
#poison_artifact
execute as @a as @s[hasitem={item=brst:poison_artifact}] at @s positioned ^^^ run effect @s poison 0 3 true
#wither_artifact
execute as @a as @s[hasitem={item=brst:wither_artifact}] at @s positioned ^^^ run effect @s wither 0 3 true
