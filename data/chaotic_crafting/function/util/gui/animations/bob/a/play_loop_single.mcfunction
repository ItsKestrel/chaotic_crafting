# bob_animation created via BDEngine

execute as @s[tag=bobanimation_root,type=block_display] at @s run tag @s remove animation_pause
execute as @s[tag=bobanimation_root,type=block_display] at @s run tag @s add animation_loop
execute as @s[tag=bobanimation_root,type=block_display] at @s run function chaotic_crafting:util/gui/animations/bob/k/keyframe_0