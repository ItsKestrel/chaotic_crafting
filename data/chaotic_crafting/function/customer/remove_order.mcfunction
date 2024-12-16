#tellraw @a {"text": "REMOVE ORDER"}
execute store result score #maxUses cc_temp run data get entity @s Offers.Recipes[0].maxUses
execute store result score #uses cc_temp run data get entity @s Offers.Recipes[0].uses

execute if score #uses cc_temp = #maxUses cc_temp run data remove entity @s Offers.Recipes[0]

#scoreboard players set $offerCount cc_temp 0
#execute store result storage cc:temp offers.count int 1 run scoreboard players get $offerCount cc_temp
#function chaotic_crafting:util/customers/find_offer_count with storage cc:temp offers

execute unless data entity @s Offers.Recipes run function chaotic_crafting:customer/customer_satisfied