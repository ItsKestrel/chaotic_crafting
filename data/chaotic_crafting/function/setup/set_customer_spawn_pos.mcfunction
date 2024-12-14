#set location as offset from anchor (-6X)
execute as @e[type=marker,tag=cc_anchor] at @s run summon marker ~-6 ~ ~1 {Tags:["cc_customer_spawn"],data:{name:"Customer Spawnpoint"}}
