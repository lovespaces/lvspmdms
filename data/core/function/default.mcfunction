# ワールド内でいじれる数値たち
scoreboard players set $MurderNum settings 1
scoreboard players set $ManiacNum settings 1

scoreboard players set $KeySeconds settings 60
scoreboard players set $MaxOpenKey settings 9
scoreboard players set $CrystallBall settings 20
scoreboard players set $HowManyTrashes settings 3
scoreboard players set $HowManyEscapeTrades settings 3
scoreboard players set $MinimumLostEms settings 4
scoreboard players set $EscapeSneaks settings 120
scoreboard players set $KnifeSeconds settings 140
scoreboard players set $KnifeShortSeconds settings 60

scoreboard players set $RoleEmerald settings 50
scoreboard players set $RoleKey settings -1
scoreboard players set $RoleTrash settings 100
scoreboard players set $RoleLostKey settings 40

scoreboard players set $InnocentEmerald settings 40
scoreboard players set $InnocentKey settings 70
scoreboard players set $InnocentTrash settings 100
scoreboard players set $InnocentLostKey settings 20

scoreboard players set $MegaphoneTimeLimit settings 600
scoreboard players set $MegaphoneInterval settings 400

scoreboard players set $ManiacBowCharging settings 301

scoreboard players set $SuddenDeathTick settings 1800

scoreboard players set $IsNearVoice settings 0

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"デフォルトのゲーム設定が反映されました", "color":"yellow"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"※デフォルトのゲーム設定は近距離チャットが無効化されます※", "color":"yellow"}]
