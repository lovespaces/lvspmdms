# TODO: 2秒後にまだ残っているトーテムも消費
execute unless score @s attack matches ..0 run return run function item:specials/totem/failed
function log:used {"item":"神秘的なお守り"}
effect give @s instant_damage 1 2
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りの影響で死を免れた！", "color":"white"}]
execute on attacker run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りの影響で攻撃が防がれたようだ。", "color":"white"}]
