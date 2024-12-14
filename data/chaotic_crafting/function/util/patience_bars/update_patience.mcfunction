scoreboard players remove @s cc_patience 1

scoreboard players operation $tempValue util = @s cc_patience
scoreboard players operation $tempValue util *= #100 cc_consts
execute on vehicle if entity @s[tag=has_patience,tag=rally_patience] run scoreboard players operation $tempValue util /= $rally_patience cc_settings
execute on vehicle if entity @s[tag=has_patience,tag=not_ordered,tag=ordering_patience] run scoreboard players operation $tempValue util /= $ordering_patience cc_settings
execute on vehicle if entity @s[tag=has_patience,tag=has_ordered,tag=waiting_patience] run scoreboard players operation $tempValue util /= $waiting_patience cc_settings

execute if score $tempValue util matches 100 run data modify entity @s item.components.minecraft:custom_model_data set value 8100
execute if score $tempValue util <= #99 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8097
execute if score $tempValue util <= #97 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8094
execute if score $tempValue util <= #94 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8091
execute if score $tempValue util <= #91 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8088
execute if score $tempValue util <= #88 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8084
execute if score $tempValue util <= #84 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8081
execute if score $tempValue util <= #81 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8078
execute if score $tempValue util <= #78 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8075
execute if score $tempValue util <= #75 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8072
execute if score $tempValue util <= #72 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8069
execute if score $tempValue util <= #69 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8066
execute if score $tempValue util <= #66 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8062
execute if score $tempValue util <= #62 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8059
execute if score $tempValue util <= #59 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8056
execute if score $tempValue util <= #56 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8053
execute if score $tempValue util <= #53 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8050
execute if score $tempValue util <= #50 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8047
execute if score $tempValue util <= #47 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8044
execute if score $tempValue util <= #44 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8041
execute if score $tempValue util <= #41 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8038
execute if score $tempValue util <= #38 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8034
execute if score $tempValue util <= #34 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8031
execute if score $tempValue util <= #31 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8028
execute if score $tempValue util <= #28 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8025
execute if score $tempValue util <= #25 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8022
execute if score $tempValue util <= #22 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8019
execute if score $tempValue util <= #19 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8016
execute if score $tempValue util <= #16 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8012
execute if score $tempValue util <= #12 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8009
execute if score $tempValue util <= #9 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8006
execute if score $tempValue util <= #6 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8003
execute if score $tempValue util <= #3 cc_consts run data modify entity @s item.components.minecraft:custom_model_data set value 8000

execute if score $tempValue util = #25 cc_consts run tellraw @a {"text": "A customer is getting impatient...", "color": "yellow"}

execute as @e[tag=patienceBar,predicate=chaotic_crafting:patience_expired] on vehicle run function chaotic_crafting:patience_expired
kill @e[tag=patienceBar,predicate=chaotic_crafting:patience_expired]