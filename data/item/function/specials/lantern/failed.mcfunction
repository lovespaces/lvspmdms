playsound item.firecharge.use master @s ~ ~ ~ 0.5

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"もうすぐで誰なのかわかりそうだったが、その前に灯りが消えてしまった。"}]
tellraw @a[team=spectator] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"[おぼろ灯] "}, {"color":"white", "text":"は目撃者を示しませんでした。"}]
