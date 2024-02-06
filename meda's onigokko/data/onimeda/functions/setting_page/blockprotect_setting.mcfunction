execute as @e[name="ブロック保護設定",type=cod] at @s positioned ~ ~300 ~ if entity @e[type=minecraft:armor_stand,distance=..0.8,tag=BlockProtectSetting] run tell @a Tips>>ブロック保護は1つのブロックに複数個設置することはできません
execute as @e[name="ブロック保護設定",type=cod] at @s positioned ~ ~300 ~ if entity @e[type=minecraft:armor_stand,distance=..0.8,tag=BlockProtectSetting] run tp @s ~ ~-1000 ~
execute as @e[name="ブロック保護設定",type=cod] at @s run summon armor_stand ~ ~300 ~ {Tags:["BlockProtectSetting"],Invisible:true}
execute as @e[name="ブロック保護設定",type=cod] at @s run give @p[gamemode=!creative] minecraft:cod_spawn_egg{display:{Name:"\"ブロック保護設定\"",Lore:["\"ブロックに向かってクリックしましょう。1マス下のブロックがすべてのクリック判定を消します。同じブロックに複数個設置することはできません\""]},Enchantments:[{}]}
execute as @e[name="ブロック保護設定",type=cod] at @s run tp @s ~ ~ ~-1000
execute as @e[tag=BlockProtectSetting] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=BlockProtectSetting] at @s run particle minecraft:dust_color_transition 0 0 1 1 0 0 1 ^ ^-300 ^0.5
execute as @e[tag=BlockProtectSetting] at @s run particle minecraft:dust_color_transition 0 0 1 1 0 0 1 ^ ^-300 ^-0.5
execute as @e[tag=BlockProtectSetting,tag=!interaction] at @s run summon interaction ~ ~-301 ~ {response:1,width:1.1,height:1.1}
execute as @e[tag=BlockProtectSetting,tag=!interaction] at @s run tag @s add interaction

execute as @e[name="ブロック保護削除",type=cod] at @s run summon armor_stand ~ ~ ~ {Tags:["BlockProtectDisable"],Invisible:true}
execute as @e[name="ブロック保護削除",type=cod] at @s run give @p[gamemode=!creative] minecraft:cod_spawn_egg{display:{Name:"\"ブロック保護削除\"",Lore:["\"ブロックに向かってクリックしましょう。周囲1マスのブロックの保護を削除します\""]},Enchantments:[{}]}
execute as @e[name="ブロック保護削除",type=cod] at @s run tp @s ~ ~ ~-1000
execute as @e[tag=BlockProtectDisable] at @s positioned ~ ~300 ~ run kill @e[distance=..1,type=minecraft:armor_stand,tag=interaction]
execute as @e[tag=BlockProtectDisable] at @s positioned ~ ~-1 ~ run kill @e[distance=..1,type=minecraft:interaction]
execute as @e[tag=BlockProtectDisable] at @s run kill @s