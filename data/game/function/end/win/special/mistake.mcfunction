function game:end/win/murder

title @a subtitle {"text":"誰も探偵を信用できない", "color":"aqua"}
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"aqua", "text":"探偵の誤射が人狼の手助けになったようだ"}]
