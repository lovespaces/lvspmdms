function game:end/win/
title @a title {"text":"人狼の勝ち！", "color":"red"}
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"red", "text":"人狼の勝ち！"}]
tag @a[tag=Murder] add adv.mur.win

tag @a remove adv.det.nothing
tag @a remove adv.defeat_murder
tag @a remove adv.det.rta