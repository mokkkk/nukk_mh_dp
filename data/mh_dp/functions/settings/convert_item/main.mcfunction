
# コマンド通知対策
    execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
    execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
    gamerule sendCommandFeedback false

# 汎用素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"竜骨"}',Lore:['{"text":"頑強な竜の骨．様々な用途がある．"}']},CustomModelData:10018,MhdpID:19} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/bone

# 火竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"火竜の鱗"}',Lore:['{"text":"火竜の体を覆う鱗．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10000,MhdpID:1} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/reus_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"火竜の甲殻"}',Lore:['{"text":"火竜の体を守る頑丈な甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10001,MhdpID:2} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/reus_1

# 雌火竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"雌火竜の棘"}',Lore:['{"text":"雌火竜の毒を帯びた棘．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10004,MhdpID:5} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/reia_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"雌火竜の甲殻"}',Lore:['{"text":"雌火竜の体を守る頑丈な甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10005,MhdpID:6} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/reia_1

# 角竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"ねじれた角"}',Lore:['{"text":"角竜の代名詞ともいえる頑丈な角．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10012,MhdpID:13} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/diablos_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"角竜の背甲"}',Lore:['{"text":"角竜の体を守る頑丈な甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10013,MhdpID:14} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/diablos_1

# 雷狼竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"雷狼竜の帯電毛"}',Lore:['{"text":"電力を増幅する機能を持つ特殊な体毛．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10014,MhdpID:15} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/zinogre_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"雷狼竜の甲殻"}',Lore:['{"text":"絶縁体にもなる雷狼竜の甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10015,MhdpID:16} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/zinogre_1

# 迅竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"迅竜の鱗"}',Lore:['{"text":"迅竜の体を覆う鱗．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10002,MhdpID:3} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/narga_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"迅竜の黒毛"}',Lore:['{"text":"闇夜に溶ける漆黒の毛．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10003,MhdpID:4} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/narga_1

# 斬竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"斬竜の牙"}',Lore:['{"text":"敵を貫く斬竜の牙．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10006,MhdpID:7} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/dyno_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"斬竜の炎状殻"}',Lore:['{"text":"揺らめく炎を思わせる斬竜の背殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10007,MhdpID:8} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/dyno_1

# 砕竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"砕竜の黒曜甲"}',Lore:['{"text":"砕竜の腕を覆う頑丈な甲殻．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10008,MhdpID:9} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/brachy_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"砕竜の甲殻"}',Lore:['{"text":"爆発にも耐えうる砕竜の甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10009,MhdpID:10} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/brachy_1

# 猛り爆ぜる砕竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"砕竜の撃滅拳"}',Lore:['{"text":"全てを砕く竜の拳を覆う甲殻．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10010,MhdpID:11} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/brachyr_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"不壊の黒曜甲"}',Lore:['{"text":"限界を超えた爆破も耐える砕竜の甲殻．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10011,MhdpID:12} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/brachyr_1

# 轟竜素材
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"轟竜の牙"}',Lore:['{"text":"全てを噛み砕く轟竜の牙．"}','{"text":"武器の素材として使用される．"}']},CustomModelData:10016,MhdpID:17} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/tiga_0
    execute store result score #mhdp_temp_count AsaMatrix run clear @s clock{display:{Name:'{"text":"轟竜の鱗"}',Lore:['{"text":"強者の体を守る，頑丈な鱗．"}','{"text":"防具の素材として使用される．"}']},CustomModelData:10017,MhdpID:18} 511
    execute if score #mhdp_temp_count AsaMatrix matches 1.. run function mh_dp:settings/convert_item/tiga_1

    tellraw @s {"text":"【アイテムの変換が完了しました】"}
# 終了
    schedule function mh_dp:settings/ui/set_gamerule 2t replace