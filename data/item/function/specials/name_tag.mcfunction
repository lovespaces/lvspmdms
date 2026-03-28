scoreboard players reset @s dropped.dead_report
clear @s name_tag
function log:used {"item": "インシデント・レポート"}

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"死亡が確認されている人物は以下の通りです。"}, {"selector":"@a[gamemode=spectator]", "separator":" , ", "color":"yellow"}]
