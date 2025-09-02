#ラピスラズリ
execute if block -120 -58 -120 lapis_block as @a at @s if block ~~-0.5~ minecraft:coal_block run effect @s speed 3 4 
#エメラルド
execute if block -120 -53 -120 emerald_block as @a at @s if block ~~-0.5~ minecraft:emerald_block run effect @s speed 3 14 
#クォーツ
execute if block -120 -52 -120 quartz_block as @a at @s if block ~~-0.5~ quartz_block run effect @s haste 1 4
#金-松明錬成
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=1..}] at @s positioned ^^^1 run particle minecraft:basic_flame_particle ~~1.5~
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 1.3
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run scoreboard players set @s sneak_time 17
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run scoreboard players set @s sneak_time 10
#創世のツルハシを作る
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=1..200}] at @s positioned ^^^ run particle minecraft:totem_manual ~~1.5~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=60..200}] at @s positioned ^^^ run particle minecraft:trial_spawner_detection ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=60..200}] at @s positioned ^^^ run particle minecraft:trial_spawner_detection_ominous ~-0.5~~-0.5
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=60}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=60}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=90}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=90}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=120}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=120}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=140}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=140}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=160}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=160}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=170}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=170}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=180}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=180}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=185}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=185}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=190}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=190}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=193}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=193}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=195}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=195}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=197}] at @s positioned ^^^ run particle minecraft:smash_ground_particle_center ~~~
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=197}] at @s positioned ^^^ run playsound mace.heavy_smash_ground @a ~~~ 0.7 1
execute as @a as @s[hasitem={item=brst:stick_pickaxe,location=slot.weapon.offhand}] as @s[hasitem={item=brst:legend_pickaxe,location=slot.weapon.mainhand},scores={sneak_time=200}] at @s run tag @s add make_genesis
execute as @a as @s[tag=make_genesis] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 1
execute as @a as @s[tag=make_genesis] at @s run playsound block.enchanting_table.use @a ~~~ 0.8 0.5
execute as @a as @s[tag=make_genesis] at @s run playsound mob.allay.death @a ~~~ 0.8 1.5
execute as @a as @s[tag=make_genesis] at @s run playsound random.totem @a ~~~ 0.8 1
execute as @a as @s[tag=make_genesis] at @s run playsound random.levelup @a ~~~ 0.8 0.5
execute as @a as @s[tag=make_genesis] at @s run particle minecraft:huge_explosion_emitter ~~1~
execute as @a as @s[tag=make_genesis] at @s run particle minecraft:breeze_wind_explosion_emitter ~~1~
execute as @a as @s[tag=make_genesis] at @s run particle minecraft:smash_ground_particle ~~~
execute as @a as @s[tag=make_genesis] at @s run particle minecraft:knockback_roar_particle ~~~
execute as @a as @s[tag=make_genesis] at @s run clear @s brst:legend_pickaxe 0 1 
execute as @a as @s[tag=make_genesis] at @s run clear @s brst:stick_pickaxe 0 1 
execute as @a as @s[tag=make_genesis] at @s run give @s brst:genesis_pickaxe 1
execute as @a as @s[tag=make_genesis] at @s run tag @s remove make_genesis
#spanner
execute as @a as @s[hasitem={item=brst:spanner,location=slot.weapon.mainhand}] at @s as @e[c=1,r=5,tag=can_spanner] at @s run particle minecraft:villager_happy ~~0.5~