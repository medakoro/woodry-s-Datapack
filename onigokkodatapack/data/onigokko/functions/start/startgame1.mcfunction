title @a subtitle ["",{"text":"-鬼が来るぞ!逃げろ!!-","color":"gold"}]
title @a title ["",{"text":"[ゲームを開始します!","color":"red"},{"text":"]","color":"red"}]
scoreboard players set @a kill 0
scoreboard players set $starttimer system 600
kill @e[nbt={Marker:true}]
execute as @e[tag=StartTeleportSetting] at @s run tp @a[team=ningen] ~ ~-300 ~