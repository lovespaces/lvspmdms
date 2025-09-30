#> mdms:item/firework_star/unlock

tag @s remove player.Bombed

execute as @s at @s run playsound block.iron_door.open master @s ~ ~ ~

tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"爆弾を見つけて、解除した！"}]
tellraw @a[tag=player.Spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "selector":"@s"}, {"color":"white", "text":" がインベントリー内の爆弾を見つけて解除しました"}]
tellraw @a[team=murder] [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"仕掛けた一人から爆弾に気づかれ、解除されてしまいました"}]

execute if entity @a[tag=player.Bombed] run return 0

clear @a[team=murder] redstone_torch
tellraw @a[team=murder] [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"仕掛けた市民全員が爆弾に気づき、解除したようだ"}]
