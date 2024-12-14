execute if score $day_timer cc_timer < $day_length cc_settings run scoreboard players add $day_timer cc_timer 1

#execute if score $day_timer cc_timer = $day_length cc_settings run scoreboard players set $day_active cc_settings 0
#execute if score $day_timer cc_timer = $day_length cc_settings run scoreboard players set $day_timer cc_timer 0

#Update Scoreboard
scoreboard players operation FailedOrders cc_game = $incorrect_orders cc_points
scoreboard players operation Points cc_game = $correct_orders cc_points


## Check for end of day
execute if score $customers_served cc_customers = $customer_count cc_settings run function chaotic_crafting:day_manager/succeed_day

execute if score $patience_expired cc_customers matches 1 run function chaotic_crafting:day_manager/failed_day
execute if score $incorrect_orders cc_points matches 3 run function chaotic_crafting:day_manager/failed_day