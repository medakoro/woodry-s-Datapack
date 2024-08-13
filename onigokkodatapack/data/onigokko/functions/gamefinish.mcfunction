
#title times
title @a times 0t 2s 1s
#鬼勝利
execute if score $ningencount system matches 0 run function onigokko:game/oniwin

#生存勝利
execute if score $min system matches ..0 if score $sec system matches ..0 if score $tick system matches ..0 if score $ningencount system matches 1.. run function onigokko:game/ningenwin

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.4 1.03

kill @e[nbt={Marker:true}]
#後処理
team join ningen @a
gamemode adventure @a
execute as @e[tag=SpawnSetting] at @s run tp @a ~ ~-300 ~
scoreboard players set $tick system -1