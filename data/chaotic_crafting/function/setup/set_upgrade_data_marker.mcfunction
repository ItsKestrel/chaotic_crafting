execute as @e[type=marker,tag=cc_anchor] at @s run \
    summon marker ~-3 ~ ~14 {\
        Tags:[\
            "cc_upgrade_data"\
        ],\
        data:{\
            name:"Upgrade Data",\
            custom_data:{\
                upgrades:[\
                    {\
                        upgrade:"chaotic_crafting:util/gui/upgrades/menu_item_upgrade_iron"\
                    },\
                    {\
                        upgrade:"chaotic_crafting:util/gui/upgrades/menu_item_upgrade_gold"\
                    },\
                    {\
                        upgrade:"chaotic_crafting:util/gui/upgrades/menu_item_upgrade_diamond"\
                    },\
                    {\
                        upgrade:"chaotic_crafting:util/gui/upgrades/menu_item_upgrade_keep_inv"\
                    },\
                    {\
                        upgrade:"chaotic_crafting:util/gui/upgrades/menu_item_upgrade_wood"\
                    }\
                ]\
            }\
        }\
    }
