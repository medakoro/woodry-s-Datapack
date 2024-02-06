execute if score $selecttick onitimer matches ..-1 run scoreboard players set $selecttick onitimer 200
scoreboard players remove $selecttick onitimer 20
playsound minecraft:block.wooden_button.click_off player @s
function onimeda:setting_page/setting_page