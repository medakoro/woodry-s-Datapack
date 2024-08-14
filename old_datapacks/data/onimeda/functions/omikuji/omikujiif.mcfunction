execute as @e[type=item,nbt={Item:{tag:{Damage:1000}}}] at @s positioned ~ ~-2 ~ run function onimeda:omikuji/mahoujinstart
execute as @e[type=item,nbt={Item:{tag:{Damage:1000}}}] at @s run playsound minecraft:entity.ender_dragon.death player @a ~ ~ ~ 0.5 0.9
execute as @e[type=item,nbt={Item:{tag:{Damage:1000}}}] at @s run scoreboard players set $countroll system 0
execute as @e[type=item,nbt={Item:{tag:{Damage:1000}}}] at @s run execute as @p at @s run tag @s add omikujisummon
execute as @e[type=item,nbt={Item:{tag:{Damage:1000}}}] at @s positioned ~ ~-2 ~ run kill @s