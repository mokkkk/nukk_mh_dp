
particle crimson_spore ~ ~0.1 ~ 0.3 0.1 0.3 1 1
execute if predicate asa_animator:random/010 run particle lava ~ ~0.1 ~ 0.3 0.1 0.3 1 1

# effect give @a[distance=0..4] slowness 1 0

scoreboard players add @s AsaMatrix 1
execute if score @s AsaMatrix matches 2400.. run kill @s
# execute if score @s AsaMatrix matches 100.. positioned ~ ~1.4 ~ run function asa_animator:brachyr/manager/bomb/damage_large