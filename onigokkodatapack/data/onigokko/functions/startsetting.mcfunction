#scoreboard
scoreboard objectives add system dummy
scoreboard objectives add deathcount deathCount
#scoreset
scoreboard players set $20 system 20
scoreboard players set $60 system 60
scoreboard players set $1200 system 1200
#title
title @a times 0t 20t 20t
scoreboard objectives add win dummy
scoreboard players set @a win 0
scoreboard objectives add kill minecraft.custom:minecraft.player_kills
scoreboard players set @a kill 0
#team
team add oni
team add ningen
team add taiki
team add spectator
team modify oni prefix "<鬼>"
team modify ningen prefix "<逃走者>"
team modify taiki prefix "<待機者>"
team modify spectator prefix "<観戦者>"
team modify oni color red
team modify ningen color gold
team modify taiki color blue
team modify spectator color yellow
team modify ningen friendlyFire false
team modify oni friendlyFire false
team modify taiki friendlyFire false
team modify ningen nametagVisibility hideForOtherTeams
team modify taiki nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams
#bossbar(経過時間)
bossbar add timerbar "残り:<min>:<sec>"
bossbar set minecraft:timerbar visible true
bossbar set minecraft:timerbar players @a
bossbar set minecraft:timerbar max 1
bossbar set minecraft:timerbar color white
bossbar set minecraft:timerbar style notched_6



