#> summon:villager/special
#
# we use villager.SpecialItems
# メモ: dataコマンドを活用すればupdate.mcfunctionで一括に村人の交易を変えられるかも知れない。革命だ！
#
# @public

summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["villager.SpecialItems"],CustomName:{"color":"yellow","text":"特殊アイテム"},VillagerData:{profession:"minecraft:librarian"},Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:barrier",count:1},sell:{id:"minecraft:barrier",count:1}}]}}