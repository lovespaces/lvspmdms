$tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[$(item)]", "color":"yellow"}, {"text":" を入手した。", "color":"white"}]
$tellraw @a[team=spectator] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"yellow","selector":"@s"}, {"text":" が ", "color":"white"}, {"text":"[$(item)] ", "color":"yellow"}, {"text":"を入手", "color":"white"}]
