kill @e[tag=en]
summon minecraft:armor_stand ~ ~11 ~ {Invisible:1,NoGravity:1,Tags:["1","en"]}
summon minecraft:armor_stand ~ ~11 ~ {Invisible:1,NoGravity:1,Tags:["2","en"]}
summon minecraft:armor_stand ~ ~11 ~ {Invisible:1,NoGravity:1,Tags:["3","en"]}
summon minecraft:armor_stand ~ ~11 ~ {Invisible:1,NoGravity:1,Tags:["4","en"]}
summon minecraft:armor_stand ~ ~11 ~ {Invisible:1,NoGravity:1,Tags:["5","en"]}
execute as @e[tag=2] at @s run tp @s ~ ~ ~ 120 0
execute as @e[tag=4] at @s run tp @s ~ ~ ~ -180 0
