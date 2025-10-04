#> timer:update/item/give_switch
#
# @within timer:update/

scoreboard players reset $Switch timer.system

execute unless score $Switch timer.system matches 0 run return 0

execute as @a[team=murder] at @s run playsound entity.player.levelup master @s ~ ~ ~
give @a[team=murder] redstone_torch[custom_name={"color":"red","text":"起爆装置"},lore=[[{"color":"yellow","italic":false,"text":"[投]"},{"color":"white","italic":false,"text":" 使用して5秒後に起爆する。"}]],enchantment_glint_override=true] 1
tellraw @a[team=murder] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"[起爆装置]"}, {"color":"white", "text":" を手に入れた"}]
tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color": "yellow", "selector":"@a[team=murder]"}, {"color":"white", "text":" が"}, {"color":"yellow", "text":" [起爆装置]"}, {"color":"white", "text":" を手に入れました"}]