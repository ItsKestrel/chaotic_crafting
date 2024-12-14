
setblock ~ ~ ~ bedrock destroy
summon item_display ~ ~1 ~ {item:{id:bedrock,components:{custom_model_data:1002}},transformation:{translation:[0f,-0.5f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.0004f,1.0004f,1.0004f],right_rotation:[0f,0f,0f,1f]}}
summon marker ~ ~ ~ {Tags:["gold_ore_spreader","gold_node"],data:{name:"Gold Node"}}