summon minecraft:text_display ~ ~ ~ {alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: '"Add Iron Items"', text_opacity: 255, billboard: "vertical", transformation: {left_rotation: [0.0f, 0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.4f, 0.4f, 0.4f], translation: [0.0f, 0.3f, 0.0f]},Tags:[cc_menu_item,cc_upgrade_iron]}


summon block_display ~ ~ ~ {Tags:["bobanimation","bobanimation_root","cc_menu_item","cc_upgrade_iron"]}
execute as @e[tag=bobanimation_root,tag=cc_upgrade_iron,type=block_display,distance=..1,limit=1,sort=nearest] at @s run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:iron_block",Count:1},transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,1f],scale:[.4f,.4f,.4f]},Tags:["bobanimation_0","cc_menu_item","cc_upgrade_iron"]}],Tags:["bobanimation","cc_menu_item","cc_upgrade_iron"]}

summon interaction ~ ~ ~ {Tags:["cc_menu_item","cc_upgrade_iron","menu_upgrade_iron"],response:true,width:0.4f,height:0.4f}