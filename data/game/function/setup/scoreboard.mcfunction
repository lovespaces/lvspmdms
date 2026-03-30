scoreboard players set @a[team=!murder, team=!spectator] bandage 2
scoreboard players set @a[team=!spectator, team=!murder] attack 1

scoreboard players set @a[team=detective] bandage 2
scoreboard players set @a[team=detective] attack 2

scoreboard players set @a[team=witness] bandage 0
scoreboard players set @a[team=witness] attack 0

scoreboard players set @a[team=spectator] stats 1

scoreboard players set $Phase stats 0
scoreboard players set $Escaped stats 0

function ender_chest:armor_stand/
function ender_chest:roll/setup
