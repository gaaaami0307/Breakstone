# normal - boss_normal
# ready - boss_ready
execute as @s[type=brst:boss] at @s run particle minecraft:basic_flame_particle ~~0.5~
execute as @s[type=brst:boss] at @s run tp @s 1000 0 1000
execute as @s[type=brst:boss] at @s run scoreboard players add @s death_timer 1
#bgm
execute as @s[type=brst:boss] as @s[scores={death_timer=50}] at @s run playsound record.pigstep @a 1000 0 1000 0.7 0.8 80
execute as @s[type=brst:boss] as @s[scores={death_timer=3520..}] at @s run scoreboard players set @s death_timer 0
#ブロック復活 arg1
execute as @s[type=brst:boss] at @s run scoreboard players add @s arg1 1
execute as @s[type=brst:boss] as @s[scores={arg1=20..}] at @s run structure load boss_normal 998 0 998 0_degrees none
execute as @s[type=brst:boss] as @s[scores={arg1=20..}] at @s run scoreboard players set @s arg1 0
#コアからダメージを受ける
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run damage @s 10 self_destruct
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run playsound mob.enderdragon.hit @a ~~~ 1 1
execute as @s[type=brst:boss] at @s if entity @e[type=item,name=§r§r§r§r§0暗黒のコア] run kill @e[type=item,name=§r§r§r§r§0暗黒のコア,c=1]
#技の発動
execute as @s[type=brst:boss] as @s[tag=!no_attack] if entity @s[scores={attack_time=0}] at @s run scoreboard players add @s cooldown 1
execute as @s[type=brst:boss] unless entity @s[scores={rnd_attack=0}] at @s run scoreboard players add @s attack_time 1
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=0}] at @s run scoreboard players set @s attack_time 0
execute as @s[type=brst:boss] if score @s cooldown >= @s cooldown_max at @s run scoreboard players random @s rnd_attack 1 3
execute as @s[type=brst:boss] if score @s cooldown >= @s cooldown_max at @s run scoreboard players set @s cooldown 0
#技1
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=1}] if entity @s[scores={attack_time=1}] at @s run function breakstone/boss/summon_darkray
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=1}] if entity @s[scores={attack_time=11}] at @s run function breakstone/boss/summon_darkray
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=1}] if entity @s[scores={attack_time=21}] at @s run function breakstone/boss/summon_darkray
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=1}] if entity @s[scores={attack_time=21..}] at @s run scoreboard players set @s rnd_attack 0
#技2
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=2}] if entity @s[scores={attack_time=1}] at @s run function breakstone/boss/summon_small_rock_shot
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=2}] if entity @s[scores={attack_time=2..}] at @s run scoreboard players set @s rnd_attack 0
#技3
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=3}] if entity @s[scores={attack_time=1}] at @s run execute as @a[r=23,rm=2] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=3}] if entity @s[scores={attack_time=21}] at @s run execute as @a[r=23,rm=2] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss] if entity @s[scores={rnd_attack=3}] if entity @s[scores={attack_time=22..}] at @s run scoreboard players set @s rnd_attack 0
#難易度分け与え(最後に持ってくること)
execute as @s[type=brst:boss] at @s run scoreboard players operation @e[type=brst:boss_target] diff = @s diff