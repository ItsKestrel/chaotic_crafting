execute if score @s cc_customers = $current_customer cc_customers run tag @s add seat_1

data modify entity @e[type=wandering_trader,tag=seat_1,limit=1] wander_target set value [I;0,0,0]

data modify entity @e[type=wandering_trader,tag=seat_1,limit=1] wander_target[0] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[0]
data modify entity @e[type=wandering_trader,tag=seat_1,limit=1] wander_target[1] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[1]
data modify entity @e[type=wandering_trader,tag=seat_1,limit=1] wander_target[2] set from entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[2]


execute as @e[tag=seat_1] run scoreboard players set $seat_1 cc_seats 1
