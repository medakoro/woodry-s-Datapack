#後処理
team join Ningen
gamemode adventure @a
execute as @e[tag=SpawnSetting] at @s run tp @a ~ ~-300 ~
#title times
title @a times 0t 2s 1s
#鬼勝利
execute if score $test NingenCount matches 0 run function onimeda:game/oniwin

#生存勝利
execute if score $min time matches ..0 if score $sec time matches ..0 if score $tick time matches ..0 if score $test NingenCount matches 1.. run function onimeda:game/ningenwin

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.8 1.03

kill @e[nbt={Marker:true}]
#AFK検知
execute if score $tick time matches ..0 run advancement grant @a[tag=allafk] only onimeda:allafk