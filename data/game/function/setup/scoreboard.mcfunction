scoreboard players set @a[team=!murder, team=!spectator] bandage 1
scoreboard players set @a[team=!spectator, team=!murder] attack 1

scoreboard players set @a[team=murder] bandage 0

scoreboard players set @a[team=detective] bandage 1
scoreboard players set @a[team=detective] attack 2

scoreboard players set @a[team=witness] bandage 0
scoreboard players set @a[team=witness] attack 0

scoreboard players set @a[team=spectator] stats 1

execute as @a[team=innocent] run attribute @s max_health base set 4.0
execute as @a[tag=BadGuys] run attribute @s max_health base set 4.0
execute as @a[team=detective] run attribute @s max_health base set 6.0
execute as @a[team=witness] run attribute @s max_health base set 2.0

scoreboard players set $Phase stats 0
scoreboard players set $Escaped stats 0
scoreboard players set $Tick timer 20
scoreboard players set $10 temporary.percentage 10
scoreboard players set $100 temporary.percentage 100
scoreboard players set $1000 temporary.percentage 1000
scoreboard players operation $InSeconds stats = $EscapeSneaks settings
scoreboard players operation $InSeconds stats /= $Tick timer

scoreboard players set $Dead stats 0
scoreboard players set $Mistake stats 0
scoreboard players set $Escaped stats 0

scoreboard players set @a[team=!spectator] villager.escape_trade 0

function ender_chest:armor_stand/
function ender_chest:roll/setup
