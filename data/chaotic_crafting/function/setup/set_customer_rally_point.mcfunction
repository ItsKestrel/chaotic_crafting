#set location as offset from anchor (-24X 9Z)
execute as @e[type=marker,tag=cc_anchor] at @s run summon marker ~-24 ~ ~9 {Tags:["cc_customer_rally"],data:{name:"Customer Rally Point"}}
