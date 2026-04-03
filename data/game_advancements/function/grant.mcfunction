advancement grant @s only game_advancements:welcome

advancement grant @s[tag=Murder] only game_advancements:murderer/welcome
advancement grant @s[tag=Maniac] only game_advancements:maniac/welcome
advancement grant @s[tag=Detective] only game_advancements:detective/welcome
advancement grant @s[tag=Witness] only game_advancements:witness/welcome
advancement grant @s[tag=Innocent] only game_advancements:villager/welcome

# villager
advancement grant @s[tag=adv.burp] only game_advancements:villager/burp
advancement grant @s[tag=adv.burp] only game_advancements:villager/burp_in_invis
advancement grant @s[tag=adv.trash] only game_advancements:villager/trash
advancement grant @s[tag=adv.lot_trashes] only game_advancements:villager/lot_of_trashes
advancement grant @s[tag=adv.totem] only game_advancements:villager/totem
advancement grant @s[tag=adv.third_totem] only game_advancements:villager/third_totem
advancement grant @s[tag=adv.sign_early] only game_advancements:villager/sign_early
advancement grant @s[tag=adv.used_ironhorse] only game_advancements:villager/used_ironhorse
advancement grant @s[tag=adv.oopsy_ironhorse] only game_advancements:villager/oopsy_ironhorse
advancement grant @s[tag=adv.ironhorse.bow, tag=adv.ironhorse.knife] only game_advancements:villager/attacked_every_ironhorse
advancement grant @s[tag=adv.not_key_lost, tag=adv.not_attack] only game_advancements:villager/no_attack_lost
advancement grant @s[tag=adv.not_key_lost, tag=adv.not_attack, tag=adv.not_running, tag=adv.not_trade] only game_advancements:villager/no_attack_lost

# murderer
advancement grant @s[tag=adv.lantern_witness] only game_advancements:murderer/soul_lantern
advancement grant @s[tag=adv.mur.uses_bandage] only game_advancements:murderer/uses_bandage
advancement grant @s[tag=adv.mur.win] only game_advancements:murderer/win
advancement grant @s[tag=adv.mur.perfect] only game_advancements:murderer/perfect
advancement grant @s[tag=adv.next_detective] only game_advancements:murderer/next_detective
advancement grant @s[tag=adv.first_kill_witness] only game_advancements:murderer/witness_first

# detective
advancement grant @s[tag=adv.det.nothing] only game_advancements:detective/nothing
advancement grant @s[tag=adv.defeat_murder] only game_advancements:detective/defeat_murder
advancement grant @s[tag=adv.defeat_villager] only game_advancements:detective/defeat_villager
advancement grant @s[tag=adv.defeat_everyone] only game_advancements:detective/defeat_everyone
advancement grant @s[tag=adv.det.duplicate] only game_advancements:detective/duplicate
advancement grant @s[tag=adv.det.rta] only game_advancements:detective/rta

# witness
advancement grant @s[tag=adv.ph2escape] only game_advancements:witness/ph2_escape
advancement grant @s[tag=adv.noph2escape] only game_advancements:witness/no_ph2_escape
advancement grant @s[tag=adv.wit.escape_with_lantern] only game_advancements:witness/escape_with_lantern
advancement grant @s[tag=adv.wit.invis] only game_advancements:witness/stealth_escape
advancement grant @s[tag=adv.actual_invis] only game_advancements:witness/actual_stealth_escape
advancement grant @s[tag=adv.wit.more_invis] only game_advancements:witness/more_stealth_escape

# secret !!
execute if predicate game_advancements:done_all run function game_advancements:special/all
execute if predicate game_advancements:done_everything run function game_advancements:special/everything
execute if predicate game_advancements:done_secret run function game_advancements:special/secret
