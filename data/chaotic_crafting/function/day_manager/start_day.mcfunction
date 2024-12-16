function chaotic_crafting:util/gui/close_gui
function chaotic_crafting:planning_phase/merchant/despawn_merchant

scoreboard players set $day_active cc_settings 1
scoreboard players set $planning_phase_active cc_planning_phase 0

#function chaotic_crafting:loop/start_customer_spawning

execute if score $oak_wood_pile_spawn cc_settings matches 1 run function chaotic_crafting:loop/oak_pile_spawn
execute if score $stone_pile_spawn cc_settings matches 1 run function chaotic_crafting:loop/stone_pile_spawn


#upgrades
