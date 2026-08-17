tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}]
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"今回の役職割り当ては以下のとおりです。", "color":"white"}]
function log:admin/role
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}]
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"あなたは現在観戦者です。", "color":"white"}]
execute if score $IsNearVoice settings matches 0 run tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"生存しているプレイヤーと通話している場合は、ミュートにしてください。", "bold":true, "color":"white"}]
tellraw @s [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"あなたが送るチャットは同じ観戦者にのみ表示されます。", "color":"white"}]
