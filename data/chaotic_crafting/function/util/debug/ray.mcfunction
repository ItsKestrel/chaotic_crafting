particle crit ~ ~ ~ 0 0 0 0 1

execute as @e[type=!player,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run effect give @s glowing 1 1 true

execute positioned ^ ^ ^1 run function chaotic_crafting:util/debug/ray