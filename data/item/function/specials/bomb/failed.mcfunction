execute at @s run playsound entity.item.break master @s ~ ~ ~ 0.5

tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"すでに2人分の爆弾を仕掛けています。"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"起爆スイッチを押してから仕掛けることができます。"}]