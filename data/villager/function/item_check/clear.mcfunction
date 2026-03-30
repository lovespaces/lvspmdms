$clear @s $(item)
$give @s emerald $(count)

$tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"あなたには "}, {"color":"yellow", "text":"[$(name)]"}, {"color":"white", "text":" を持つ資格がありません。"}]

execute at @s run playsound block.anvil.place master @s ~ ~ ~ 0.25
