execute as @a[scores={cc_iron_ore_mined=1}] run function chaotic_crafting:ore_spread/mined_iron_ore
execute as @a[scores={cc_gold_ore_mined=1}] run function chaotic_crafting:ore_spread/mined_gold_ore
execute as @a[scores={cc_diamond_ore_mined=1}] run function chaotic_crafting:ore_spread/mined_diamond_ore

execute as @a[scores={cc_crafter_broken=1}] run function chaotic_crafting:functional_blocks/break_crafter
execute as @a[scores={cc_barrel_broken=1}] run function chaotic_crafting:block_tracker/barrel/remove_barrel
execute as @a[scores={cc_chest_broken=1}] run function chaotic_crafting:block_tracker/chest/remove_chest