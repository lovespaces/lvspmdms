# on attacker、もしくは攻撃者に向けたコマンドを想定しています
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[守護のお守り] ", "color":"yellow"}, {"text":"を使っているようだ...", "color":"white"}]
execute at @s run playsound block.anvil.place master @s ~ ~ ~ 0.7
