advancement revoke @s only item:drink_invis
clear @s glass_bottle
function log:used {"item": "透明化のポーション"}
tag @s add adv.actual_invis
scoreboard players add @s adv.drink_invis 1
