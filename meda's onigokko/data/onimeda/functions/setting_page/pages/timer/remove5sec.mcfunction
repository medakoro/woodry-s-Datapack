execute if score $selecttick time matches ..-1 run scoreboard players set $selecttick time 6000
scoreboard players remove $selecttick time 100
playsound minecraft:block.wooden_button.click_off player @s
function onimeda:setting_page/setting_page