execute as @e[name="スポーン地点設定",type=cod] at @s run kill @e[tag=SpawnSetting]
execute as @e[name="スポーン地点設定",type=cod] at @s run summon armor_stand ~ ~300 ~ {Tags:["SpawnSetting"],Invisible:true}
execute as @e[name="スポーン地点設定",type=cod] at @s run give @p[gamemode=!creative] minecraft:cod_spawn_egg{display:{Name:"\"スポーン地点設定\"",Lore:["\"ブロックに向かってクリックしましょう。スポーン位置を設定することができます。複数個設置することはできません\""]},Enchantments:[{}]}
execute as @e[name="スポーン地点設定",type=cod] at @s run tp @s ~ ~ ~-1000
execute as @e[tag=SpawnSetting] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=SpawnSetting] at @s run particle minecraft:dust_color_transition 1 0 0 1 1 0 0 ^ ^-300 ^0.5
execute as @e[tag=SpawnSetting] at @s run particle minecraft:dust_color_transition 1 0 0 1 1 0 0 ^ ^-300 ^-0.5
execute as @e[tag=SpawnSetting] at @s run spawnpoint @a ~ ~-300 ~
execute as @e[tag=SpawnSetting] at @s run gamerule spawnRadius 0