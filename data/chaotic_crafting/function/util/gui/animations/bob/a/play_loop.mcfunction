# bob_animation created via BDEngine

execute as @e[tag=bobanimation_root,type=block_display] at @s run tag @s remove animation_pause
execute as @e[tag=bobanimation_root,type=block_display] at @s run tag @s add animation_loop
execute as @e[tag=bobanimation_root,type=block_display] at @s run function chaotic_crafting:util/gui/animations/bob/k/keyframe_0