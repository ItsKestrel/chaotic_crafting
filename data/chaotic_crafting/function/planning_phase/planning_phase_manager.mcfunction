scoreboard players operation #day3 cc_temp = $day cc_settings
scoreboard players operation #day3 cc_temp %= #3 cc_consts

#non-3rd day
execute unless score #day3 cc_temp matches 0 run execute if score $planning_phase_active cc_planning_phase matches 0 run function chaotic_crafting:planning_phase/planning_phase

#3rd day
execute if score #day3 cc_temp matches 0 run execute if score $upgrade_phase_active cc_planning_phase matches 0 run function chaotic_crafting:planning_phase/upgrade_phase


#Update Scoreboard
scoreboard players set FailedOrders cc_game 0
scoreboard players set Points cc_game 0
scoreboard players operation Day cc_game = $day cc_settings
scoreboard players operation Customers cc_game = $customer_count cc_settings

