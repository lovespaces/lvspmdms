#> role:dead/witness
#
# @within game:player/dead

scoreboard players set $Phase stats 2

title @a[team=!witness] title {"text":"目撃者がいなくなった！", "color":"red"}
title @a[team=!witness] times 0s 3s 0s

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"目撃者の行方がわからなくなった。", "color":"white"}]
tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"殺人鬼はあなたを一撃で殺すようになるだろう..."}]

scoreboard players set @a[tag=!player.Spectator] player.stung 0
playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 1.25

execute as @a[team=murder] run function item:special/role/powered_knife with entity @s Inventory[{id: "minecraft:iron_sword"}]