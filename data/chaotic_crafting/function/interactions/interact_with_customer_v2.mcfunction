#Determine which customer is interacted with
execute as @s at @s run tag @e[type=wandering_trader,distance=..3] add find_looking.candidate

execute as @s at @s run function chaotic_crafting:util/find_customer

tag @e remove find_looking.candidate

#execute if entity @e[tag=customer,tag=find_looking.customer,tag=has_ordered] run execute unless entity @s[nbt=!{SelectedItem:{}}] run function chaotic_crafting:check_item
#execute if entity @e[tag=customer,tag=find_looking.customer,tag=not_ordered] run execute as @e[tag=customer,tag=find_looking.customer,tag=not_ordered] run function chaotic_crafting:take_order

execute if entity @e[tag=customer,tag=find_looking.customer,tag=not_ordered] run execute as @e[tag=customer,tag=find_looking.customer,tag=not_ordered] run function chaotic_crafting:customer/take_order_v2

advancement revoke @s only chaotic_crafting:interact_with_customer