clear @s totem_of_undying
execute at @s run playsound entity.item.break master @s ~ ~ ~
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りは、効果を表さずに壊れてしまった...", "color":"white"}]
