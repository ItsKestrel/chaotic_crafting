scoreboard players set $planning_phase_active cc_planning_phase 1
execute if score $gui_open cc_gui matches 0 run function chaotic_crafting:util/gui/open_day_gui
schedule function chaotic_crafting:planning_phase/merchant/spawn_merchant 2s