# 火炎耐性
    data modify storage mhdp: Armor set value []
    data modify storage mhdp: Armor append from entity @s Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
    data modify storage mhdp: Armor append from entity @s Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
    data modify storage mhdp: Armor append from entity @s Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
    data modify storage mhdp: Armor append from entity @s Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:blast_protection"}].lvl
# 明示的に0に設定
    scoreboard players set $mhdp_epf AsaMatrix 0
# 足
    execute store result score $mhdp_temp AsaMatrix run data get storage mhdp: Armor[0]
    scoreboard players operation $mhdp_epf AsaMatrix += $mhdp_temp AsaMatrix
# 脚
    execute store result score $mhdp_temp AsaMatrix run data get storage mhdp: Armor[1]
    scoreboard players operation $mhdp_epf AsaMatrix += $mhdp_temp AsaMatrix
# 胸
    execute store result score $mhdp_temp AsaMatrix run data get storage mhdp: Armor[2]
    scoreboard players operation $mhdp_epf AsaMatrix += $mhdp_temp AsaMatrix
# 頭
    execute store result score $mhdp_temp AsaMatrix run data get storage mhdp: Armor[3]
    scoreboard players operation $mhdp_epf AsaMatrix += $mhdp_temp AsaMatrix
# リセット
    scoreboard players reset $mhdp_temp AsaMatrix
    data remove storage mhdp: Armor