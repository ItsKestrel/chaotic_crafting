#tellraw @a {"text": "ADDING PLAYER!"}
tag @s add cc_player
scoreboard players operation $customer_count cc_settings += $xtra_player_modifier cc_settings
scoreboard players operation $xtra_player_modifier cc_settings += #5 cc_consts

effect give @s saturation infinite 255 true
#gamemode adventure @s