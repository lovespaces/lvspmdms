#> log:role/end
#
# role end log

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"役職一覧"}]
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"死んだプレイヤーは灰色、脱出したプレイヤーは黄色で表示されます。"}]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"text":"殺人鬼: "}, {"color":"white", "selector":"@a[team=murder, tag=!player.Dead]"}, {"color":"white", "text":", "}, {"color": "gray", "selector":"@a[team=murder, tag=player.Dead]"}]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"aqua", "text":"探偵: "}, {"color":"white", "selector":"@a[team=detective, tag=!player.Dead]"}, {"color":"white", "text":", "}, {"color": "gray", "selector":"@a[team=detective, tag=player.Dead]"}]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"yellow", "text":"目撃者: "}, {"color":"white", "selector":"@a[team=witness, tag=!player.Dead]"}, {"color":"white", "text":", "}, {"color": "gray", "selector":"@a[team=witness, tag=player.Dead]"}, {"color":"white", "text":", "}, {"color": "yellow", "selector":"@a[team=witness, tag=player.Escaped]"}]

tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"white", "text":"市民: "}, {"color":"white", "selector":"@a[team=innocent, tag=!player.Dead]"}, {"color":"white", "text":", "}, {"color": "gray", "selector":"@a[team=innocent, tag=player.Dead]"}, {"color":"white", "text":", "}, {"color": "yellow", "selector":"@a[team=innocent, tag=player.Escaped]"}, "\n"]