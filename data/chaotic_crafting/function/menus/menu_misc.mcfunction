
scoreboard players set $random cc_item 0
scoreboard players set $min random 0
scoreboard players set $max random 11
execute run function random:uniform
execute store result score $random cc_item run scoreboard players get $out random

execute if score $random cc_item matches 0 run data modify entity @s HandItems set value [{id:"wooden_pickaxe",Count:1b}, {}]
execute if score $random cc_item matches 1 run data modify entity @s HandItems set value [{id:"wooden_shovel",Count:1b}, {}]
execute if score $random cc_item matches 2 run data modify entity @s HandItems set value [{id:"wooden_axe",Count:1b}, {}]
execute if score $random cc_item matches 3 run data modify entity @s HandItems set value [{id:"wooden_hoe",Count:1b}, {}]
execute if score $random cc_item matches 4 run data modify entity @s HandItems set value [{id:"wooden_sword",Count:1b}, {}]
execute if score $random cc_item matches 5 run data modify entity @s HandItems set value [{id:"stone_pickaxe",Count:1b}, {}]
execute if score $random cc_item matches 6 run data modify entity @s HandItems set value [{id:"stone_shovel",Count:1b}, {}]
execute if score $random cc_item matches 7 run data modify entity @s HandItems set value [{id:"stone_axe",Count:1b}, {}]
execute if score $random cc_item matches 8 run data modify entity @s HandItems set value [{id:"stone_hoe",Count:1b}, {}]
execute if score $random cc_item matches 9 run data modify entity @s HandItems set value [{id:"stone_sword",Count:1b}, {}]
execute if score $random cc_item matches 10 run data modify entity @s HandItems set value [{id:"oak_boat",Count:1b}, {}]
execute if score $random cc_item matches 11 run data modify entity @s HandItems set value [{id:"ladder",Count:1b}, {}]

tag @s remove not_ordered
tag @s add has_ordered