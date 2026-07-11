function game:load
function game_advancements:load
function item:load
function timer:load
function ender_chest:load
function armor_stand:load
function escape:load
function villager:load
function player:load

function villager:update
function escape:storage/update

scoreboard objectives add temporary dummy
scoreboard objectives add is_playing dummy
# first_joinはリセットしません
scoreboard objectives add first_join custom:play_time

scoreboard objectives add be_spectator trigger "観戦者化"
scoreboard players enable @a be_spectator

bossbar add lovespaces:mdms_end_timer "ゲームが終了するまで..."
bossbar set lovespaces:mdms_end_timer color red
bossbar set lovespaces:mdms_end_timer players @a
bossbar set lovespaces:mdms_end_timer visible false
bossbar set lovespaces:mdms_end_timer style notched_6

gamerule advance_time false
gamerule advance_weather false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule immediate_respawn false
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
tellraw @a " "
function log:tips/reset_settings
function log:tips/get_admin
