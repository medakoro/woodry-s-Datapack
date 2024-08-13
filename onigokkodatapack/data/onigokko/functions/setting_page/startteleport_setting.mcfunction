execute as @e[name="スタート位置設定",type=cod] at @s run kill @e[tag=StartTeleportSetting]
execute as @e[name="スタート位置設定",type=cod] at @s run summon armor_stand ~ ~300 ~ {Tags:["StartTeleportSetting"],Invisible:true}
execute as @e[name="スタート位置設定",type=cod] at @s run give @p[gamemode=!creative] minecraft:cod_spawn_egg{display:{Name:"\"スタート位置設定\"",Lore:["\"ブロックに向かってクリックしましょう。スタート地点を設定することができます。複数個設置することはできません\""]},Enchantments:[{}]}
execute as @e[name="スタート位置設定",type=cod] at @s run tp @s ~ ~ ~-1000
execute as @e[tag=StartTeleportSetting] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=StartTeleportSetting] at @s run particle minecraft:dust_color_transition 0 1 0 1 0 1 0 ^ ^-300 ^0.5
execute as @e[tag=StartTeleportSetting] at @s run particle minecraft:dust_color_transition 0 1 0 1 0 1 0 ^ ^-300 ^-0.5