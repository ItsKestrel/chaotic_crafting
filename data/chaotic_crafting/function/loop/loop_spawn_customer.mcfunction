execute if score $spawn_loop cc_customers > #0 cc_consts run execute if score $customers_spawned cc_customers < $customer_count cc_settings run function chaotic_crafting:spawn_customer/spawn_customer
#execute as @e[tag=new_customer] at @s run function chaotic_crafting:util/patience_bars/give_progress_bar
scoreboard players remove $spawn_loop cc_customers 1
scoreboard players add $customers_spawned cc_customers 1

execute if score $spawn_loop cc_customers > #0 cc_consts run function chaotic_crafting:loop/loop_spawn_customer