summon marker ~ ~ ~ {Tags:["cc_anchor"],data:{name:"cc_anchor"}}
execute as @e[type=marker,tag=cc_anchor] at @s run function chaotic_crafting:util/center_entity

#Stores location in scoreboard
execute store result score $anchor_X util run data get entity @s Pos[0] 1
execute store result score $anchor_Y util run data get entity @s Pos[1] 1
execute store result score $anchor_Z util run data get entity @s Pos[2] 1