#summon item_display ~ ~ ~ {item:{id:"minecraft:player_head"},transformation:{translation:[0f,.4f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,1f],scale:[.8f,.8f,.8f]},Tags:[cc_menu_item,cc_menu_item_1]}
summon minecraft:text_display ~ ~ ~ {alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: '"Add Player"', text_opacity: 255, billboard: "vertical", transformation: {left_rotation: [0.0f, 0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7f, 0.7f, 0.7f], translation: [0.0f, 0.3f, 0.0f]},Tags:[cc_menu_item,cc_menu_item_1]}


summon block_display ~ ~ ~ {Tags:["bobanimation","bobanimation_root","cc_menu_item","cc_menu_item_1"]}
execute as @e[tag=bobanimation_root,tag=cc_menu_item_1,type=block_display,distance=..1,limit=1,sort=nearest] at @s run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:copper_bulb",Count:1},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,1f],scale:[.4f,.4f,.4f]},Tags:["bobanimation_0","cc_menu_item","cc_menu_item_1"]}],Tags:["bobanimation","cc_menu_item","cc_menu_item_1"]}

summon interaction ~ ~ ~ {Tags:["cc_menu_item","cc_menu_item_1","menu_add_player"],response:true,width:0.4f,height:0.4f}