#> log:role/start
#
# role start log

title @a[team=murder] title ["あなたは ",{"color":"red","text":"殺人鬼"},{"color":"white","text":" です"}]
title @a[team=detective] title ["あなたは ",{"color":"aqua","text":"探偵"},{"color":"white","text":" です"}]
title @a[team=witness] title ["あなたは ",{"color":"gray","text":"目撃者"},{"color":"white","text":" です"}]
title @a[team=innocent] title "あなたは 市民 です"

title @a[team=murder] subtitle "脱出を邪魔しつつ全員倒そう"
title @a[team=detective] subtitle "手がかりを見つけて殺人鬼を倒そう"
title @a[team=witness] subtitle "すべてのことに注意しつつ脱出を目指そう"
title @a[team=innocent] subtitle "殺人鬼に気をつけて脱出しよう"

title @a times 0s 3s 1s

tellraw @a[team=murder] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"殺人鬼", "color":"red"}, {"text":" です", "color":"white"}]
tellraw @a[team=detective] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"探偵", "color":"aqua"}, {"text":" です", "color":"white"}]
tellraw @a[team=witness] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"目撃者", "color":"gray"}, {"text":" です", "color":"white"}]
tellraw @a[team=innocent] [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"あなたは ", "color":"white"}, {"text":"市民", "color":"white"}, {"text":" です", "color":"white"}]