item replace entity @s armor.head from entity @s weapon.mainhand item_hat:set_1
item replace entity @s weapon.mainhand from entity @s weapon.mainhand item_hat:reduce
execute unless predicate item_hat:wearing_armor run playsound item.armor.equip_generic player @a ~ ~ ~ 1 1