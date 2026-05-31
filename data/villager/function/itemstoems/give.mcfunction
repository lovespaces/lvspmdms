execute at @s run playsound entity.player.levelup master @s ~ ~ ~
execute at @s run playsound entity.villager.celebrate master @s ~ ~ ~
give @s emerald[lore=[{"color":"white","italic":false,"text":"普通のエメラルド。"}," ",{"color":"white","italic":false,"text":"村人とのアイテム交換に使用ができる。"}," ",{"color":"red","italic":false,"text":"人狼・狂人は、エメラルドをインベントリの"},{"color":"red","italic":false,"text":"クラフト欄に入れることで、脱出アイテムを"},{"color":"red","italic":false,"text":"ランダムで入手することができる。"}]] 1
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"素材を "},{"color":"green","score":{"name":"@s","objective":"villager.escape_trade"}},{"color":"white","text":"つもくれるとは..."}]
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"これは感謝の意だ... エメラルドを一つあげるよ。"}]
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"また集めてくれたらまたあげるからな。"}]
scoreboard players set @s villager.escape_trade 0
