
execute store result storage cc:temp dayTime double 100 run scoreboard players get $day_timer cc_timer
execute store result storage cc:temp dayLength double 1 run scoreboard players get $day_length cc_settings
execute store result score $tempValue_dayTime util run data get storage cc:temp dayTime
execute store result score $tempValue_dayLength util run data get storage cc:temp dayLength
scoreboard players operation $day_passed_ratio util = $tempValue_dayTime util
scoreboard players operation $day_passed_ratio util /= $tempValue_dayLength util


execute store result storage cc:temp custCount double 100 run scoreboard players get $customers_spawned cc_customers
execute store result storage cc:temp maxCust double 1 run scoreboard players get $customer_count cc_settings
execute store result score $tempValue_custCount util run data get storage cc:temp custCount
execute store result score $tempValue_maxCust util run data get storage cc:temp maxCust
scoreboard players operation $customer_ratio util = $tempValue_custCount util
scoreboard players operation $customer_ratio util /= $tempValue_maxCust util


#get number of customers to spawn
execute if score $customer_ratio util <= $day_passed_ratio util run scoreboard players set $spawn_loop cc_customers 0
execute if score $customer_ratio util <= $day_passed_ratio util run scoreboard players operation $min random = $customer_min cc_settings
execute if score $customer_ratio util <= $day_passed_ratio util run scoreboard players operation $max random = $customer_max cc_settings
execute if score $customer_ratio util <= $day_passed_ratio util run execute run function random:uniform
execute if score $customer_ratio util <= $day_passed_ratio util run execute store result score $spawn_loop cc_customers run scoreboard players get $out random

#start spawn loop
execute if score $customer_ratio util <= $day_passed_ratio util run function chaotic_crafting:customer/loop_spawn_customer


#check for satisfaction LAGGY
#execute as @e[type=wandering_trader,tag=customer] run function chaotic_crafting:customer/remove_order

#check for sold item
#execute if score $item_sold cc_customers > #0 cc_consts run execute as @e[type=wandering_trader,tag=customer] run function chaotic_crafting:customer/remove_order
#execute if score $item_sold cc_customers > #0 cc_consts run scoreboard players set $item_sold cc_customers 0