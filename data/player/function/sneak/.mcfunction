scoreboard players add @s sneaking 1

execute if score @s sneaking <= $EscapeSneaks settings run function player:sneak/actionbar

execute if score @s sneaking = $EscapeMinimum settings run function player:sneak/possible_escape
