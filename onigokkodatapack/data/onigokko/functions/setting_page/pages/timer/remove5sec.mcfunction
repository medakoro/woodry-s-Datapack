execute if score $selecttick system matches ..-1 run scoreboard players set $selecttick system 6000
scoreboard players remove $selecttick system 100
playsound minecraft:block.wooden_button.click_off player @s
function onigokko:setting_page/setting_page