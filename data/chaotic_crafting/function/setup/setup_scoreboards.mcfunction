scoreboard objectives add cc_item dummy

scoreboard objectives add cc_timer dummy
scoreboard players set $timer cc_timer 0
scoreboard players set $day_timer cc_timer 0

scoreboard objectives add cc_customers dummy
scoreboard players set $slots cc_customers 5
scoreboard players set $customers_spawned cc_customers 0
scoreboard players set $current_customer cc_customers 0
scoreboard players set $customers_served cc_customers 0
scoreboard players set $patience_expired cc_customers 0
scoreboard players set $bell_rang cc_customers 0

scoreboard objectives add cc_game dummy
scoreboard players add Day cc_game 1
scoreboard players add Customers cc_game 10
scoreboard players add FailedOrders cc_game 0
scoreboard players add Points cc_game 0
scoreboard players add Players cc_game 0

scoreboard objectives add cc_settings dummy
#game settings
scoreboard players set $menu cc_settings 0
scoreboard players set $game_active cc_settings 0
scoreboard players set $rally_patience cc_settings 3000
scoreboard players set $ordering_patience cc_settings 1200
scoreboard players set $waiting_patience cc_settings 2400
scoreboard players set $spawn_cows cc_settings 0
scoreboard players set $spawn_pigs cc_settings 0
scoreboard players set $spawn_chickens cc_settings 0
scoreboard players set $show_seats cc_settings 1
#Day settings
scoreboard players set $day_length cc_settings 6000
scoreboard players set $day cc_settings 1
scoreboard players set $day_active cc_settings 0
scoreboard players set $customer_count cc_settings 10
scoreboard players set $customer_min cc_settings 1
scoreboard players set $customer_max cc_settings 2
scoreboard players set $xtra_player_modifier cc_settings 0
#phase settings
scoreboard players set $phase_prep cc_settings 1
scoreboard players set $phase_day cc_settings 0
#crafter settings
scoreboard players set $level_1_speed cc_settings 400
scoreboard players set $level_2_speed cc_settings 200
scoreboard players set $level_3_speed cc_settings 100
#ore_spread settings
scoreboard players set $iron_ore_spread cc_settings 0
scoreboard players set $gold_ore_spread cc_settings 0
scoreboard players set $diamond_ore_spread cc_settings 0
#resource spawning
scoreboard players set $oak_wood_pile_spawn cc_settings 1
scoreboard players set $stone_pile_spawn cc_settings 1

scoreboard objectives add util dummy
scoreboard players set $0 util 0
scoreboard players set $1 util 1
scoreboard players set $tempValue util 0
scoreboard players set $anchor_X util 0
scoreboard players set $anchor_Y util 0
scoreboard players set $anchor_Z util 0
scoreboard players set $day_passed_ratio util 0
scoreboard players set $customer_ratio util 0

scoreboard objectives add cc_points dummy
scoreboard players set $correct_orders cc_points 0
scoreboard players set $incorrect_orders cc_points 0
scoreboard players set $music_bonus cc_points 0
scoreboard players set $money cc_points 0

scoreboard objectives add cc_seats dummy
scoreboard players set $seat_1 cc_seats 0
scoreboard players set $seat_2 cc_seats 0
scoreboard players set $seat_3 cc_seats 0
scoreboard players set $seat_4 cc_seats 0
scoreboard players set $seat_5 cc_seats 0
scoreboard players set $seat_6 cc_seats 0

scoreboard objectives add cc_patience dummy
scoreboard objectives add cc_progress_bars dummy

scoreboard objectives add cc_consts dummy
scoreboard players set #100 cc_consts 100
scoreboard players set #99 cc_consts 99
scoreboard players set #97 cc_consts 97
scoreboard players set #94 cc_consts 94
scoreboard players set #91 cc_consts 91
scoreboard players set #88 cc_consts 88
scoreboard players set #84 cc_consts 84
scoreboard players set #81 cc_consts 81
scoreboard players set #78 cc_consts 78
scoreboard players set #75 cc_consts 75
scoreboard players set #72 cc_consts 72
scoreboard players set #69 cc_consts 69
scoreboard players set #66 cc_consts 66
scoreboard players set #62 cc_consts 62
scoreboard players set #59 cc_consts 59
scoreboard players set #56 cc_consts 56
scoreboard players set #53 cc_consts 53
scoreboard players set #50 cc_consts 50
scoreboard players set #47 cc_consts 47
scoreboard players set #44 cc_consts 44
scoreboard players set #41 cc_consts 41
scoreboard players set #38 cc_consts 38
scoreboard players set #34 cc_consts 34
scoreboard players set #31 cc_consts 31
scoreboard players set #28 cc_consts 28
scoreboard players set #25 cc_consts 25
scoreboard players set #22 cc_consts 22
scoreboard players set #19 cc_consts 19
scoreboard players set #16 cc_consts 16
scoreboard players set #12 cc_consts 12
scoreboard players set #9 cc_consts 9
scoreboard players set #6 cc_consts 6
scoreboard players set #5 cc_consts 5
scoreboard players set #3 cc_consts 3
scoreboard players set #1 cc_consts 1
scoreboard players set #0 cc_consts 0

#temp storage
scoreboard objectives add cc_temp dummy
scoreboard players set $5 cc_temp 5
scoreboard players set $10 cc_temp 10


# block tracking
scoreboard objectives add cc_crafter_broken minecraft.mined:minecraft.crafter
scoreboard objectives add cc_iron_ore_mined minecraft.mined:minecraft.iron_ore
scoreboard objectives add cc_gold_ore_mined minecraft.mined:minecraft.gold_ore
scoreboard objectives add cc_diamond_ore_mined minecraft.mined:minecraft.diamond_ore

#Find Crafter Ray
scoreboard objectives add cc_crafter_ray dummy
scoreboard objectives add rm_marker_ray dummy