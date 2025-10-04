#> game:afk/
#
# game afk system
# 
# @within game:

execute unless predicate game:is_afk run tag @s remove player.AFK
execute unless predicate game:is_afk run return run scoreboard players reset @s timer.afk

scoreboard players add @s timer.afk 1
execute if score @s timer.afk = $Limit timer.afk run tag @s add player.AFK
title @a[tag=player.AFK] actionbar {"text": "※放置中はアイテムがもらえません※", "color": "red"}