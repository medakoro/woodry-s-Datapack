tellraw @a ["",{"text":"Tips No.","color":"#87cefa"},{"score":{"name":"$tips","objective":"system"},"color":"00bfff"}]
execute if score $tips system matches 1 run tellraw @a ["",{"text":"Tips>> 動かないことでできることもあるのかもしれない。","color":"#40e0d0"}]
execute if score $tips system matches 2 run tellraw @a ["",{"text":"Tips>> クリーパー、いいよね。\nたとえ鬼でもクラフター、もちろん爆風に巻き込まれることはある。","color":"#40e0d0"}]
execute if score $tips system matches 3 run tellraw @a ["",{"text":"Tips>> 実はおみくじは1人しか取れないから、おみくじは早くとらないと誰かに取られてしまうぞ!","color":"#40e0d0"}]
execute if score $tips system matches 4 run tellraw @a ["",{"text":"Tips>> 実績の数は実に30個もある!頑張ってコンプリートしてみてはどうかな?","color":"#40e0d0"}]
execute if score $tips system matches 5 run tellraw @a ["",{"text":"Tips>> 「「待ちなさいー！！」」\n「あの人(woodryさん)編集もせずにほかのゲームをしてるわ！」\n「そんなの許さないわ！」","color":"#40e0d0"}]
execute if score $tips system matches 6 run tellraw @a ["",{"text":"Tips>> ALT+F4の詐欺が増加しています。注意してください!絶対押すなよ!絶対!!!!!!!!!","color":"#40e0d0"}]
execute if score $tips system matches 7 run tellraw @a ["",{"text":"Tips>> そういえば、みんなWoodry鯖 鬼ごっこ説明書は見た?結構大切なこと書いてあるよ(((((((???)))))))","color":"#40e0d0"}]
execute if score $tips system matches 8 run tellraw @a ["",{"text":"Tips>> 知ってた?鬼は鬼のこと殺せるよ()","color":"#40e0d0"}]
execute if score $tips system matches 9 run tellraw @a ["",{"text":"Tips>> 実績をコンプリートしたい人へ!:奈落に落ちてみよう!","color":"#40e0d0"}]
execute if score $tips system matches 10 run tellraw @a ["",{"text":"Tips>> ちなみにあと","color":"#40e0d0"},{"score":{"name":"$min","objective":"time"},"color":"gold"},{"text":"分","color":"#40e0d0"},{"text":"0","color":"gold"},{"score":{"name":"$sec","objective":"time"},"color":"gold"},{"text":"秒だよ","color":"#40e0d0"}]
execute if score $tips system matches 11 run tellraw @a ["",{"text":"Tips>> データパックの作成ﾂｶﾚﾀ.....ｼﾃ....ｺﾛｼﾃ..... ","color":"#40e0d0"}]
execute if score $tips system matches 12 run tellraw @a ["",{"text":"Tips>> おみくじの確立はすべて同じ!何を引くかは完全に運だ!","color":"#40e0d0"}]
execute if score $tips system matches 13 run tellraw @a ["",{"text":"Tips>> ぜひクリックしてみてね!","color":"#40e0d0","clickEvent":{"action":"open_url","value":"https://x.gd/6graM"}}]
execute if score $tips system matches 14 run tellraw @a ["",{"text":"Tips>> みんなおみくじで大凶を引いて全員から責められてメンタル崩壊しよう!","color":"#40e0d0"}]
execute if score $tips system matches 15 run tellraw @a ["",{"text":"Tips>> え?Tipsほぼ関係ないものばっかりだって?\n……ｿﾝﾅｺﾄﾅｲﾖｰ","color":"#40e0d0","strikethrough":true}]
execute if score $tips system matches 16 run tellraw @a ["",{"text":"Tips>> スペクテイターになってもいいのかい?復活や鬼になれるチャンスを逃してしまうよ","color":"#40e0d0"}]
execute if score $tips system matches 17.. run tellraw @a ["",{"text":"Error:無効なTips数値:","color": "red"},{"score":{"name":"$tips","objective":"system"},"color":"red"}]