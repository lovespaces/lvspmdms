#> timer:update/player/check

execute if score @s timer.totem matches 0.. run function timer:update/item/totem

execute if score @s timer.iron_horse_armor matches 0.. run function timer:update/item/amulet_iron

execute if score $Phase stats matches 1.. if score $Seconds timer.system matches ..0 as @s[tag=!player.AFK] run function item:emerald/

execute unless score @s timer.give_item matches 0.. run return 0

execute if predicate role:is_murderer run function timer:update/player/give/murder
execute if predicate role:is_can_buy_bow run function timer:update/player/give/detective