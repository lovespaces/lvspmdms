tag @a[team=!spectator] add CanBuyBow
tag @a[team=!spectator] add CanShootPlayers
execute as @a at @s run playsound block.enchantment_table.use master @s ~ ~ ~
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text": "探偵", "color": "aqua"}, {"text":" の行方がわからなくなった。", "color":"white"}]
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":" 生き残りのみんなは弓が買えるようになった。", "color":"white"}]
scoreboard players set $IsDetectiveDead stats 1