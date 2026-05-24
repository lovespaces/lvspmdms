execute unless entity @a[team=murder] run return run function game:end/win/check

execute if entity @a[team=innocent] run return 0
execute unless entity @a[team=witness] run return run function game:end/win/check
