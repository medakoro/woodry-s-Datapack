tellraw @a ["",{"text":"おみくじで:[大吉]を引いた!\n効果:捕まった人がランダムで3人復活(スペク以外)\n引いた人:"},{"selector":"@a[tag=omikujisummon]"}]
tag @r[team=Taiki] add hukkatu
tag @r[team=Taiki] add hukkatu
tag @r[team=Taiki] add hukkatu
execute as @a[tag=hukkatu] at @s run tp @s @a[tag=omikujisummon,limit=1]
tellraw @a[tag=hukkatu] "おめでとうございます!あなたは復活することができました!"
tellraw @a[tag=!hukkatu] ["",{"text":"今回復活した人は:"},{"selector":"@a[tag=hukkatu]"},{"text":"でした!\nおめでとうございます!"}]
tag @a remove hukkatu
tag @a remove omikujisummon