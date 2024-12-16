scoreboard players set $min random 0
scoreboard players operation $max random = $idxUpgrades cc_upgrades
execute run function random:uniform
execute store result score #randUpgrade cc_upgrades run scoreboard players get $out random
#execute run function random:uniform
#execute store result score #randUpgrade2 cc_upgrades run scoreboard players get $out random

#execute if score #randUpgrade1 cc_upgrades = #randUpgrade2 cc_upgrades run function chaotic_crafting:util/gui/upgrades/rand_upgrade