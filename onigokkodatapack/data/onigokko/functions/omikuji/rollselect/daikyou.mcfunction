tellraw @a ["",{"text":"おみくじで:[大凶]を引いてしまった....\n効果:逃走者側が発光\n引いてしまった人:"},{"selector":"@a[tag=omikujisummon]"}]
effect give @a[team=ningen] glowing 30 255
tellraw @a[team=ningen] "あららら....体が光ってる....!"
tellraw @a[team=oni] "逃走者が見やすい!全員捕まえてやる!"
tag @a remove omikujisummon