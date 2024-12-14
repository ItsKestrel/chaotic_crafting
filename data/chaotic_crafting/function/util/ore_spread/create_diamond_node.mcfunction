
setblock ~ ~ ~ bedrock destroy
summon item_display ~ ~1 ~ {item:{id:bedrock,components:{custom_model_data:1003}},transformation:{translation:[0f,-0.5f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.0004f,1.0004f,1.0004f],right_rotation:[0f,0f,0f,1f]}}
summon marker ~ ~ ~ {Tags:["diamond_ore_spreader","diamond_node"],data:{name:"Diamond Node"}}