
function game:reset
clear @a

effect give @a resistance infinite 255 true
effect clear @a[team=spectator]

gamemode adventure @a
gamemode spectator @a[team=spectator]

scoreboard players set @a is_playing 1
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームが始まります。"}]

function player:team
function game:setup/scoreboard
scoreboard players set $Phase stats 0
scoreboard players set $Phase timer 300
scoreboard objectives setdisplay sidebar

execute as @a[team=innocent] run function escape:setup/
execute as @a[team=witness] run function escape:setup/
