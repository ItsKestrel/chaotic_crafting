scoreboard players set $timer cc_timer 0

execute if score $seat_1 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_1
execute if score $seat_2 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_2
execute if score $seat_3 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_3
execute if score $seat_4 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_4
execute if score $seat_5 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_5
execute if score $seat_6 cc_seats matches 0 run function chaotic_crafting:customer/spawn_seat_6

execute as @e[tag=new_customer] at @s run function chaotic_crafting:util/patience_bars/give_progress_bar