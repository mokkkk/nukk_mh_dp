
# エフェクト
    particle flash ~ ~ ~ 1 1 1 0 100
    particle end_rod ~ ~ ~ 0 0 0 1 10
    playsound block.enchantment_table.use master @a ~ ~ ~ 2 2

# 近くのモンスターのmanager/item/flash実行
    execute as @e[type=armor_stand,tag=MonsterRoot,distance=..20] at @s run function mh_dp:item/flash/flash_

# 終了
    kill @s