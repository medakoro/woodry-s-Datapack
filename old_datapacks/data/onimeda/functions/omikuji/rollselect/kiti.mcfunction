tellraw @a ["",{"text":"おみくじで:[吉]を引いた!\n効果:逃走者側の一時的な移動速度上昇\n引いた人:"},{"selector":"@a[tag=omikujisummon]"}]
effect give @a[team=Ningen] speed 120 1
tellraw @a[team=Ningen] "120秒間スピードアップ!足がみなぎってきた!!!"
tellraw @a[team=oni] "120秒間スピードアップされた!早く捕まえないと!"
tag @a remove omikujisummon