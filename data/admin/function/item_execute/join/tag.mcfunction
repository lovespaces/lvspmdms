tellraw @s [{"text":"", "bold": false}, {"text":"[ラブスペ人狼] ", "color":"red", "bold":true}, {"text":"参加/不参加を切り替えました", "color":"yellow"}]
$tag @s $(method) Spectator
execute if entity @s[tag=Spectator] run tellraw @s [{"text":"", "bold": false}, {"text":"[ラブスペ人狼] ", "color":"red", "bold":true}, {"text":"現在、あなたは", "color":"white"}, {"text":"観戦者", "color":"yellow"}, {"text":"状態となっています", "color":"white"}]
execute if entity @s[tag=!Spectator] run tellraw @s [{"text":"", "bold": false}, {"text":"[ラブスペ人狼] ", "color":"red", "bold":true}, {"text":"現在、あなたは", "color":"white"}, {"text":"参加", "color":"yellow"}, {"text":"状態となっています", "color":"white"}]
