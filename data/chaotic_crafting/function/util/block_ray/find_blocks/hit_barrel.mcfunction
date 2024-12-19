#tellraw @s {"text": "Hit Barrel."}
scoreboard players set #hit cc_block_ray 1

summon marker ~ ~ ~ {Tags:[cc_barrel_marker,new_barrel],data:{name:"Barrel"}}