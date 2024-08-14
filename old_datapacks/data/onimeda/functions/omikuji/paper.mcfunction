execute as @e[tag=omikujipaper] at @s run tp @s ~ ~ ~ ~2.5 ~
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run tag @s add omikuji
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run tellraw @a ["",{"selector":"@s"},{"text":" がおみくじを入手しました!"}]
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run give @p minecraft:paper{display:{Name:"\"おみくじ\"",Lore:["\"なにか強い力があふれているような気がする....神社に行ってみようかな\""]},Damage:1000,Enchantments:[{id:loyalty,lvl:255}]}
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run particle minecraft:explosion_emitter ~ ~ ~
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 3 0.65
execute as @e[tag=omikujipaper] at @s run execute as @p[dy=0.1] run tp @e[distance=..0.5,tag=omikujipaper] ~ -1000 ~