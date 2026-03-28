execute if entity @s[tag=IronHorse] run return run function item:specials/amulet/failed

tag @s add IronHorse
execute at @s run playsound block.anvil.place master @a ~ ~ ~

function log:used {"item": "守護のお守り"}
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text": "[守護のお守り] ", "color":"yellow"}, {"text":"を使用した！\n10秒間何もできない代わりにダメージを無効化するようになった！", "color":"white"}]
