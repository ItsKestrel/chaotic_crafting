execute if score $seat_1 cc_seats matches 0 run execute as @e[type=wandering_trader,tag=customer] run function chaotic_crafting:seats/seat_1

execute if score $bell_rang cc_customers matches 0 run function chaotic_crafting:events/customer_at_counter