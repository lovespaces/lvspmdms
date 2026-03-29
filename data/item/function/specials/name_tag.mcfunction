scoreboard players reset @s dropped.dead_report
clear @s name_tag
kill @e[type=item, sort=nearest, limit=1]
function log:used {"item": "インシデント・レポート"}

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"死亡が確認されている人物は以下の通りです。\n"}, {"selector":"@a[tag=Dead]", "separator":" , ", "color":"yellow"}]
