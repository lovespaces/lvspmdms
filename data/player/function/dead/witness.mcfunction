execute if score $Phase stats matches 2.. run return 0

scoreboard players set $Phase stats 2

title @a title {"text":"目撃者がいなくなった！", "color":"red"}
title @a times 0s 3s 0s

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"目撃者の行方がわからなくなった。", "color":"white"}]
tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"text":"人狼はあなたを一撃で殺すようになるだろう..."}]

scoreboard players set @a[team=!murder] bandage 0
scoreboard players set @a[team=!murder] attack 0
execute as @a[team=detective] if score @s attack matches 2.. run scoreboard players set @s attack 1
playsound minecraft:entity.ghast.ambient master @s ~ ~ ~ 1.25
tag @s remove adv.wit.escape_with_lantern
tag @s remove adv.actual_invis
