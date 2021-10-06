
# loot用タグ追加
function mh_dp:spawn/add_tag

# モンスター数取得
execute store result score #mhdp_monster_count AsaMatrix run execute if entity @e[type=armor_stand,tag=MonsterRoot]
# 決定
execute if score #mhdp_monster_count AsaMatrix matches ..1 run loot spawn ~ 0 ~ loot mh_dp:spawn

# 火竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:1}}}] unless entity @e[type=armor_stand,tag=ReusRoot] run function asa_animator:reus/manager/summon
# 角竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:2}}}] unless entity @e[type=armor_stand,tag=DiablosRoot] run function asa_animator:diablos/manager/summon
# 雷狼竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:3}}}] unless entity @e[type=armor_stand,tag=ReusRoot] run function asa_animator:zinogre/manager/summon

# loot用タグ消去
function mh_dp:spawn/remove_tag

# しばらく湧かなくする(最低5分)
scoreboard players set #mhdp_timer AsaMatrix -6000

# 終了
kill @e[type=item,nbt={Item:{tag:{SpawnPaper:1}}}]