execute as @e[type=marker,tag=cc_merchant_spawn] at @s run playsound entity.wandering_trader.reappeared ambient @a
execute if score $merchant_spawned cc_planning_phase matches 0 \
    run execute as @e[type=marker,tag=cc_merchant_spawn] at @s run summon wandering_trader ~ ~ ~ \
        {\
            wander_target:[I;0,0,0],\
            HandItems:[{},{}],\
            Invulnerable:1b,\
            NoAI:1b,\
            Tags:["cc_merchant"],\
            Offers:{\
                Recipes:[\
                    {\
                        buy: {\
                            id: "minecraft:emerald",\
                            count: 1\
                        },\
                        sell: {\
                            id: "minecraft:stone_bricks",\
                            count: 64\
                            },\
                        priceMultiplier: 0.05f,\
                        maxUses: 2\
                    }\
                ]\
            }\
        }

execute as @e[type=marker,tag=cc_merchant_spawn] at @s run loot spawn ~ ~ ~ loot chaotic_crafting:merchant_day_1

#execute as @e[type=marker,tag=cc_merchant_spawn] at @s run function chaotic_crafting:planning_phase/merchant/add_trade with entity @e[type=item,distance=..2,limit=1] Item.components."minecraft:custom_data"
execute as @e[type=marker,tag=cc_merchant_spawn] at @s run execute as @e[type=item,distance=..2,limit=5] run function chaotic_crafting:planning_phase/merchant/add_trade with entity @s Item.components."minecraft:custom_data"
execute as @e[type=marker,tag=cc_merchant_spawn] at @s run kill @e[type=item,limit=5,sort=nearest]