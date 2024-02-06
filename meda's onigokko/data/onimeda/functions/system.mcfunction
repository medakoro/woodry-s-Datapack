#生存者死亡(Repeat)
execute as @a[scores={deathcount=1}] at @s run team join Taiki
#死んだときの墓
execute if score $deathpoint system matches 1 as @a[scores={deathcount=1}] at @s run function onimeda:dead
#人数
scoreboard players set $rank system 0
execute as @a at @s run scoreboard players add $rank system 1
#順位代入
execute as @a[scores={deathcount=1}] at @s run scoreboard players operation @s rank = $rank system
#firework
execute as @a[scores={deathcount=1}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0.1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],FadeColors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]},{Type:1,Flicker:0,Trail:0,Colors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],FadeColors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute as @a[scores={deathcount=1}] at @s run scoreboard players set @s deathcount 0

#鬼決め
execute unless score $test onitimer matches 0 run scoreboard players remove $test onitimer 1
execute if score $test onitimer = $0 onitimer as @a[tag=oni] at @s run team join oni
execute if score $test onitimer = $0 onitimer as @a[tag=oni] at @s run advancement grant @s through onimeda:firstonirandom
execute if score $test onitimer = $0 onitimer if entity @a[tag=oni] run tellraw @a ["",{"text":"\u4eca\u56de\u306e\u9b3c\u306f:"},{"selector":"@a[tag=oni]","color":"gold"},{"text":"\u3055\u3093\u306b\u6c7a\u5b9a\u3057\u307e\u3057\u305f!"}]
execute if score $test onitimer = $0 onitimer if entity @a[tag=oni] run scoreboard players set $test onitimer -1
execute if score $test onitimer = $0 onitimer unless entity @a[tag=oni] run tellraw @a ["",{"text":"誰も抽選に参加しませんでした!"}]
execute if score $test onitimer = $0 onitimer unless entity @a[tag=oni] run scoreboard players set $test onitimer -1
execute if score $test onitimer < $0 onitimer as @a[tag=oni,team=oni] at @s run tag @s remove oni


#時間
execute unless score $tick time matches ..0 run scoreboard players remove $tick time 1
execute if score $tick time matches 0 run function onimeda:gamefinish
execute if score $tick time matches ..0 run scoreboard players set $tick time -1

#実績検知
#奈落検知
execute at @a as @a[y=-64,dy=-64] run advancement grant @s only onimeda:voidin
#kill数検知
execute as @a[scores={kill=1..}] at @s run advancement grant @s only onimeda:firstkill
execute as @a[scores={kill=5..}] at @s run advancement grant @s only onimeda:5stkill
execute as @a[scores={kill=10..}] at @s run advancement grant @s only onimeda:10stkill
#勝利数検知
execute as @a[scores={win=5..}] at @s run advancement grant @s only onimeda:5stwin
execute as @a[scores={win=10..}] at @s run advancement grant @s only onimeda:10stwin
#視点検知
execute as @a at @s positioned ^ ^ ^1 run function onimeda:sitenkenti
#順位検知
execute as @a[scores={rank=..50}] at @s run advancement grant @s only onimeda:top50
execute as @a[scores={rank=..10}] at @s run advancement grant @s only onimeda:top10
execute as @a[scores={rank=..3}] at @s run advancement grant @s only onimeda:top3
execute as @a[scores={rank=1}] at @s run advancement grant @s only onimeda:top1
#allafk検知
execute as @e[tag=StartTeleportSetting] at @s positioned ~ ~-300 ~ run tag @a[distance=10..] remove allafk
#何回落ちたか
execute as @a at @s run advancement grant @s[scores={leavegame=1..}] only onimeda:firstleave
execute as @a at @s run advancement grant @s[scores={leavegame=2..}] only onimeda:2ndleave
execute as @a at @s run advancement grant @s[scores={leavegame=5..}] only onimeda:5stleave
#生存時間
execute unless score $tick time matches ..0 as @a at @s run scoreboard players add @s[gamemode=adventure] seizontimer 1
#下のコマンド　書き換え必須
execute as @a at @s if score @s seizontimer matches 1200.. run advancement grant @s only onimeda:one_minseizon

#titlerawたち
#鬼(Repeat)
execute as @a[team=oni] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"鬼","color":"red"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$test","objective":"OniCount"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$test","objective":"NingenCount"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$test","objective":"TaikiCount"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$test","objective":"SpectatorCount"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
scoreboard players set $test OniCount 0
execute as @a[team=oni] at @s run scoreboard players add $test OniCount 1

#生存者(Repeat)
execute as @a[team=Ningen] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"生存者","color":"gold"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$test","objective":"OniCount"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$test","objective":"NingenCount"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$test","objective":"TaikiCount"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$test","objective":"SpectatorCount"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
scoreboard players set $test NingenCount 0
execute as @a[team=Ningen] at @s run scoreboard players add $test NingenCount 1

#待機者(Repeat)
execute as @a[team=Taiki] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"待機","color":"blue"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$test","objective":"OniCount"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$test","objective":"NingenCount"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$test","objective":"TaikiCount"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$test","objective":"SpectatorCount"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
scoreboard players set $test TaikiCount 0
execute as @a[team=Taiki] at @s run scoreboard players add $test TaikiCount 1

#観戦者(Repeat)
execute as @a[team=Spectator] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"観戦者","color":"yellow"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$test","objective":"OniCount"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$test","objective":"NingenCount"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$test","objective":"TaikiCount"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$test","objective":"SpectatorCount"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
scoreboard players set $test SpectatorCount 0
execute as @a[team=Spectator] at @s run scoreboard players add $test SpectatorCount 1

#bossbarのいろいろ
#bossbar(鬼投票時間)
execute store result bossbar minecraft:onitimerbar max run scoreboard players get $selecttick onitimer
scoreboard players operation $sec onitimer = $test onitimer
scoreboard players operation $sec onitimer /= $20 onitimer
execute store result bossbar minecraft:onitimerbar value run scoreboard players get $test onitimer
bossbar set minecraft:onitimerbar name ["鬼抽選まで: ",{"score":{"name":"$sec","objective":"onitimer"},"color":"red"},{"text":"秒"}]
execute if score $test onitimer > $0 onitimer run bossbar set minecraft:onitimerbar visible true
execute if score $test onitimer < $0 onitimer run bossbar set minecraft:onitimerbar visible false

#bossbar(経過時間)
execute store result bossbar minecraft:timerbar max run scoreboard players get $selecttick time
scoreboard players operation $sec time = $tick time
scoreboard players operation $sec time /= $20 time
scoreboard players operation $sec time %= $60 time
scoreboard players operation $min time = $tick time
scoreboard players operation $min time /= $1200 time
execute store result bossbar minecraft:timerbar value run scoreboard players get $tick time
execute unless score $sec time matches ..9 unless score $tick time matches ..0 run bossbar set minecraft:timerbar name ["残り: ",{"score":{"name":"$min","objective":"time"},"color":"gold"},{"text":":"},{"score":{"name":"$sec","objective":"time"},"color":"gold"}]
execute if score $sec time matches ..9 unless score $tick time matches ..0 run bossbar set minecraft:timerbar name ["残り: ",{"score":{"name":"$min","objective":"time"},"color":"gold"},{"text":":"},{"text":"0","color":"gold"},{"score":{"name":"$sec","objective":"time"},"color":"gold"}]
execute if score $tick time matches ..0 run bossbar set minecraft:timerbar name ["ゲームは終了しました!",{"text":"管理者からのリスタート待機中です...","color":"red"}]

#スタート前のtimer
execute if score $starttimer system matches 1..300 run title @a subtitle ["",{"text":"残り:"},{"score":{"name":"$startsec","objective":"system"}},{"text":"秒"}]
execute if score $starttimer system matches 1..300 run title @a title ["",{"text":"-鬼が来るぞ!逃げろ!!-","color":"gold"}]
execute if score $starttimer system matches -50..-20 run title @a title ["",{"text":""}]
execute if score $starttimer system matches -50..-20 run title @a subtitle ["",{"text":""}]
execute if score $starttimer system matches -100.. run scoreboard players remove $starttimer system 1
scoreboard players operation $startsec system = $starttimer system
scoreboard players operation $startsec system /= $20 system
execute if score $starttimer system matches 0 run function onimeda:start1 
