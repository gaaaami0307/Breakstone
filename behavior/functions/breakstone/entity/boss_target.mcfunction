#/summon brst:target bosscreate 1000 -1 1000
execute as @s[type=brst:boss_target] at @s run tp @s ~~~
execute as @s[type=brst:boss_target] at @s run effect @s resistance 1 99 true
execute as @s[type=brst:boss_target] at @s run scoreboard players add @s death_timer 1
#darkray
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=1}] at @s run spreadplayers ~~ 1 8 @s
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=1}] at @s run tp @s ~ 25 ~
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=1}] at @s run scoreboard players random @s func_move_y -5 5
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=1}] at @s run function breakstone/func/move_y
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=2}] at @s run playsound random.chestopen @a ~~~ 1 0.6 80
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=2}] at @s run particle brst:darkray_circle ~~~
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=2..}] at @s run tp @s ~~~ facing @p[tag=battle]
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=50}] at @s run summon brst:darkray ~~~
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=62..}] at @s run tp ~~-50~
execute as @s[type=brst:boss_target,name=darkray] as @s[scores={death_timer=62..}] at @s run kill @s
#test
execute as @s[type=brst:boss_target,name=test] as @s[scores={death_timer=1..}] at @s run tp @s ~~~ facing @p
execute as @s[type=brst:boss_target,name=test] as @s[scores={death_timer=1..}] at @s run particle minecraft:basic_flame_particle ^^^
execute as @s[type=brst:boss_target,name=test] as @s[scores={death_timer=1..}] at @s run particle minecraft:small_soul_fire_flame ^^^1
execute as @s[type=brst:boss_target,name=test] as @s[scores={death_timer=1..}] at @s run particle minecraft:small_soul_fire_flame ^^^2
execute as @s[type=brst:boss_target,name=test] as @s[scores={death_timer=1..}] at @s run particle minecraft:small_soul_fire_flame ^^^3
#darkray_target
execute as @s[type=brst:boss_target,name=darkray_target] as @s[scores={death_timer=10..}] at @s run tp @s ~~30~
execute as @s[type=brst:boss_target,name=darkray_target] as @s[scores={death_timer=10..}] at @s run kill @s
#small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_ready] as @s[scores={death_timer=1}] at @s run playsound note.hat @a ~~~ 1 0.5
execute as @s[type=brst:boss_target,name=small_rock_ready] as @s[scores={death_timer=1..}] at @s run particle minecraft:redstone_torch_dust_particle ~~0.5~
execute as @s[type=brst:boss_target,name=small_rock_ready] as @s[scores={death_timer=30}] at @s run summon brst:small_rock
execute as @s[type=brst:boss_target,name=small_rock_ready] as @s[scores={death_timer=30..}] at @s run kill @s
#small_rock_shot
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=1}] at @s run tp @s ~~~ facing @r[tag=battle]
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=2}] at @s run tp @s ^^^4
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=3}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=4}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=7}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=8}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=11}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=12}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=15}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=16}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=19}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=20}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=23}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=24}] at @s run tp @s ^^^3
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=27}] at @s run summon brst:boss_target small_rock_ready
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=28}] at @s run tp @s ^^^12
execute as @s[type=brst:boss_target,name=small_rock_shot] as @s[scores={death_timer=30..}] at @s run kill @s