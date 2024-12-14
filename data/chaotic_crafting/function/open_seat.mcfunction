#tellraw @a {"text": "Opening Seats"}
execute as @s[tag=seat_1] run scoreboard players set $seat_1 cc_seats 0
execute as @s[tag=seat_2] run scoreboard players set $seat_2 cc_seats 0
execute as @s[tag=seat_3] run scoreboard players set $seat_3 cc_seats 0
execute as @s[tag=seat_4] run scoreboard players set $seat_4 cc_seats 0
execute as @s[tag=seat_5] run scoreboard players set $seat_5 cc_seats 0
execute as @s[tag=seat_6] run scoreboard players set $seat_6 cc_seats 0

scoreboard players set $bell_rang cc_customers 0