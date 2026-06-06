function item:kill
execute if score $IsNearVoice settings matches 0 run return run tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"現在、近距離チャットは ", "color": "white"}, {"text":"無効" ,"color":"gold"}, {"text":" となっています。", "color":"white"}]
tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"現在、近距離チャットは ", "color": "white"}, {"text":"有効" ,"color":"gold"}, {"text":" となっています。", "color":"white"}]
tellraw @a [{"color":"red","text":"[ラブスペ人狼] "},{"color":"white","text":"Simple Voice Chatを利用するか、 "},{"click_event":{"action":"open_url","url":"https://discord.gg/dxXF8qEYD4"},"color":"blue","text":"[Discord]"},{"color":"white","text":" の #information を読んで近距離ボイチャができるようにしてください。"}]
