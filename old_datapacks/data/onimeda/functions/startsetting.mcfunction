#最初の設定
#scoreboard
scoreboard objectives add OniCount dummy
scoreboard objectives add NingenCount dummy
scoreboard objectives add TaikiCount dummy
scoreboard objectives add SpectatorCount dummy
scoreboard objectives add deathcount deathCount
scoreboard objectives add onitimer dummy
scoreboard objectives add teiki dummy
scoreboard objectives add time dummy
scoreboard players set $20 onitimer 20
scoreboard players set $test onitimer 0
scoreboard players set $20 time 20
scoreboard players set $20 system 20
scoreboard players set $60 time 60
scoreboard players set $1200 time 1200
scoreboard objectives add kill minecraft.custom:minecraft.player_kills
scoreboard objectives add win dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add system dummy
scoreboard players set $blood system 0
scoreboard players set $starttimer system 0
scoreboard objectives add rank dummy
scoreboard objectives add leavegame minecraft.custom:minecraft.leave_game
scoreboard objectives add seizontimer dummy
#team
team add oni
team add Ningen
team add Taiki
team add Spectator
team modify oni prefix "<鬼>"
team modify Ningen prefix "<逃走者>"
team modify Taiki prefix "<待機者>"
team modify Spectator prefix "<観戦者>"
team modify oni color red
team modify Ningen color gold
team modify Taiki color blue
team modify Spectator color yellow
#title
title @a times 0t 20t 20t
#bossbar
#bossbar(鬼抽選)
bossbar add onitimerbar "鬼抽選まであと:<sec>"
bossbar set minecraft:onitimerbar players @a
bossbar set minecraft:onitimerbar max 1200
bossbar set minecraft:onitimerbar color red
bossbar set minecraft:onitimerbar style notched_10
bossbar set minecraft:onitimerbar visible false
bossbar set minecraft:onitimerbar visible true

#bossbar(経過時間)
bossbar add timerbar "残り:<min>:<sec>"
bossbar set minecraft:timerbar players @a
bossbar set minecraft:timerbar max 1
bossbar set minecraft:timerbar color white
bossbar set minecraft:timerbar style notched_6
bossbar set minecraft:timerbar visible false
bossbar set minecraft:timerbar visible true

tellraw @a "[MEDAONI DATAPACK SYSTEM]\n初期設定が完了しました!\nなお、まだゲームを開始、また人を参加させないでください。"