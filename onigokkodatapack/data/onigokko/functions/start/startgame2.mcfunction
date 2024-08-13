title @a subtitle ["",{"text":"-見つけられないように隠れろ!-","color":"red"}]
title @a title ["",{"text":"[鬼が探し出した...","color":"red"},{"text":"]","color":"red"}]
scoreboard players operation $tick system = $selecttick system
execute as @e[tag=StartTeleportSetting] at @s run tp @a[team=oni] ~ ~-300 ~