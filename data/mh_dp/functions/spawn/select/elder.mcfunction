
# loot用タグ追加
function mh_dp:spawn/add_tag

# モンスター数取得
execute store result score #mhdp_monster_count AsaMatrix run execute if entity @e[type=armor_stand,tag=MonsterRoot]
# 決定
execute if score #mhdp_monster_count AsaMatrix matches ..1 run loot spawn ~ 0 ~ loot mh_dp:spawn/elder

# 鋼龍
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:9}}}] run function asa_animator:kushala/manager/summon
# 炎王龍
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:10}}}] run function asa_animator:teo/manager/summon
# 霞龍
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:11}}}] run function asa_animator:nazuti/manager/summon
# 極龍
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:12}}}] run function asa_animator:ruko/manager/summon

# loot用タグ消去
function mh_dp:spawn/remove_tag

# しばらく湧かなくする(最低10分)
scoreboard players set #mhdp_timer AsaMatrix -12000

# 終了
kill @e[type=item,nbt={Item:{tag:{SpawnPaper:1}}}]