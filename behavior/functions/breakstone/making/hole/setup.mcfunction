#type
#生成する物
# 1~20.. 3x3 穴
# 21~50.. 5x5 穴
# 51~80.. 7x7 穴
# 81~84.. 3x3 水
# 85~89.. 5x5 水
# 90~94.. 7x7 水
# 95~97.. 3x3 溶岩
# 98~99.. 5x5 溶岩
# 100.. 7x7 溶岩
#chain
#連続生成数
# 1~15 ... 1
# 16~35 ... 2
# 36~75 ... 3
# 76~90 ... 4
# 91~97 ... 5
# 98~99 ... 6
# 100 ... 7
execute as @e[type=brst:hole] as @s at @s run tag @s add setup
execute as @e[type=brst:hole] as @s at @s run scoreboard players random @s rnd 1 100
execute as @e[type=brst:hole] as @s[scores={rnd=1..20}] at @s run scoreboard players set @s type 1
execute as @e[type=brst:hole] as @s[scores={rnd=21..50}] at @s run scoreboard players set @s type 2
execute as @e[type=brst:hole] as @s[scores={rnd=51..80}] at @s run scoreboard players set @s type 3
execute as @e[type=brst:hole] as @s[scores={rnd=81..84}] at @s run scoreboard players set @s type 4
execute as @e[type=brst:hole] as @s[scores={rnd=85..89}] at @s run scoreboard players set @s type 5
execute as @e[type=brst:hole] as @s[scores={rnd=90..94}] at @s run scoreboard players set @s type 6
execute as @e[type=brst:hole] as @s[scores={rnd=95..97}] at @s run scoreboard players set @s type 7
execute as @e[type=brst:hole] as @s[scores={rnd=98..99}] at @s run scoreboard players set @s type 8
execute as @e[type=brst:hole] as @s[scores={rnd=100}] at @s run scoreboard players set @s type 9
execute as @e[type=brst:hole] as @s at @s run scoreboard players random @s rnd 1 100
execute as @e[type=brst:hole] as @s[scores={rnd=1..15}] at @s run scoreboard players set @s chain 1
execute as @e[type=brst:hole] as @s[scores={rnd=16..35}] at @s run scoreboard players set @s chain 2
execute as @e[type=brst:hole] as @s[scores={rnd=36..75}] at @s run scoreboard players set @s chain 3
execute as @e[type=brst:hole] as @s[scores={rnd=76..90}] at @s run scoreboard players set @s chain 4
execute as @e[type=brst:hole] as @s[scores={rnd=91..97}] at @s run scoreboard players set @s chain 5
execute as @e[type=brst:hole] as @s[scores={rnd=98..99}] at @s run scoreboard players set @s chain 6
execute as @e[type=brst:hole] as @s[scores={rnd=100}] at @s run scoreboard players set @s chain 7
execute as @e[type=brst:hole] as @s at @s run scoreboard players random @s rnd 1 100
execute as @e[type=brst:hole] as @s[scores={death_timer=30..59}] as @s[scores={rnd=1..50}] as @s[scores={type=1..3}] at @s run scoreboard players set @s type 10
execute as @e[type=brst:hole] as @s[scores={death_timer=60..109}] as @s[scores={rnd=1..20}] as @s[scores={type=1..3}] at @s run scoreboard players set @s type 10
execute as @e[type=brst:hole] as @s[scores={death_timer=110..159}] as @s[scores={rnd=1..15}] as @s[scores={type=1..3}] at @s run scoreboard players set @s type 10
execute as @e[type=brst:hole] as @s[scores={death_timer=160..209}] as @s[scores={rnd=1..10}] as @s[scores={type=1..3}] at @s run scoreboard players set @s type 10
execute as @e[type=brst:hole] as @s[scores={death_timer=210..}] as @s[scores={rnd=1..25}] as @s[scores={type=1..3}] at @s run scoreboard players set @s type 10
execute as @e[type=brst:hole] as @s[scores={type=10}] at @s run scoreboard players set @s chain 1
execute as @e[type=brst:hole] as @s at @s run function breakstone/making/hole/make
execute as @e[type=brst:hole] as @s at @s run tag @s remove setup
