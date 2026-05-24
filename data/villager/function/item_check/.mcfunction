advancement revoke @s only villager:trade
execute unless entity @s[advancements={villager:special_trade=true}] run return 0
advancement revoke @s only villager:special_trade
tag @a remove adv.not_trade

function villager:item_check/duplicate/bomb
function villager:item_check/duplicate/bow
function villager:item_check/duplicate/crystal_ball
function villager:item_check/duplicate/knife
function villager:item_check/duplicate/arrow
function villager:item_check/duplicate/hopper
