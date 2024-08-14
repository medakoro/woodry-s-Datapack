#particle minecraft:dust_color_transition 1 1 0 1 1 1 0 ~ ~1.4 ~
#particle minecraft:dust_color_transition 0.5 0 0.5 1 0.5 0 0.5 ~ ~ ~
#デバッグ用
execute positioned ~ ~ ~ if entity @e[distance=..0.5,team=oni] run advancement grant @s only onimeda:onieye
execute if entity @s[distance=..30] positioned ^ ^ ^1 if block ~ ~ ~ air run function onimeda:sitenkenti