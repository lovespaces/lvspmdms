execute at @s run playsound entity.villager.celebrate master @s ~ ~ ~
$give @s emerald[lore=[{"color":"white","italic":false,"text":"普通のエメラルド。"}," ",{"color":"white","italic":false,"text":"村人とのアイテム交換に使用ができる。"}," ",{"color":"red","italic":false,"text":"人狼・狂人は、エメラルドをインベントリの"},{"color":"red","italic":false,"text":"クラフト欄に入れることで、脱出アイテムを"},{"color":"red","italic":false,"text":"ランダムで入手することができる。"}]] $(TrashCount)
$clear @s *[custom_data={MdmsItem:true, Trash:true}] $(ClearTrashes)
scoreboard players add @s adv.trashcount 1
execute at @s run playsound entity.player.levelup master @s ~ ~ ~
$tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"よくゴミを集めてくれたな... エメラルド "},{"color":"green","text": "$(TrashCount)"},{"color":"white","text":" 個と交換だ。"}]
scoreboard players reset @s temporary

tag @s add adv.trash
execute if score @s adv.trashcount matches 5.. run tag @s add adv.lot_trashes
