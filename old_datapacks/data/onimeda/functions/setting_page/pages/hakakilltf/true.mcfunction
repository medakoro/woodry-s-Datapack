kill @e[nbt={Tags:["deathpoint"]}]
scoreboard players set $deathpoint system 1
playsound minecraft:block.wooden_button.click_on player @s
function onimeda:setting_page/setting_page