execute at @a[scores={deathcount=1..}] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"死んでて草"}',CustomNameVisible:true,Invisible:false,NoGravity:true,Marker:true,Tags:["deathpoint"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}]}
execute as @a[scores={deathcount=1..}] at @s run loot replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=deathpoint,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot onimeda:player_head
execute as @a[scores={deathcount=1..}] at @s run teleport @e[type=armor_stand,sort=nearest,limit=1,tag=deathpoint,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] @s
execute as @e[nbt={Tags:[deathpoint]}] at @s run item replace entity @s armor.chest with minecraft:leather_chestplate
#血
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
execute as @a[scores={deathcount=1..}] at @s run particle minecraft:block redstone_block ~ ~1.4 ~
