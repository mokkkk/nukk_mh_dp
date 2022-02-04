
execute if score #mhdp_teo_combo_count AsaMatrix matches 0 run tag @s add AnmDashStart
execute if score #mhdp_teo_combo_count AsaMatrix matches 1 run tag @s add AnmDashFly
execute if score #mhdp_teo_combo_count AsaMatrix matches 2 run tag @s add AnmFlyBreath
execute if score #mhdp_teo_combo_count AsaMatrix matches 3.. run tag @s add AnmFlyTackleC
execute if score #mhdp_teo_combo_count AsaMatrix matches 3.. run tag @s remove ComboFB