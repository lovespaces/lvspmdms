execute if entity @a[team=detective] run return 0

scoreboard players set @a[team=!murder] bandage 0
scoreboard players set @a[team=!murder] attack 0

tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"目撃者", "color":"gray"}, {"text":" がいないため、全員が一発で死ぬようになります。"}]
tellraw @a [{"text": "", "bold": false}, {"color":"red","text":"[ラブスペ人狼] ", "bold": true}, {"text":"ですが、人狼側のナイフのCTに変化はありません。"}]