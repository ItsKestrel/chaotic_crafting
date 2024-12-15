tellraw @a {"text": "Taking Order","color": "white"}

function chaotic_crafting:customer/set_hand_item with entity @s Offers.Recipes[0]

tag @s remove not_ordered
tag @s add has_ordered

tag @s remove at_rally
tag @s remove rally_patience
tag @s remove ordering_patience
tag @s add waiting_patience
execute on passengers run scoreboard players operation @s cc_patience = $waiting_patience cc_settings