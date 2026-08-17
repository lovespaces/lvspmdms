gamemode spectator
clear @s
function core:reset_tag
team join spectator @s
scoreboard players set @s is_playing 2
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"selector":"@s", "color":"yellow"}, {"text":" はこの試合に参加していないため、観戦者となります。", "color":"white"}]
function log:spectator
scoreboard players reset @a be_spectator
