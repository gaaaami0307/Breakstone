#石炭ブロック
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run tellraw @a { "rawtext": [{"text":"\n§a<石炭ブロック>§r\n\n枯れ木の生成速度が2秒上がりました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ coal_block unless block -120 -60 -120 coal_block run setblock -120 -60 -120 minecraft:coal_block
#銅ブロック
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run tellraw @a { "rawtext": [{"text":"\n§a<銅ブロック>§r\n\n§c研究所§rが解放されました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ copper_block unless block -120 -59 -120 stone run setblock -120 -59 -120 minecraft:stone
#ラピスラズリブロック
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run tellraw @a { "rawtext": [{"text":"\n§a<ラピスラズリブロック>§r\n\n§c石炭ダッシュ§r能力が解放されました。\n石炭ブロックの上を歩くと3秒間、スピードVが付きます。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ lapis_block unless block -120 -58 -120 lapis_block run setblock -120 -58 -120 minecraft:lapis_block
#鉄ブロック
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run tellraw @a { "rawtext": [{"text":"\n§a<鉄ブロック>§r\n\n§c実績§rが解放されました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ iron_block unless block -120 -57 -120 iron_block run setblock -120 -57 -120 minecraft:iron_block
#レッドストーンブロック
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run tellraw @a { "rawtext": [{"text":"\n§a<レッドストーンブロック>§r\n\n枯れ木の生成速度がさらに2秒上がりました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ redstone_block unless block -120 -56 -120 redstone_block run setblock -120 -56 -120 minecraft:redstone_block
#金ブロック
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run tellraw @a { "rawtext": [{"text":"\n§a<金ブロック>§r\n\n§c松明錬成§r能力が解放されました。\n棒を手に持ってしゃがむと、棒を松明に変えます。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ gold_block unless block -120 -55 -120 gold_block run setblock -120 -55 -120 minecraft:gold_block
#ダイアモンドブロック
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run tellraw @a { "rawtext": [{"text":"\n§a<ダイアモンドブロック>§r\n\n§c錬金テーブル§rが解放されました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ diamond_block unless block -120 -54 -120 diamond_block run setblock -120 -54 -120 minecraft:diamond_block
#エメラルドブロック
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run tellraw @a { "rawtext": [{"text":"\n§a<エメラルドブロック>§r\n\n§cエメラルドダッシュ§r能力が解放されました。\nエメラルドブロックの上を歩くと3秒間、スピードXVが付きます。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ emerald_block unless block -120 -53 -120 emerald_block run setblock -120 -53 -120 minecraft:emerald_block
#クォーツブロック
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run tellraw @a { "rawtext": [{"text":"\n§a<クォーツブロック>§r\n\n§cクォーツマイニング§r能力が解放されました。\nクォーツブロックの上に立つと、採掘速度上昇Vが付きます。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ quartz_block unless block -120 -52 -120 quartz_block run setblock -120 -52 -120 minecraft:quartz_block
#ルミナイトブロック
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run tellraw @a { "rawtext": [{"text":"＝＝＝＝＝＝＝＝＝＝＝＝＝\n§6【新しい鉱石ブロックを検知しました】§r"}] }
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run tellraw @a { "rawtext": [{"text":"\n§a<ルミナイトブロック>§r\n\n§cオールアップグレード§r能力が解放されました。\n攻撃・頑丈・採掘・移動のアーティファクトの効果が一段階上昇しました。\n＝＝＝＝＝＝＝＝＝＝＝＝＝"}] }
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run playsound note.bit @a ~~~ 1 1
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run particle minecraft:totem_particle ~~~
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run setblock -120 -50 -120 minecraft:glass
execute positioned 5000 -57 5000 if block ~~~ brst:luminite_block unless block -120 -51 -120 brst:luminite_block run setblock -120 -51 -120 brst:luminite_block
#最後の破壊
execute if block -120 -50 -120 glass run setblock 5000 -57 5000 minecraft:air
execute if block -120 -50 -120 glass run setblock -120 -50 -120 minecraft:air