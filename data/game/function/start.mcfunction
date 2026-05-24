gamerule show_advancement_messages false
gamerule send_command_feedback false
function game:reset
clear @a

team join spectator @a[tag=Spectator]

effect give @a resistance infinite 255 true
effect clear @a[team=spectator]

gamemode adventure @a
gamemode spectator @a[team=spectator]
execute if score $IsNearVoice settings matches 1.. run function game:setup/nearchat

scoreboard players set @a is_playing 1
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"10秒後にゲームが始まります。"}]

function player:team
function game:setup/scoreboard
scoreboard players set $Phase stats 0
scoreboard players set $Phase timer 300
scoreboard objectives setdisplay sidebar

execute as @a run function ender_chest:clear/fill

execute as @a run function game_advancements:start

scoreboard players reset @a be_spectator

execute as @a[team=spectator] run function log:spectator
