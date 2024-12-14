execute as @s run function chaotic_crafting:open_seat

kill @s

scoreboard players add $current_customer cc_customers 1
scoreboard players add $patience_expired cc_customers 1