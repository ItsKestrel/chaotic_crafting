summon wandering_trader ~ ~ ~ {wander_target:[I;0,0,0],HandItems:[{},{}],Invulnerable:1b,NoAI:1b,Tags:["cc_merchant"],Offers:{Recipes:[{buy: {id: "minecraft:emerald", count: 1}, sell: {id: "minecraft:white_dye", count: 3}, priceMultiplier: 0.05f, maxUses: 12}]}}
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[0] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[0]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[1] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[1]
data modify entity @e[type=wandering_trader,tag=new_customer,limit=1] wander_target[2] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[2]

#/data modify entity [wandering trader] Offers.Recipes append value {buy: {id: "minecraft:emerald", count: 1}, sell: {id: "minecraft:white_dye", count: 3}, priceMultiplier: 0.05f, maxUses: 12}
loot spawn ~ ~ ~ loot chaotic_crafting:merchant_day_1
#execute as @e[type=item,limit=5,sort=nearest] run data modify entity @e[type=wandering_trader,tag=cc_merchant,sort=nearest,limit=1] Offers.Recipes append from entity @s Item.id
#execute as @e[type=item,limit=5,sort=nearest] run data modify entity @e[type=wandering_trader,tag=cc_merchant,sort=nearest,limit=1] Offers.Recipes append value {buy: {$(Item.id)}}
#execute store result storage cc:trades merchantItem byte 1 run data get entity @e[type=item,distance=..2,limit=1] Item.id
#execute store result storage cc:trades merchantItem byte 1 run data get entity @e[type=item,distance=..2,limit=1] Item.components
function chaotic_crafting:pre_day/merchant/add_trade with entity @e[type=item,distance=..2,limit=1] Item.components."minecraft:custom_data"
#kill @e[type=item,limit=5,sort=nearest]