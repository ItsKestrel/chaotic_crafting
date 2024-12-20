
#execute if score $game_active cc_settings matches 1 run scoreboard players add $timer cc_timer 1
#execute if score $game_active cc_settings matches 1 run execute if score $timer cc_timer matches 600.. run execute if score $slots cc_customers matches 1.. run function chaotic_crafting:customer
#execute if score $game_active cc_settings matches 1 run execute if score $timer cc_timer matches 1 run function chaotic_crafting:spawn_animals

#execute if score $day_active cc_settings matches 1 run function chaotic_crafting:customer/spawn_customer_manager
execute if score $day_active cc_settings matches 1 run function chaotic_crafting:customer/customer_manager
execute if score $day_active cc_settings matches 1 run function chaotic_crafting:day_manager/day_manager
execute if score $day_active cc_settings matches 1 run function chaotic_crafting:seats/seat_manager
execute if score $day_active cc_settings matches 1 run function chaotic_crafting:patience/patience_manager
execute if score $day_active cc_settings matches 1 run function chaotic_crafting:events/event_manager

execute if score $day_active cc_settings matches 0 run function chaotic_crafting:planning_phase/planning_phase_manager


function chaotic_crafting:util/find_looking_wandering_trader


execute as @a at @s run execute as @e[type=minecraft:wandering_trader,distance=..3] at @s run tp @s ~ ~ ~ facing entity @p feet

#execute as @e[tag=has_patience] on passengers if entity @s[tag=patienceBar] run function chaotic_crafting:util/patience_bars/update_patience
execute as @e[tag=has_progress_bar] on passengers if entity @s[tag=progressBar] run function chaotic_crafting:util/progress_bars/update_progress_bar

function chaotic_crafting:util/debug/debug_tick

function chaotic_crafting:util/block_tracker

#function chaotic_crafting:tick/spawn_crafter


execute as @a[tag=cc_craft_book] run function chaotic_crafting:replace_book

function chaotic_crafting:book_commands/gen_workshop
function chaotic_crafting:book_commands/start_game
function chaotic_crafting:book_commands/reset