#> core:scoreboard/default
#
# scoreboard default
#
# @public

# ワールド内でいじれる数値たち
scoreboard players set $GiveKeySeconds game.settings 3
scoreboard players set $MaxOpenKey game.settings 9
scoreboard players set $InnocentEmerald game.settings 50
scoreboard players set $RoleEmerald game.settings 75
scoreboard players set $InnocentKeyItem game.settings 50
scoreboard players set $InnocentTrash game.settings 0
scoreboard players set $MurderLostKey game.settings 15
scoreboard players set $InnocentLostKey game.settings 30

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"デフォルトのゲーム設定が反映されました", "color":"yellow"}]