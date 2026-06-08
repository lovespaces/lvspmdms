execute unless entity @s[tag=CanEscape] run return 0
scoreboard players add @s sneaking 1
tag @s add Escaping

execute if score @s sneaking <= $EscapeSneaks settings run function player:sneak/actionbar {"text": "準備中...", "prc_scoreboard": "sneaking", "set_scoreboard": "EscapeSneaks"}

execute if score @s sneaking = $EscapeSneaks settings run function player:sneak/possible_escape
