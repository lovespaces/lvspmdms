execute unless entity @s[tag=CanEscape] run return 0
execute if score @s sneaking matches 0 run function log:escape/started
scoreboard players add @s sneaking 1
tag @s add Escaping

execute if score @s sneaking <= $EscapeSneaks settings run function player:sneak/xp {"objective": "$EscapeSneaks"}

execute if score @s sneaking = $EscapeSneaks settings run function player:sneak/possible_escape
