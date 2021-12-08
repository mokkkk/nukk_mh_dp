
particle crimson_spore ~ ~0.1 ~ 0.3 0.1 0.3 1 1
# execute if predicate asa_animator:random/010 run particle lava ~ ~0.1 ~ 0.3 0.1 0.3 1 1

execute unless entity @s[tag=PrepareBomb] if entity @a[distance=0..2] if predicate asa_animator:random/010 run effect give @a[distance=0..3] wither 1 1

scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 2400.. run kill @s