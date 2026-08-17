scoreboard players reset @s dropped.paper
execute unless entity @s[team=murder] run return 0
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"あなたの仲間は以下の通りです。\n"}, {"selector":"@a[tag=Murder]", "separator":" , ", "color":"yellow"}]
