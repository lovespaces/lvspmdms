tag @a[team=!spectator] add CanBuyBow
tag @a[team=!spectator] add CanShootPlayers
execute as @a at @s run playsound block.enchantment_table.use master @s ~ ~ ~
tellraw @a [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text": "探偵", "color": "aqua"}, {"text":" の行方がわからなくなった。", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color": "red"}, {"text":" 生き残りのみんなは弓が買えるようになった。", "color":"white"}]
