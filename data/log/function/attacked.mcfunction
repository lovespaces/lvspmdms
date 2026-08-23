title @s actionbar [{"color":"yellow","selector":"@a[tag=AttackTemporary]"}, {"text":" に当たった！", "color":"white"}]
title @s times 0s 3s 1s
$tellraw @a[team=spectator] [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true},{"color":"yellow","selector":"@a[tag=AttackTemporary]"},{"color":"white","text":" → "},{"color":"yellow","selector":"@s"},{"color":"white","text":" ($(weapon))"}]
