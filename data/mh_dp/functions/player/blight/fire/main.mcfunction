
particle flame ~ ~1 ~ 0.5 0.5 0.5 0.05 1
scoreboard players operation #mhdp_blight MhdpBlightFire = @s MhdpBlightFire
scoreboard players operation #mhdp_blight MhdpBlightFire %= #asam_const_sec AsaMatrix

execute if score #mhdp_blight MhdpBlightFire matches 0 run function mh_dp:player/blight/fire/damage

execute if entity @s[scores={MhdpBlightFire=..0}] run tag @s remove BlightFire