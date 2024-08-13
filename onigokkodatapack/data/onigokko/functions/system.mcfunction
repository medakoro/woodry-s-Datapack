#人数
scoreboard players set $onicount system 0
scoreboard players set $ningencount system 0
scoreboard players set $taikicount system 0
scoreboard players set $spectatorcount system 0
execute as @a[team=oni] run scoreboard players add $onicount system 1
execute as @a[team=ningen] run scoreboard players add $ningencount system 1
execute as @a[team=taiki] run scoreboard players add $taikicount system 1
execute as @a[team=spectator] run scoreboard players add $spectatorcount system 1
#tellraw
execute as @a[team=oni] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"鬼","color":"red"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$onicount","objective":"system"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$ningencount","objective":"system"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$taikicount","objective":"system"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$spectatorcount","objective":"system"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
execute as @a[team=ningen] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"生存者","color":"gold"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$onicount","objective":"system"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$ningencount","objective":"system"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$taikicount","objective":"system"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$spectatorcount","objective":"system"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
execute as @a[team=taiki] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"待機","color":"blue"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$onicount","objective":"system"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$ningencount","objective":"system"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$taikicount","objective":"system"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$spectatorcount","objective":"system"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
execute as @a[team=spectator] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"観戦者","color":"yellow"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$onicount","objective":"system"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$ningencount","objective":"system"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$taikicount","objective":"system"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$spectatorcount","objective":"system"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
execute as @a[team=!oni,team=!ningen,team=!taiki,team=!spectator] at @s run title @s actionbar ["",{"text":"あなたは:","color":"white"},{"text":"不明","color":"gray"},{"text":"|||"},{"text":"鬼:","color":"red"},{"score":{"name":"$onicount","objective":"system"},"color":"red"},{"text":"生存:","color":"gold"},{"score":{"name":"$ningencount","objective":"system"},"color":"gold"},{"text":"待機:","color":"blue"},{"score":{"name":"$taikicount","objective":"system"},"color":"blue"},{"text":"観戦者:","color":"yellow"},{"score":{"name":"$spectatorcount","objective":"system"},"color":"yellow"},{"text":"|"},{"text":"キル数:","color":"green"},{"score":{"name":"@s","objective":"kill"},"color":"green"},{"text":"|"},{"text":"連続勝利数:","color":"green"},{"score":{"name":"@s","objective":"win"},"color":"green"}]
#鬼にすること
effect give @a[team=oni] minecraft:strength 5 100 true
#死亡者
execute as @a[scores={deathcount=1}] at @s run team join taiki @s
execute as @a[scores={deathcount=1}] at @s run summon firework_rocket ~ ~1 ~ {LifeTime:0.1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:4,Flicker:0,Trail:0,Colors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],FadeColors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]},{Type:1,Flicker:0,Trail:0,Colors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844],FadeColors:[I;11743532,3887386,5320730,2437522,8073150,2651799,14188952,4312372,14602026,6719955,12801229,15435844]}]}}}}
execute as @a[scores={deathcount=1}] at @s run scoreboard players set @s deathcount 0
#開始前
execute if score $starttimer system matches 1.. run title @a subtitle ["",{"text":"残り:"},{"score":{"name":"$startsec","objective":"system"}},{"text":"秒"}]
execute if score $starttimer system matches 1.. run title @a title ["",{"text":"-鬼が来るぞ!逃げろ!!-","color":"gold"}]
execute if score $starttimer system matches -50..-20 run title @a title ["",{"text":""}]
execute if score $starttimer system matches -50..-20 run title @a subtitle ["",{"text":""}]
execute if score $starttimer system matches -100.. run scoreboard players remove $starttimer system 1
scoreboard players operation $startsec system = $starttimer system
scoreboard players operation $startsec system /= $20 system
execute if score $starttimer system matches 0 run function onigokko:start/startgame2
#経過時間
execute unless score $tick system matches ..0 run scoreboard players remove $tick system 1
execute if score $tick system matches 0 run function onigokko:gamefinish
execute if score $tick system matches ..0 run scoreboard players set $tick system -1
execute store result bossbar minecraft:timerbar max run scoreboard players get $selecttick system
execute store result bossbar minecraft:timerbar value run scoreboard players get $tick system
scoreboard players operation $sec system = $tick system
scoreboard players operation $sec system /= $20 system
scoreboard players operation $sec system %= $60 system
scoreboard players operation $min system = $tick system
scoreboard players operation $min system /= $1200 system
execute unless score $sec system matches ..9 unless score $tick system matches ..0 run bossbar set minecraft:timerbar name ["残り: ",{"score":{"name":"$min","objective":"system"},"color":"gold"},{"text":":"},{"score":{"name":"$sec","objective":"system"},"color":"gold"}]
execute if score $sec system matches ..9 unless score $tick system matches ..0 run bossbar set minecraft:timerbar name ["残り: ",{"score":{"name":"$min","objective":"system"},"color":"gold"},{"text":":"},{"text":"0","color":"gold"},{"score":{"name":"$sec","objective":"system"},"color":"gold"}]
execute if score $tick system matches ..0 run bossbar set minecraft:timerbar name ["ゲームは終了しました!",{"text":"管理者からのリスタート待機中です...","color":"red"}]
#ゲームクリア判定
execute if score $ningencount system matches 0 unless score $tick system matches -1 run function onigokko:gamefinish













