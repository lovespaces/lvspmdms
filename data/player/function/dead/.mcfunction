function log:dead
playsound item.hoe.till master @a ^ ^ ^ 0.6 2
function summon:armor_stand/dead_body
spawnpoint @s ^ ^ ^
kill
clear
tag @s add Dead
execute if entity @s[team=witness] run function player:dead/witness
gamemode spectator
team join spectator @s
# TODO: ひとまずmurderが一人だけの処理
# あとから二人以上の場合も入れるようにしましょう
execute if entity @s[team=murder] run return 0
scoreboard players remove $Players stats 1
