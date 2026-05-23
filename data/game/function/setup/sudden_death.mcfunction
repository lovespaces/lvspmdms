execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.1

execute store result bossbar lovespaces:mdms_end_timer max run scoreboard players get $SuddenDeathTick settings
execute store result bossbar lovespaces:mdms_end_timer value run scoreboard players get $SuddenDeathTick settings
bossbar set lovespaces:mdms_end_timer players @a
bossbar set lovespaces:mdms_end_timer visible true
scoreboard players operation $SuddenDeath timer = $SuddenDeathTick settings

title @a times 0s 5s 1s
title @a title [{"text":"サドンデス開始", "color":"red"}]
title @a subtitle [{"text":"1分30秒後、ゲームが強制終了します"}]

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"生存者が残り僅かになったため、サドンデスを開始しました。"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"1分30秒後までにゲームが終了しない場合は、"}, {"color": "white", "text":"マップ内の生存者（探偵・黒側を除く）が全員死亡し、ゲームが強制終了します。", "bold": true}]
