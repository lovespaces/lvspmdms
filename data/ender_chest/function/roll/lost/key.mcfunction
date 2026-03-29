# TODO: 鍵を手に入れるタイマーをナシにする
execute at @s run playsound entity.item.break master @s ~ ~ ~ 0.5

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"鍵が壊れてしまった。村人から新しい鍵をもらおう", "color":"white"}]
