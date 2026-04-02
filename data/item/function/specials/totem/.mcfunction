execute unless score @s attack matches ..0 run return run function item:specials/totem/failed
function log:used {"item":"神秘的なお守り"}
effect give @s instant_damage 1 2
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りの影響で死を免れた！", "color":"white"}]
execute on attacker run tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"お守りの影響で攻撃が防がれたようだ。", "color":"white"}]
scoreboard players set @s timer.totem 40
tag @s add UsedTotem

tag @s add adv.totem
scoreboard players add @s adv.totemcount 1

execute if score @s adv.totemcount matches 3 run tag @s add adv.third_totem
