#tellraw @a {"text": "SOLD ITEM"}
advancement revoke @s only chaotic_crafting:sold_item
#execute as @s at @s run tag @e[type=wandering_trader,distance=..3] add find_looking.candidate

#execute as @s at @s run function chaotic_crafting:util/find_customer

#tag @e remove find_looking.candidate

#execute if entity @e[tag=customer,tag=find_looking.customer] run execute as @e[tag=customer,tag=find_looking.customer] run function chaotic_crafting:customer/remove_order
execute as @e[type=wandering_trader,tag=customer] run function chaotic_crafting:customer/remove_order

#scoreboard players set $item_sold cc_customers 1

