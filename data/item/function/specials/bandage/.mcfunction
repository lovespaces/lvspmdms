scoreboard players reset @s dropped.bandage

execute unless score @s attack matches ..0 run return run function item:specials/bandage/over

clear @s feather
kill @e[type=item, sort=nearest, limit=1]

execute if score @s bandage matches ..0 run return run function item:specials/bandage/failed

scoreboard players remove @s bandage 1
scoreboard players add @s attack 1

function log:used {"item": "包帯"}
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"もう一回耐えられるようになった！", "color":"white"}]
