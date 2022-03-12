
# loot用タグ追加
function mh_dp:spawn/add_tag

# モンスター数取得
execute store result score #mhdp_monster_count AsaMatrix run execute if entity @e[type=armor_stand,tag=MonsterRoot]
# 決定
execute if score #mhdp_monster_count AsaMatrix matches ..1 run loot spawn ~ 0 ~ loot mh_dp:spawn/hard

# 火竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:1}}}] run function asa_animator:reus/manager/summon
# 角竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:2}}}] run function asa_animator:diablos/manager/summon
# 雷狼竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:3}}}] run function asa_animator:zinogre/manager/summon
# 雌火竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:4}}}] run function asa_animator:reus/manager/summon
# 迅竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:5}}}] run function asa_animator:narga/manager/summon
# 斬竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:6}}}] run function asa_animator:dyno/manager/summon
# 砕竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:7}}}] run function asa_animator:brachy/manager/summon
# 轟竜
execute if entity @e[type=item,nbt={Item:{tag:{SpawnID:8}}}] run function asa_animator:tiga/manager/summon
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