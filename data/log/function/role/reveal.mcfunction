title @a[team=!spectator] title {"text":"GAME START"}
title @a[team=!spectator] subtitle [{"text":"[人狼メモ]", "color":"light_purple", "bold": true}, {"text":" を確認してください", "color":"white"}]

tellraw @a [{"text":"[ラブスペ人狼] ", "bold": true, "color":"red"}, {"text":"ゲームを開始します。", "color":"white", "bold": false}]
tellraw @a[team=!spectator] [{"text":"[ラブスペ人狼] ", "bold": true, "color":"red"}, {"text":"配布された ", "color":"white", "bold": false}, {"text": "[人狼メモ]", "color":"light_purple", "bold": false}, {"text":" の説明を読んで、 [役職] と [脱出に必要なアイテム] を確認してください", "color":"white", "bold": false}]