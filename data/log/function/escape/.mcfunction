#> log:escape/
#
# @within game:escape/set

tellraw @a [{"color": "red", "text":"[ラブスペ人狼] "}, {"color": "white", "text":"あなたは脱出に以下のアイテムが必要です: "}]
$function log:escape/items with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryOne)]
$function log:escape/items with storage lovespaces:mdms EscapeItems[$(EscapeTemporaryTwo)]