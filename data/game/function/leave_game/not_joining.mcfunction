gamemode spectator
clear @s
function core:reset_tag
team join spectator @s
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"selector":"@s", "color":"yellow"}, {"text":" はこの試合に参加していないため、観戦者となります。", "color":"white"}]
