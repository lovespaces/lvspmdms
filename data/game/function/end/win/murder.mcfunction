function game:end/win/
title @a title {"text":"人狼の勝ち！", "color":"red"}
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"red", "text":"人狼の勝ち！"}]
tag @a[tag=Murder] add adv.mur.win

tag @a remove adv.det.nothing
tag @a remove adv.defeat_murder
tag @a remove adv.det.rta