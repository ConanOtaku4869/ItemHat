function item_hat:init

scoreboard players set $result hat 0
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players set $result hat 1
execute unless data entity @s SelectedItem run scoreboard players set $result hat 2
execute if entity @s[gamemode=spectator] run scoreboard players set $result hat 3

execute if score $result hat matches 1.. run playsound block.note_block.bass player @s ~ ~ ~ 1 1
execute if score $result hat matches 1 run tellraw @s {"color":"red","text":"すでにアイテムをかぶっています"}
execute if score $result hat matches 2 run tellraw @s {"color":"red","text":"かぶるアイテムをメインハンドに持つ必要があります"}
execute if score $result hat matches 3 run tellraw @s {"color":"red","text":"スペクテイターモードでは使用できません"}

execute if score $result hat matches 0 at @s run function item_hat:hat