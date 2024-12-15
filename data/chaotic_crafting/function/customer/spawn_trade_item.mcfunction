$execute as @e[type=marker,tag=cc_customer_spawn] at @s run loot spawn ~ ~ ~ loot $(menu)
execute as @e[type=marker,tag=cc_customer_spawn] at @s run function chaotic_crafting:customer/add_trade with entity @e[type=item,distance=..2,limit=1] Item.components."minecraft:custom_data"
execute as @e[type=marker,tag=cc_customer_spawn] at @s run kill @e[type=item,sort=nearest]