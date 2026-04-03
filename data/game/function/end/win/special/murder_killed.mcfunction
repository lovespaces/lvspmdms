tag @a[team=detective] add adv.defeat_murder
execute if score $Adv adv.stopwatch matches ..3600 run tag @a[team=detective] add adv.det.rta
function game:end/win/innocent
