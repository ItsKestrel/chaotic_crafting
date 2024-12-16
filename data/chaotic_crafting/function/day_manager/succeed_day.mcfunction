title @a title {"text": "Day Completed","color": "green"}

scoreboard players set $day_active cc_settings 0
scoreboard players set $day_timer cc_timer 0

scoreboard players add $day cc_settings 1

#reset customers
scoreboard players set $customers_spawned cc_customers 0
scoreboard players set $current_customer cc_customers 0
scoreboard players set $customers_served cc_customers 0
scoreboard players set $patience_expired cc_customers 0
scoreboard players set $bell_rang cc_customers 0

#increase customer count
scoreboard players operation #custCount cc_temp = $customer_count cc_settings
scoreboard players operation #custCount cc_temp /= #5 cc_consts
scoreboard players operation $customer_count cc_settings += #custCount cc_temp
#scoreboard players add $customer_count cc_settings 5