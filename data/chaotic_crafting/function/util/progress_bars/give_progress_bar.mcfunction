#tellraw @a {"text": "Giving Progress Bar"}
summon item_display ~ ~ ~ {item:{id:"minecraft:emerald",Count:1b,components:{"minecraft:custom_model_data":8000}},billboard:"vertical",brightness:{block:15,sky:0},transformation:{translation:[0f,0f,.6f],left_rotation:[0f,0f,1f,1f],right_rotation:[0f,0f,1f,1f],scale:[1f,1f,0f]},Tags:["progressBar","newProgressBar"]}
ride @e[tag=progressBar,tag=newProgressBar,limit=1] mount @s

execute on passengers if entity @s[tag=progressBar,tag=newProgressBar] run tag @s remove newProgressBar

tag @s add has_progress_bar