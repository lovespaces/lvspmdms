scoreboard players add @s sneaking 1
execute unless predicate item:already_invis run effect give @s regeneration 1 255

execute if score @s sneaking >= $ManiacBowCharging settings run return run function player:sneak/maniac/can_shoot

function player:sneak/xp {"objective": "$ManiacBowCharging"}