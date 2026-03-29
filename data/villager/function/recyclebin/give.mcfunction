execute at @s run playsound entity.villager.celebrate master @s ~ ~ ~
$give @s emerald $(TrashCount)
$clear @s *[custom_data={MdmsItem:true, Trash:true}] $(ClearTrashes)
execute at @s run playsound entity.player.levelup master @s ~ ~ ~
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"よくゴミを集めてくれたな... エメラルド "},{"color":"green","score":{"name":"@s","objective":"temporary"}},{"color":"white","text":" 個と交換だ。"}]
scoreboard players reset @s temporary
