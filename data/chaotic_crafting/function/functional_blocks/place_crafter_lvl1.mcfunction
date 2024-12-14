#execute if entity @s facing 
execute anchored eyes run execute unless block ~ ~ ~ crafter run setblock ~ ~ ~ crafter
data modify block ~ ~ ~ components set value {"custom_data": {level: 1}}
