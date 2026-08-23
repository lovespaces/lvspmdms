# tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color": "white", "text":"あなたは脱出に以下のアイテムが必要です: "}]
# $function log:escape/item with storage lovespaces:mdms EscapeItems[$(One)]
# $function log:escape/item with storage lovespaces:mdms EscapeItems[$(Two)]
execute store result storage lovespaces:mdms EscapeTemporary.One float 1 run scoreboard players get @s escape.one
execute store result storage lovespaces:mdms EscapeTemporary.Two float 1 run scoreboard players get @s escape.two

# function log:escape/ with storage lovespaces:mdms EscapeTemporary
function escape:storage/insert with storage lovespaces:mdms EscapeTemporary
function item:memos/innocent with storage lovespaces:mdms EscTemp
