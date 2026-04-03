execute if entity @s[tag=player.HasIronHorseArmor] run return 0
clear @s potion[custom_data={MdmsItem:true, Invisible:true}]

execute if predicate item:already_invis run tag @s add adv.more_burp

execute at @s run playsound entity.player.burp master @a ~ ~ ~
effect give @s invisibility 15 2
tag @s add adv.burp
tag @s remove adv.actual_invis
scoreboard players add @s adv.drink_invis 1

function log:used {"item": "透明化のポーション"}
