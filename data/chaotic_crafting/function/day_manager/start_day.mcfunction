function chaotic_crafting:util/gui/close_gui
function chaotic_crafting:planning_phase/merchant/despawn_merchant

gamemode survival @a[tag=cc_player]
execute if score $keep_inventory cc_upgrades matches 0 run function chaotic_crafting:util/clear_inventories

scoreboard players set $day_active cc_settings 1
scoreboard players set $planning_phase_active cc_planning_phase 0

#function chaotic_crafting:loop/start_customer_spawning

execute if score $oak_wood_pile_spawn cc_settings matches 1 run function chaotic_crafting:loop/wood_spawn
execute if score $stone_pile_spawn cc_settings matches 1 run function chaotic_crafting:loop/stone_pile_spawn


#upgrades
execute if score $coal_deposit_spawn cc_settings matches 1 run function chaotic_crafting:loop/coal_deposit_spawn
execute if score $iron_ore_spread cc_settings matches 1 run function chaotic_crafting:loop/iron_spread
execute if score $gold_ore_spread cc_settings matches 1 run function chaotic_crafting:loop/gold_spread
execute if score $diamond_ore_spread cc_settings matches 1 run function chaotic_crafting:loop/diamond_spread
