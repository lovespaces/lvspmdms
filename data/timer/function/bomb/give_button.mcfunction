scoreboard players remove @s timer.bomb 1

execute unless score @s timer.bomb matches ..0 run return 0

tag @s remove QueueBombButton
give @s redstone_torch[enchantment_glint_override=true,custom_name={"color":"red","italic":false,"text":"爆弾のスイッチ"},lore=[{"color":"yellow","italic":false,"text":"※人狼・狂人限定アイテム※"},[{"color":"yellow","italic":false,"text":"[投] "},{"color":"gray","italic":false,"text":"投げてから4秒後に市民に仕掛けた爆弾が発動する。"}],{"color":"gray","italic":false,"text":"投げてから、市民が爆弾を解除するとその爆弾は発動しない。"}]] 1
function log:get_item {"item": "爆弾のスイッチ"}
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"[爆弾のスイッチ]", "color": "yellow"}, {"text":" を投げることで爆発を起こす事ができます。"}]
tellraw @s [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"なお、投げてから爆発するまで4秒の遅延があります。"}]
