
# カウンター増加
    scoreboard players add #mhdp_timer AsaMatrix 1

# モンスター自然スポーン処理
    execute if score #mhdp_timer AsaMatrix matches 1800.. as @r at @s run function mh_dp:spawn/main

# プレイヤー処理
    execute as @a at @s run function mh_dp:player/tick

# モンスター処理
    execute if entity @e[type=armor_stand,tag=MonsterRoot,limit=1] as @e[type=armor_stand,tag=MonsterRoot] at @s run function mh_dp:animation/main

# 攻撃用処理
    execute if entity @e[type=marker,tag=MonsterShot,limit=1] as @e[type=marker,tag=MonsterShot] at @s run function mh_dp:shot/main
    execute if entity @e[type=armor_stand,tag=MonsterShot,limit=1] as @e[type=armor_stand,tag=MonsterShot] at @s run function mh_dp:shot/main

# 攻撃先の紐づけをリセット
    execute if entity @a[scores={AttackedEntity=0..}] run function mob_manager:entity_finder/attacked_entity/reset