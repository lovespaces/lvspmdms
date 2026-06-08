$scoreboard players operation @s temporary.percentage = @s $(prc_scoreboard)
scoreboard players operation @s temporary.percentage *= $100 temporary.percentage
$scoreboard players operation @s temporary.percentage /= $$(set_scoreboard) settings

$title @s actionbar [{"color":"yellow","text":"$(text) "},{"color":"gold","score":{"name":"@s","objective":"temporary.percentage"}},{"color":"yellow","text":"%"}]
title @s times 0s 2s 1s
