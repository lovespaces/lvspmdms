title @a[team=murder] title ["あなたは ",{"color":"red","text":"人狼", "bold":true},{"color":"white","text":" です"}]
title @a[team=maniac] title ["あなたは ",{"color":"red","text":"狂人", "bold":true},{"color":"white","text":" です"}]
title @a[team=detective] title ["あなたは ",{"color":"aqua","text":"探偵", "bold":true},{"color":"white","text":" です"}]
title @a[team=witness] title ["あなたは ",{"color":"gray","text":"目撃者", "bold":true},{"color":"white","text":" です"}]
title @a[team=innocent] title ["あなたは ",{"text":"市民", "bold":true},{"color":"white","text":" です"}]

title @a[team=murder] subtitle "脱出を邪魔しつつ全員倒そう"
title @a[team=maniac] subtitle "市民と探偵の邪魔をしよう"
title @a[team=detective] subtitle "手がかりを見つけて殺人鬼を倒そう"
title @a[team=witness] subtitle "すべてのことに注意しつつ脱出を目指そう"
title @a[team=innocent] subtitle "殺人鬼に気をつけて脱出しよう"

tellraw @a[team=murder] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"人狼", "color":"red", "bold":true}, {"text":" です", "color":"white"}]
tellraw @a[team=maniac] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"狂人", "color":"red", "bold":true}, {"text":" です", "color":"white"}]
tellraw @a[team=detective] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"探偵", "color":"aqua", "bold":true}, {"text":" です", "color":"white"}]
tellraw @a[team=witness] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"目撃者", "color":"gray", "bold":true}, {"text":" です", "color":"white"}]
tellraw @a[team=innocent] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"市民", "color":"white", "bold":true}, {"text":" です", "color":"white"}]

execute unless score $MurderNum settings matches 2.. run return 0
tellraw @a[team=murder] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"selector":"@a[team=murder]","separator":", ", "color":"gold"}, {"text":"が今回の人狼です。", "color":"white"}]
tellraw @a[team=murder] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"※上記のメッセージは人狼同士のみ確認できます。※", "color":"gray"}]
