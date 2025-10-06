#> tp:lobby
#
# @public

tp @a @e[limit=1, type=armor_stand, tag=as.Lobby]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"color":"white", "text":"ロビーに移動しました"}]