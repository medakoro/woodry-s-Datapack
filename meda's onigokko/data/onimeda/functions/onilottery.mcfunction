#鬼抽選(Impulse)
execute store result bossbar minecraft:onitimerbar max run scoreboard players get $selecttick onitimer
scoreboard players operation $test onitimer = $selecttick onitimer
scoreboard players set $0 onitimer 0
scoreboard players set $20 onitimer 20
scoreboard players operation $sec onitimer = $test onitimer
scoreboard players operation $sec onitimer /= $20 onitimer
tellraw @a[team=Taiki] ["",{"text":"<INFORMATION>\n","color":"dark_aqua"},{"text":"鬼になれる抽選が始まります!"},{"score":{"name":"$sec","objective":"onitimer"},"color":"gold"},{"text":"秒後に抽選されます!"},{"text":"\n[抽選に参加する]","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add oni"}}]
tellraw @a[team=!Taiki] ["",{"text":"<INFORMATION>\n","color":"dark_aqua"},{"text":"鬼になれる抽選が始まります!"},{"score":{"name":"$sec","objective":"onitimer"},"color":"gold"},{"text":"秒後に抽選されます!"},{"text":"\n[抽選に参加することはできません!]","color":"red"}]