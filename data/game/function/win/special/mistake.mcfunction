#> game:win/special/mistake
#
# @within game:win/check

function game:win/murder

title @a subtitle {"text":"誰も探偵を信用できない", "color":"aqua"}
tellraw @a [{"color":"red", "text":"[ラブスペ人狼] "}, {"color":"aqua", "text":"探偵の誤射が殺人鬼の手助けになったようだ"}]