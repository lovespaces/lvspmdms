function game:end/win/
title @a title {"text":"人狼の勝ち！", "color":"red", "bold":true}
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"color":"red", "text":"人狼の勝ち！"}]
tag @a[tag=Murder] add adv.mur.win

tag @a remove adv.det.nothing
tag @a remove adv.defeat_murder
tag @a remove adv.det.rta
execute as @a[tag=!BadGuys] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.3
execute as @a[tag=BadGuys] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.3