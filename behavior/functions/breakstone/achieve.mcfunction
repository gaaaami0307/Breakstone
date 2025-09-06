#x,y,z 
#x 場所 100=achieve 120=clear 130=noclear
#y 縦 0~4
#z 横 100~119
#clone
#/clone 130 0 100 130 4 119 100 0 100
execute positioned 100 2 100 unless blocks ~~~ ~~~ ~20~~ all if entity @a[hasitem={item=stone}] run tellraw @a { "rawtext": [{"text":"実績【§bbreakstone§r】を達成しました。"}] }
execute positioned 100 2 100 unless blocks ~~~ ~~~ ~20~~ all if entity @a[hasitem={item=stone}] run execute as @a at @s run playsound note.bit @s ~~~ 1 1
execute positioned 100 2 100 unless blocks ~~~ ~~~ ~20~~ all if entity @a[hasitem={item=stone}] run clone ~20~~ ~20~~ ~~~