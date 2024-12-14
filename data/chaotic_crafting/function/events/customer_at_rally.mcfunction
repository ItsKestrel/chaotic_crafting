execute as @e[type=marker,tag=cc_customer_rally] at @s run execute as @e[type=wandering_trader,tag=customer,tag=!at_rally,tag=!waiting_patience,distance=..3] run execute on passengers run scoreboard players operation @s cc_patience = $rally_patience cc_settings
execute as @e[type=marker,tag=cc_customer_rally] at @s run tag @e[type=wandering_trader,tag=customer,tag=!at_rally,distance=..3] add at_rally

tag @e[type=wandering_trader,tag=customer,tag=at_rally,tag=!ordering_patience,tag=!waiting_patience] add rally_patience