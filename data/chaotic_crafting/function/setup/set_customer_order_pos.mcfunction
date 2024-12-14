#set location as offset from anchor (-16X 13Z)
#execute store result score $anchor_X util run data get entity @s Pos[0] 1
#scoreboard players operation $seat_1_X cc_seats = $anchor_X util
#scoreboard players operation $seat_1_X cc_seats -= 


execute as @e[type=marker,tag=cc_anchor] at @s run summon marker ~-16 ~ ~13 {Tags:["cc_seat_1"],data:{name:"Seat 1"}}

#Stores location in scoreboard
execute store result score $seat_1_X cc_seats run data get entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[0] 1
execute store result score $seat_1_Y cc_seats run data get entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[1] 1
execute store result score $seat_1_Z cc_seats run data get entity @e[type=marker,tag=cc_seat_1,limit=1] Pos[2] 1