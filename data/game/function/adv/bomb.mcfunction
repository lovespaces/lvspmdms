#> game:adv/bomb
#
# bomb advancement function
#
# @within advancement game:bomb

advancement revoke @s only game:bomb
execute on attacker run clear @s firework_star

execute on attacker if score $Bombed stats matches 2.. run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text":"二人以上の市民に爆弾を仕掛けることはできません。", "color":"white"}]
execute on attacker if score $Bomb timer.system matches 0.. run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text":"起爆処理中です。利用できません。", "color":"white"}]
execute if entity @s[tag=player.Bombed] on attacker run return run tellraw @s [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text":"すでに爆弾を仕込んでいます。", "color":"white"}]

execute store result storage lovespaces:mdms bomb byte 1 run random value 9..35

loot give @s loot item:fake_item

tag @s add player.Bombed

execute on attacker run tag @s add player.Attacked
tellraw @a[tag=player.Attacked] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color": "yellow", "text":"[遠隔小型爆弾]"}, {"color":"white", "text":" を使用し、 "}, {"selector":"@s", "color":"yellow"}, {"color":"white", "text":" に爆弾を仕掛けました"}]
function log:attacked {"weapon": "遠隔小型爆弾"}
execute on attacker run tag @s remove player.Attacked

execute on attacker run clear @s redstone_torch
scoreboard players set $Switch timer.system 20