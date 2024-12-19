
#give @s minecraft:emerald[custom_data={keep:true}]
summon item ~ ~ ~ {Item:{id:"emerald",components:{"minecraft:custom_data":{keep:true}}},Tags:[keep_emerald]}

execute store result score @s cc_temp run clear @s emerald[!minecraft:custom_data={keep:true}]
execute store result entity @e[distance=..1,type=item,tag=keep_emerald,limit=1] Item.count byte 1 run scoreboard players get @s cc_temp

tag @e[distance=..1,type=item,tag=keep_emerald,limit=1] remove keep_emerald
scoreboard players reset @s cc_temp

execute as @s run schedule function chaotic_crafting:util/revoke_has_emerald 5t