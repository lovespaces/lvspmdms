function game:load
function item:load
function timer:load
function ender_chest:load
function armor_stand:load
function escape:load

function villager:update
function escape:storage/update

scoreboard objectives add temporary dummy

gamerule advance_time false
gamerule advance_weather false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule immediate_respawn true
gamerule keep_inventory true
gamerule mob_griefing false
gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule spawn_patrols false
gamerule spawn_phantoms false
gamerule spawn_wandering_traders false
gamerule spawn_wardens false
gamerule spawner_blocks_work false
gamerule locator_bar false

tellraw @a [{"text":"[ラブスペ人狼] ", "color":"red"}, {"text":"読み込みが終わりました", "color":"white"}]

# TODO: アドミン用のコマンド
# TODO: 終了判定
