kill @s
scoreboard players add $IsNearVoice settings 1
execute at @s run item replace entity @a[tag=Admin, sort=nearest, limit=1] weapon.mainhand with paper[custom_name={"color":"yellow","italic":false,"text":"近距離ボイチャ"},lore=[[{"text": "", "italic":false},{"color":"gold","text":"[投] "},{"color":"white","text":"近距離ボイチャのオン／オフをする紙"}]],custom_data={IsVoiceSetting:1b},enchantment_glint_override=true] 1
execute if score $IsNearVoice settings matches 2 run return run function admin:item_execute/voice/
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"近距離チャットを ", "color":"white"}, {"text":"オン", "color":"gold", "bold":true}, {"text":" にしました。", "color":"white"}]
tellraw @a [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"Simple Voice Chatを利用するか、 "},{"click_event":{"action":"open_url","url":"https://discord.gg/dxXF8qEYD4"},"color":"blue","text":"[Discord]"},{"color":"white","text":" の #information を読んで近距離ボイチャができるようにしてください。"}]
