
tag @s add Dead

# 周辺モンスターのデスポチェック
execute as @e[tag=MonsterRoot] at @s unless entity @a[tag=!Dead,distance=0..64] run function mh_dp:animation/despawn

# ターゲットタグ消去
tag @s remove ReusTarget
tag @s remove ReusAttackTarget

tag @s remove DiablosTarget
tag @s remove DiablosAttackTarget

tag @s remove ZinogreTarget
tag @s remove ZinogreAttackTarget

tag @s remove ReiaTarget
tag @s remove ReiaAttackTarget

tag @s remove NargaTarget
tag @s remove NargaAttackTarget

tag @s remove Dead