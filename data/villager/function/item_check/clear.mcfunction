$clear @s $(item)
$give @s emerald[lore=[{"color":"white","italic":false,"text":"普通のエメラルド。"}," ",{"color":"white","italic":false,"text":"村人とのアイテム交換に使用ができる。"}," ",{"color":"red","italic":false,"text":"人狼・狂人は、エメラルドをインベントリの"},{"color":"red","italic":false,"text":"クラフト欄に入れることで、脱出アイテムを"},{"color":"red","italic":false,"text":"ランダムで入手することができる。"}]] $(count)

$tellraw @s [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"あなたには "}, {"color":"yellow", "text":"[$(name)]"}, {"color":"white", "text":" を持つ資格がありません。"}]

execute at @s run playsound block.anvil.place master @s ~ ~ ~ 0.25
