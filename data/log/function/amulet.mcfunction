#> log:amulet
#
# @within item:special/amulet/

function log:used {"item": "守護のお守り"}
execute on attacker run tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"攻撃が弾かれてしまった", "color": "white"}]