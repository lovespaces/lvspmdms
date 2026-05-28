function item:kill
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"現在の参加者は以下の通りです。", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"観戦者: ", "color":"gray"}, {"selector":"@a[tag=Spectator]", "separator":", ", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"参加者: ", "color":"white"}, {"selector":"@a[tag=!Spectator]", "separator":", ", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
