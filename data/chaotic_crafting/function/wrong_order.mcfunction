tellraw @a {"text": "Wrong Order","color": "red"}
playsound minecraft:entity.wandering_trader.no player @p

scoreboard players add $incorrect_orders cc_points 1

execute as @s run function chaotic_crafting:open_seat

execute on passengers run kill @s