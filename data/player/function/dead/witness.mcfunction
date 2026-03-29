scoreboard players set $Phase stats 2

title @a[team=!witness] title {"text":"目撃者がいなくなった！", "color":"red"}
title @a[team=!witness] times 0s 3s 0s

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"目撃者の行方がわからなくなった。", "color":"white"}]
tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"殺人鬼はあなたを一撃で殺すようになるだろう..."}]

scoreboard players set @a[team=!murder] bandage 0
scoreboard players set @a[team=!murder] attack 0
execute as @a[team=detective] if score @s attack matches 2.. run scoreboard players set @s attack 1
playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 1.25

# TODO: ナイフを「血濡れたナイフ」に置き換える処理
# execute as @a[team=murder] run function item:special/role/powered_knife with entity @s Inventory[{id: "minecraft:iron_sword"}]
