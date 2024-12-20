execute store result score #cc_success cc_temp run clear @s minecraft:written_book[minecraft:written_book_content~{title:"Chaos"}] 1
execute if score #cc_success cc_temp matches 1.. run function chaotic_crafting:give_book

tag @s remove cc_craft_book