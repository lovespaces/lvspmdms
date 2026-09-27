execute on origin run tag @s add Admin.TemporaryTeleport
function item:kill
tp @a[tag=Admin.TemporaryTeleport] @e[limit=1, type=marker, tag=RolesSettings]
execute as @a[tag=Admin.TemporaryTeleport] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~
tag @a remove Admin.TemporaryTeleport