#death_timer...再帰回数
scoreboard players add @s death_timer 1
#
# 初期化
#
#ID=E_dr
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @s add E_dr
#発射元ターゲット
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @e[c=1,type=brst:boss_target,name=darkray] add E_dr_settinger
#ターゲット召喚
execute as @s[scores={death_timer=1}] at @s positioned ~~~ as @p at @s run summon brst:boss_target darkray_target ~~10~
#発射位置
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tag @e[tag=E_dr_settinger,c=1] remove E_dr_settinger
#高さ調整
execute as @s[scores={death_timer=1}] at @s positioned ~~~ run tp @s ~~10~
execute as @s[scores={death_timer=1..}] at @s positioned ~~~ run tp @s ~~~ facing @e[type=brst:boss_target,name=darkray_target,c=1]
#
# 発射時
#
#発射時効果音 audio/pitch
execute as @s[scores={death_timer=5}] at @s positioned ~~-10~ run playsound mob.shulker.shoot @a ~~~ 1 0.5 200
#発射時パーティクル
execute as @s[scores={death_timer=5}] at @s positioned ~~-10~ run particle brst:darkray_shot ~~~
#
# 動作
#
#移動
execute as @s[scores={death_timer=5..}] at @s positioned ~~~ run tp @s ^^^0.5 true
#着弾音声
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ unless block ~~~ air unless block ~~~ structure_void run playsound mob.breeze.shoot @a ~~~ 0.5 0.3
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ unless block ~~~ air unless block ~~~ structure_void run kill @s
#パーティクル
execute as @s[scores={death_timer=5..}] at @s if entity @e[type=brst:boss,tag=less_particle] positioned ~~-10~ run particle minecraft:basic_flame_particle ~~~
execute as @s[scores={death_timer=5..}] at @s unless entity @e[type=brst:boss,tag=less_particle] positioned ~~-10~ run particle brst:darkray ~~~
#当たり判定--E_dr_hitter
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ as @e[type=player,x=~-0.3,y=~-0.3,z=~-0.3,dx=0,dy=0,dz=0] if entity @s[x=~-0.7,y=~-0.7,z=~-0.7,dx=0,dy=0,dz=0] run tag @s add E_dr_hitter
#ヒット時効果音 audio/pitch
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ as @e[tag=E_dr_hitter] at @s run playsound mob.breeze.shoot @a ~~~ 0.5 0.3
#ヒット時パーティクル
#execute as @s[scores={death_timer=5..}] at @s positioned ~~~ as @e[tag=E_dr_hitter] at @s run particle minecraft:critical_hit_emitter ~~1~
#ヒット時消滅
execute as @s[scores={death_timer=5..}] at @s positioned ~~~ if entity @e[tag=E_dr_hitter] run scoreboard players set @s death_timer 1000000
#ヒット時ダメージ*最後に持ってくること*
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ as @e[tag=!E_dr,type=player] run damage @e[tag=E_dr_hitter,c=1] 12 entity_attack entity @e[type=brst:boss,c=1]
#ヒット処理終了
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ as @a[tag=E_dr_hitter] run tag @s remove E_dr_hitter
execute as @s[scores={death_timer=5..}] at @s positioned ~~-10~ as @e[tag=E_dr_hitter] run tag @s remove E_dr_hitter
#回数制限消滅
execute as @s[scores={death_timer=201..}] at @s run kill @s
#再帰
execute as @e[tag=E_dr,c=1,scores={death_timer=5..200}] at @s run function breakstone/entity/darkray