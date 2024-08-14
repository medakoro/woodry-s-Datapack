tellraw @a ["",{"text":"おみくじで:[凶]を引いてしまった....\n効果:鬼側の一時的な移動速度上昇\n引いてしまった人:"},{"selector":"@a[tag=omikujisummon]"}]
effect give @a[team=oni] speed 60 1 
tellraw @a[team=Ningen] "うわぁっ!前から鬼がすごい速度でぇ!"
tellraw @a[team=oni] "うおおおお!!!!!!体がみなぎる!!!!!!!!"
tag @a remove omikujisummon