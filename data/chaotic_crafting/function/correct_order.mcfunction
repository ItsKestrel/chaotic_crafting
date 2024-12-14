tellraw @a {"text": "Order Delivered","color": "green"}
playsound minecraft:entity.wandering_trader.trade player @p
scoreboard players add $correct_orders cc_points 1
execute if block 22 67 6 minecraft:jukebox{IsPlaying:1b} run scoreboard players add $music_bonus cc_points 1

execute as @s run function chaotic_crafting:open_seat
scoreboard players add $customers_served cc_customers 1

execute on passengers run kill @s