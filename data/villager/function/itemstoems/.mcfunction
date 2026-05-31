scoreboard players add @s villager.escape_trade 1
$clear @s $(id) 1
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"この素材をくれるのか？ありがとうな。"}]
execute if score @s villager.escape_trade >= $HowManyEscapeTrades settings run return run function villager:itemstoems/give
execute at @s run playsound entity.villager.trade master @s ~ ~ ~
tellraw @s [{"color":"aqua","text":"[怪しい村人] "},{"color":"white","text":"もう何個かくれたらイイものをあげるぞ。"}]
