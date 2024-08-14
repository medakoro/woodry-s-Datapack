tellraw @a ["",{"text":"おみくじで:[小吉]を引いた!\n効果:鬼の発光\n引いた人:"},{"selector":"@a[tag=omikujisummon]"}]
effect give @a[team=oni] glowing 60 255 
tellraw @a[team=Ningen] "見える....見えるぞ!!!!!"
tellraw @a[team=oni] "体がめっちゃ光る!!!やばい!!!"
tag @a remove omikujisummon