
# カウンター増加
scoreboard players add #mhdp_timer AsaMatrix 1

# スポーン処理
execute if score #mhdp_timer AsaMatrix matches 1200.. as @r at @s run function mh_dp:spawn/main

# アニメーション処理
execute as @e[type=armor_stand,tag=MonsterRoot] at @s run function mh_dp:animation/main