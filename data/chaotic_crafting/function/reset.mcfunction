scoreboard objectives remove cc_item
scoreboard objectives remove cc_timer
scoreboard objectives remove cc_customers
scoreboard objectives remove cc_settings
scoreboard objectives remove util
scoreboard objectives remove cc_points
scoreboard objectives remove cc_seats
scoreboard objectives remove cc_patience
scoreboard objectives remove cc_progress_bars
scoreboard objectives remove cc_consts

scoreboard objectives remove cc_temp

scoreboard objectives remove cc_crafter_broken
scoreboard objectives remove cc_iron_ore_mined
scoreboard objectives remove cc_gold_ore_mined
scoreboard objectives remove cc_diamond_ore_mined

scoreboard objectives remove cc_crafter_ray
scoreboard objectives remove rm_marker_ray

kill @e[tag=cc_upgrade_data]
function chaotic_crafting:setup/set_upgrade_data_marker

kill @e[tag=cc_trade_data]
function chaotic_crafting:setup/set_trade_data_marker


function chaotic_crafting:setup/setup_scoreboards