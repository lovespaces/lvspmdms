function game:end/win/murder

title @a subtitle [{"text":"ALL", "color":"dark_purple", "obfuscated":true}, {"text":" WORST END ", "color":"light_purple", "bold":true, "obfuscated":false}, {"text":"KIL", "color":"dark_purple", "obfuscated":true}]
tellraw @a[team=!detective] [{"color":"red", "text":"[ラブスペ人狼] "}, {"color": "light_purple", "text":"一連の事件の真犯人は探偵だったようだ"}]
tellraw @a[team=detective] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"運営よりささやかれました: ", "color":"gray"}, {"text": "マジでなにしてんの？", "color":"white", "italic":true}]
