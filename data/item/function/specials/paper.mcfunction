scoreboard players reset @s dropped.paper
execute unless entity @s[team=murder] run return 0
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたの仲間は以下の通りです。\n"}, {"selector":"@a[tag=Murder]", "separator":" , ", "color":"yellow"}]
