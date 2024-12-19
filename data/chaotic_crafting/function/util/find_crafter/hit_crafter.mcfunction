scoreboard players set #hit cc_crafter_ray 1

#tellraw @a {"text": "Crafter Found"}
summon armor_stand ~ ~ ~ {Tags:[crafter_marker,new_crafter],attributes:[{id:"generic.scale",base:0.8}],Invisible:1b,Invulnerable:1b,NoGravity:1b,Small:1b}
#execute as @e[type=armor_stand,limit=1,sort=nearest] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
summon marker ~ ~ ~ {Tags:[debug_marker,crafter_marker,new_crafter]}