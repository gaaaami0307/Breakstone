#death_timer =　回数
#edge = 辺
#loop1 = 各辺の長さ
#MAX = 回数上限
#looplimit = 1回に置く上限ブロック数
#-----tags
#setup = 各回の設定
#moving = 動いてる途中
execute as @e[type=brst:maker] as @s[tag=!setup] at @s run scoreboard players add @s death_timer 1
execute as @e[type=brst:maker] as @s[tag=!setup] at @s run scoreboard players set @s edge 0
execute as @e[type=brst:maker] as @s[tag=!setup] at @s run tp ~1 ~ ~1
execute as @e[type=brst:maker] as @s[tag=!setup] at @s run tag @s add setup
execute as @e[type=brst:maker] as @s at @s run scoreboard players set @s looplimit 0
execute as @e[type=brst:maker] at @s run tp @p @s
execute as @e[type=brst:maker] at @s run function breakstone/making/ready_move
execute as @e[type=brst:maker] as @s[scores={edge=5..}] at @s run tag @s remove moving
execute as @e[type=brst:maker] as @s[scores={edge=5..}] at @s run tag @s remove setup
execute as @e[type=brst:maker] at @s if score @s death_timer = @s MAX run kill @s
#stopper
execute as @e[type=brst:maker,scores={death_timer=1100..}] at @s run kill @s