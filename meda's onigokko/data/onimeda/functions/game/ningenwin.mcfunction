tellraw @a ["",{"text":"\u7d42\u4e86!\n-<人間>\u306e\u52dd\u3061-\n\u7d42\u4e86\u6642\u9593:"},{"score":{"name":"$tick","objective":"time"}}]
title @a[team=!Ningen] title ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"*\u8ca0\u3051\u305f*","color":"blue"},{"text":"..."}]
title @a[team=!oni,team=!Spectator,team=!Taiki] title ["",{"text":"\u3042\u306a\u305f\u306f"},{"text":"*\u52dd\u3063\u305f*","color":"red"},{"text":"!"}]
execute as @a[team=Ningen] at @s run advancement grant @s only onimeda:firstwin
scoreboard players add @a[team=Ningen] win 1
scoreboard players set @a[team=!Ningen] win 0