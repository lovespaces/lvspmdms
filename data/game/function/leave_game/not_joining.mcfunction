gamemode spectator
clear @s
function core:reset_tag
team join spectator @s
scoreboard players set @s is_playing 1
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"selector":"@s", "color":"yellow"}, {"text":" はこの試合に参加していないため、観戦者となります。", "color":"white"}]
function log:spectator
