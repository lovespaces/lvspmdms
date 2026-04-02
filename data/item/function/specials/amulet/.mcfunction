scoreboard players reset @s dropped.amulet
execute if entity @s[tag=IronHorse] run return run function item:specials/amulet/failed
kill @e[type=item, sort=nearest, limit=1]

tag @s add IronHorse
tag @s add adv.used_ironhorse
scoreboard players set @s timer.iron_horse 200
execute at @s run playsound block.anvil.place master @a ~ ~ ~

function log:used {"item": "守護のお守り"}
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text": "[守護のお守り] ", "color":"yellow"}, {"text":"を使用した！\n10秒間何もできない代わりにダメージを無効化するようになった！", "color":"white"}]
