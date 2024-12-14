#execute if score $seat_1 cc_seats matches 0 run summon wandering_trader 2 66 -3 {WanderTarget:{X:10, Y:67, Z:7},HandItems:[{},{}],Invulnerable:1b,Silent:1b,Tags:["new_customer","customer", "not_ordered", "seat_1"],Offers:{Recipes:[]}}
#scoreboard players set $seat_1 cc_seats 1

# summon minecraft:wandering_trader ~ ~ ~ {wander_target:[I;0,62,55]}


execute as @e[type=marker,tag=cc_customer_spawn] at @s run summon wandering_trader ~ ~ ~ {wander_target:[I;0,0,0],HandItems:[{},{}],Invulnerable:1b,Silent:1b,Tags:["new_customer","customer", "not_ordered", "seat_1"],Offers:{Recipes:[]}}
data modify entity @e[type=wandering_trader,tag=new_customer,tag=seat_1,limit=1] wander_target[0] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[0]
data modify entity @e[type=wandering_trader,tag=new_customer,tag=seat_1,limit=1] wander_target[1] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[1]
data modify entity @e[type=wandering_trader,tag=new_customer,tag=seat_1,limit=1] wander_target[2] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[2]

scoreboard players set $seat_1 cc_seats 1