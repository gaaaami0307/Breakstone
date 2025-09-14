#death_timer...再帰回数
scoreboard players add @s death_timer 1
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run particle brst:dark_explode_circle ~~0.01~
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run playsound mob.evocation_illager.prepare_summon @a ~~~ 1 0.5 10
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run particle brst:dark_explode
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run playsound firework.large_blast @a ~~~ 1 0.5 10
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run playsound firework.large_blast @a ~~~ 1 0.5 10
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run playsound firework.large_blast @a ~~~ 1 0.5 10
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run playsound ambient.weather.lightning.impact @a ~~~ 0.7 0.8 10
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run damage @a[r=7] 20 entity_explosion entity @s
execute as @s[scores={death_timer=110}] at @s positioned ~~~ run kill @s