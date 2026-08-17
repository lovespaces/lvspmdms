clear @s totem_of_undying
execute at @s run playsound entity.item.break master @s ~ ~ ~
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"お守りは、効果を表さずに壊れてしまった...", "color":"white"}]
