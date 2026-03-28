function game:load
function timer:load

gamerule advance_time false
gamerule advance_weather false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule immediate_respawn true
gamerule keep_inventory true

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"読み込みが終わりました", "color":"white"}]
