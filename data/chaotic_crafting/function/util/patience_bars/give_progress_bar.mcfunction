summon item_display ~ ~ ~ {item:{id:"minecraft:emerald",Count:1b,components:{"minecraft:custom_model_data":8100}},billboard:center,transformation:{translation:[0f,.5f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0f]},Tags:["patienceBar","newPatienceBar"]}
ride @e[tag=patienceBar,tag=newPatienceBar,limit=1] mount @s

execute on passengers if entity @s[tag=patienceBar,tag=newPatienceBar] run scoreboard players operation @s cc_patience = $rally_patience cc_settings
execute on passengers if entity @s[tag=patienceBar,tag=newPatienceBar] run tag @s remove newPatienceBar
tag @s add has_patience
tag @s remove new_customer