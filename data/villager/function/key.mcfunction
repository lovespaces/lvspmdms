advancement revoke @s only villager:talk_to_villager
execute unless entity @s[tag=LostKey] run return 0

tag @s remove LostKey
tellraw @s [{"text":"[村人] ", "color": "yellow"}, {"text":"この鍵が落ちてたんですが、あなたのものですか？"}]
function item:key