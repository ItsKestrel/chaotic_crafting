$data modify entity @e[type=wandering_trader,tag=cc_merchant,limit=1] Offers.Recipes append value {buy: $(cost), sell: $(item), priceMultiplier: 0.05f, maxUses: 2}