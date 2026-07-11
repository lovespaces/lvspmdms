xp set @s 100 levels
function escape:check/store

execute store result score @s temporary run function escape:check/key with storage lovespaces:mdms

execute unless score @s temporary matches 1 run return run function log:escape/you_cant

tag @s add adv.secret3.escape
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"脱出できるようになった！何も持たずに看板を押して脱出しよう", "color":"white"}]


execute if score $Escaped stats < $EscapeMinimum stats run function log:tips/dont_escape_early
