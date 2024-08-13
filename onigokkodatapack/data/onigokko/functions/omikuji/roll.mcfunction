execute if score $countroll system matches 0 run title @a times 1t 2s 1s
execute if score $countroll system matches ..100 store result score $omikujiroll system run random value 1..5
execute if score $countroll system matches ..199 run title @a title {"text":"Rolling...","obfuscated":true}
execute if score $countroll system matches ..251 run scoreboard players add $countroll system 1

#大吉
execute if score $countroll system matches 200 if score $omikujiroll system matches 0 run title @a title ["",{"text":"[大吉]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 0 run function onigokko:omikuji/rollselect/daikiti

#中吉
execute if score $countroll system matches 200 if score $omikujiroll system matches 1 run title @a title ["",{"text":"[中吉]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 1 run function onigokko:omikuji/rollselect/tyuukiti

#小吉
execute if score $countroll system matches 200 if score $omikujiroll system matches 2 run title @a title ["",{"text":"[小吉]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 2 run function onigokko:omikuji/rollselect/syoukiti

#吉
execute if score $countroll system matches 200 if score $omikujiroll system matches 3 run title @a title ["",{"text":"[吉]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 3 run function onigokko:omikuji/rollselect/kiti

#凶
execute if score $countroll system matches 200 if score $omikujiroll system matches 4 run title @a title ["",{"text":"[凶]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 4 run function onigokko:omikuji/rollselect/kyou

#大凶
execute if score $countroll system matches 200 if score $omikujiroll system matches 5 run title @a title ["",{"text":"[大凶]を引いた!"}]
execute if score $countroll system matches 200 if score $omikujiroll system matches 5 run function onigokko:omikuji/rollselect/daikyou

execute if score $countroll system matches 251 run kill @e[tag=en]
execute if score $countroll system matches 251 run scoreboard players set $countroll system 100000
execute if score $countroll system matches 201 run scoreboard players set $omikujiroll system 1000