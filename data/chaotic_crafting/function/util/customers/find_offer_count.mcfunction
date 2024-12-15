$execute if data entity @s Offers.Recipes[$(count)] run scoreboard players add $offerCount cc_temp 1
execute store result storage cc:temp offers.count int 1 run scoreboard players get $offerCount cc_temp
execute if data entity @s Offers.Recipes[0] run function chaotic_crafting:util/customers/find_offer_count with storage cc:temp offers