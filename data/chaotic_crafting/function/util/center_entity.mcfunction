#tellraw @a {"text": "Centering Entity"}
# Center an entity on its current block (x and z coordinates)
execute store result score $x cc_temp run data get entity @s Pos[0] 1
execute store result score $y cc_temp run data get entity @s Pos[1] 1
execute store result score $z cc_temp run data get entity @s Pos[2] 1

scoreboard players operation $x cc_temp *= $10 cc_temp
scoreboard players operation $y cc_temp *= $10 cc_temp
scoreboard players operation $z cc_temp *= $10 cc_temp

scoreboard players operation $x cc_temp += $5 cc_temp
scoreboard players operation $z cc_temp += $5 cc_temp

execute store result storage cc:temp tempX double 0.1 run scoreboard players get $x cc_temp
execute store result storage cc:temp tempY double 0.1 run scoreboard players get $y cc_temp
execute store result storage cc:temp tempZ double 0.1 run scoreboard players get $z cc_temp

data modify entity @s Pos[0] set from storage cc:temp tempX
data modify entity @s Pos[1] set from storage cc:temp tempY
data modify entity @s Pos[2] set from storage cc:temp tempZ