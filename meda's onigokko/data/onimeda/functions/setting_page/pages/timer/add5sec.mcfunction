execute if score $selecttick time matches ..-1 run scoreboard players set $selecttick time 6000
scoreboard players add $selecttick time 100
playsound minecraft:block.wooden_button.click_on player @s
function onimeda:setting_page/setting_page