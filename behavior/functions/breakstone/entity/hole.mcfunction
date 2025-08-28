#interval =　インターバル
#death_timer =　初期
#edge = 辺
#loop1 = 各辺の長さ
#MAX = 回数上限
#looplimit = 1回に置く上限ブロック数
#-----tags
#setup = 各回の設定
#moving = 動いてる途中
execute as @e[type=brst:hole] as @s at @s run tp @s ~~~
execute as @e[type=brst:hole] as @s[tag=!setup] at @s run scoreboard players add @s interval 1
#STEP1 rotating
execute as @e[type=brst:hole] as @s[scores={interval=1},tag=!setup] at @s run scoreboard players random @s func_rotate 1 360
execute as @e[type=brst:hole] as @s[scores={interval=1},tag=!setup] at @s run function breakstone/func/rotate
#STEP2 moving
execute as @e[type=brst:hole] as @s[scores={interval=1},tag=!setup] at @s run scoreboard players operation @s func_move_f = @s death_timer
execute as @e[type=brst:hole] as @s[scores={interval=1},tag=!setup] at @s run function breakstone/func/move_f
#STEP3 making
execute as @e[type=brst:hole] as @s[scores={interval=2},tag=!setup] at @s run function breakstone/making/hole/setup
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] at @s run tp @s 5000 -30 5000
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] at @s run tp @p 5000 -30 5000
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] as @s[scores={death_timer=1..50}] at @s run scoreboard players random @s rnd 2 3
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] as @s[scores={death_timer=50..100}] at @s run scoreboard players random @s rnd 0 2
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] as @s[scores={death_timer=101..200}] at @s run scoreboard players random @s rnd 0 1
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] as @s[scores={death_timer=201..250}] at @s run scoreboard players random @s rnd 1 5
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] as @s[scores={death_timer=201..250}] as @s[scores={rnd=2..}] at @s run scoreboard players set @s rnd 0
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] at @s run scoreboard players operation @s death_timer += @s rnd
execute as @e[type=brst:hole] as @s[scores={interval=3},tag=!setup] at @s run scoreboard players set @s interval 0
execute as @e[type=brst:hole] as @s if score @s death_timer >= @s MAX at @s run kill @s