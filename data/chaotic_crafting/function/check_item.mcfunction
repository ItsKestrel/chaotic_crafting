tag @s add delivering_item
tag @s add incorrect_item

#tag @e[distance=..1,type=minecraft:wandering_trader,tag=customer] add recieved_item
execute as @s at @s run tag @e[type=wandering_trader,distance=..3] add find_looking.candidate

execute as @s at @s run function chaotic_crafting:util/find_customer

tag @e remove find_looking.candidate

execute unless entity @s[nbt=!{SelectedItem:{}}] run execute as @e[distance=..3,type=minecraft:wandering_trader,tag=customer,tag=find_looking.customer,limit=1] run tag @s add recieved_item

execute if entity @s[nbt=!{SelectedItem:{}}] run tag @s remove delivering_item
execute if entity @s[nbt=!{SelectedItem:{}}] run tag @s remove incorrect_item


execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:wooden_pickaxe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:wooden_shovel"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:wooden_axe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:wooden_hoe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:wooden_sword"},{}]}] run function chaotic_crafting:register_correct_order

execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:stone_pickaxe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:stone_shovel"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:stone_axe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:stone_hoe"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:stone_sword"},{}]}] run function chaotic_crafting:register_correct_order

execute if entity @s[nbt={SelectedItem:{id:"minecraft:oak_boat"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:oak_boat"},{}]}] run function chaotic_crafting:register_correct_order
execute if entity @s[nbt={SelectedItem:{id:"minecraft:ladder"}}] run execute as @e[tag=recieved_item,nbt={HandItems:[{id:"minecraft:ladder"},{}]}] run function chaotic_crafting:register_correct_order


execute if entity @s[tag=incorrect_item] run execute as @e[tag=recieved_item] run function chaotic_crafting:wrong_order

execute if entity @s[tag=delivering_item] run item replace entity @s[tag=delivering_item] weapon.mainhand with minecraft:air

execute as @e[tag=recieved_item] run function chaotic_crafting:recieved_item

advancement revoke @s only chaotic_crafting:interact_with_customer

tag @s remove correct_item
tag @s remove incorrect_item
tag @s remove delivering_item

