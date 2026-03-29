function game:load
function item:load
function timer:load
function ender_chest:load
function armor_stand:load

scoreboard objectives add temporary dummy

gamerule advance_time false
gamerule advance_weather false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule immediate_respawn true
gamerule keep_inventory true

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"読み込みが終わりました", "color":"white"}]

# TODO: スタートコマンド
# TODO: 脱出システム
# TODO: アドミン用のコマンド
# TODO: 終了判定
