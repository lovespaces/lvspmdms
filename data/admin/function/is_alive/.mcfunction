execute as @a[team=murder] run tellraw @s "人狼います"
execute as @a[team=maniac] run tellraw @s "狂人います"
execute as @a[team=detective] run tellraw @s "探偵います"
execute as @a[team=witness] run tellraw @s "目撃者います"
execute as @a[team=innocent] run tellraw @s "市民います"

execute as @a[tag=Murder, tag=Dead] run tellraw @s "人狼います"
execute as @a[tag=Maniac, tag=Dead] run tellraw @s "狂人います"
execute as @a[tag=Detective, tag=Dead] run tellraw @s "探偵います"
execute as @a[tag=Witness, tag=Dead] run tellraw @s "目撃者います"
execute as @a[tag=Innocent, tag=Dead] run tellraw @s "市民います"

execute as @a[tag=Witness, tag=Escaped] run tellraw @s "目撃者います"
execute as @a[tag=Innocent, tag=Escaped] run tellraw @s "市民います"