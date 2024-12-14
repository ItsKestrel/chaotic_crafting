tellraw @a {"text": "Taking Order","color": "white"}

function chaotic_crafting:menus/menu_misc

tag @s remove at_rally
tag @s remove rally_patience
tag @s remove ordering_patience
tag @s add waiting_patience
execute on passengers run scoreboard players operation @s cc_patience = $waiting_patience cc_settings