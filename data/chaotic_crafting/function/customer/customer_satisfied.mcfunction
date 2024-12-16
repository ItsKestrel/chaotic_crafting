execute if entity @s[tag=at_counter] run execute as @s run function chaotic_crafting:open_seat
scoreboard players add $customers_served cc_customers 1
scoreboard players add $current_customer cc_customers 1

execute on passengers run kill @s
kill @s