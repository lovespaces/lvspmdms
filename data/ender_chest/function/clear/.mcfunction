execute if items entity @s player.cursor barrier run return run function ender_chest:clear/none
execute if items entity @s player.cursor gray_stained_glass_pane run return run function ender_chest:clear/delete
execute if items entity @s container.* barrier run return run function ender_chest:clear/none
execute if items entity @s container.* gray_stained_glass_pane run return run function ender_chest:clear/delete
execute if items entity @s weapon.offhand barrier run return run function ender_chest:clear/none
execute if items entity @s weapon.offhand gray_stained_glass_pane run return run function ender_chest:clear/delete
execute unless items entity @s enderchest.13 * run item replace entity @s enderchest.13 with barrier[custom_name={"color":"yellow","italic":false,"text":"取得不可"},lore=[{"color":"gray","italic":false,"text":"現在、このエンダーチェストから"},{"color":"gray","italic":false,"text":"アイテムを入手することはできません。"}," ",{"color":"gray","italic":false,"text":"他のエンダーチェストを"},{"color":"gray","italic":false,"text":"開けてください。"}]] 1
