
function game:reset
clear @a

effect give @a resistance infinite 255 true
effect clear @a[tag=player.Spectator]

gamemode adventure @a
gamemode spectator @a[tag=player.Spectator]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームが始まります。"}]

function player:team
# function core:scoreboard/set
scoreboard players set $Phase stats 0
scoreboard players set $Phase timer 300

# execute as @a[team=innocent] run function item:escape/set
# execute as @a[team=witness] run function item:escape/set
