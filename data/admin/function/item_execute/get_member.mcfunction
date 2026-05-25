kill @s
execute at @s run item replace entity @a[tag=Admin, sort=nearest, limit=1] weapon.mainhand with paper[custom_name={"color":"yellow","italic":false,"text":"参加者の取得"},lore=[[{"text": "", "italic":false},{"color":"gold","text":"[投] "},{"color":"white","text":"現在の観戦者／参加者を取得する紙"}]],custom_data={IsGetMember:1b},enchantment_glint_override=true] 1
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"現在の参加者は以下の通りです。", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"観戦者: ", "color":"gray"}, {"selector":"@a[tag=Spectator]", "separator":", ", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"参加者: ", "color":"white"}, {"selector":"@a[tag=!Spectator]", "separator":", ", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":""}]
