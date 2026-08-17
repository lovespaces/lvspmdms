playsound item.firecharge.use master @s ~ ~ ~ 0.5

tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"white", "text":"もうすぐで誰なのかわかりそうだったが、その前に灯りが消えてしまった。"}]
tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"yellow", "text":"[おぼろ灯] "}, {"color":"white", "text":"は目撃者を示しませんでした。"}]
