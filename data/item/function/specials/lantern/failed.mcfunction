playsound entity.ghast.warn master @s ~ ~ ~ 0.75

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"もうすぐで誰かがわかりそうだったが、その前に灯りが消えてしまった。"}]
tellraw @a[gamemode=spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"[おぼろ灯] "}, {"color":"white", "text":"は目撃者を示しませんでした。"}]
