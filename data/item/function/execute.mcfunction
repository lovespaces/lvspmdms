execute if score @s dropped.dead_report matches 1.. run function item:specials/name_tag
execute if score @s dropped.amulet matches 1.. run function item:specials/amulet/
execute if score @s dropped.bandage matches 1.. run function item:specials/bandage/
execute if score @s dropped.crystall_ball matches 1.. run function item:specials/lantern/
execute if score @s dropped.hopper matches 1.. run function item:specials/megaphone/
execute if score @s dropped.paper matches 1.. run function item:specials/paper

execute if predicate item:has_invis run function item:specials/potion/invisible
execute if score @s used.splash matches 1.. run function item:specials/potion/splash
execute if score @s used.lingering matches 1.. run function item:specials/potion/lingering
