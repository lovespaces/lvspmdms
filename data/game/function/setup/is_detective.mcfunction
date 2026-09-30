execute if entity @a[team=detective] run return 0

tag @a[team=!spectator] add CanBuyBow
tag @a[team=!spectator] add CanBuyBow
scoreboard players set $IsDetectiveDead stats 1
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"探偵", "color":"aqua"}, {"text":" がいないため、全員が弓を撃てるようになります。"}]