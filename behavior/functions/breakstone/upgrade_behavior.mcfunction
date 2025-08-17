#ラピスラズリ
execute if block -120 -58 -120 lapis_block as @a at @s if block ~~-0.5~ minecraft:coal_block run effect @s speed 3 4 
#エメラルド
execute if block -120 -53 -120 emerald_block as @a at @s if block ~~-0.5~ minecraft:emerald_block run effect @s speed 3 14 
#ルミナイト
execute if block -120 -51 -120 brst:luminite_block as @a at @s if block ~~-0.5~ brst:luminite_block run effect @s haste 1 4
#金-松明錬成
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=1..}] at @s positioned ^^^1 run particle minecraft:basic_flame_particle ~~1.5~
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run playsound mob.blaze.shoot @a ~~~ 0.8 1.3
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run give @s minecraft:torch 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run clear @s minecraft:stick 0 1
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] as @s[hasitem={item=brst:torch_artifact}] at @s run scoreboard players set @s sneak_time 17
execute if block -120 -55 -120 gold_block as @a as @s[hasitem={item=minecraft:stick,location=slot.weapon.mainhand},scores={sneak_time=20..}] at @s run scoreboard players set @s sneak_time 5
