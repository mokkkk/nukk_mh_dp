
# 色変更
    setblock 0 -64 0 oak_sign
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 0 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"red","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 1 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"#FF8000","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 2 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"yellow","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 3 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"green","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 4 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"aqua","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 5 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"gray","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    execute if score #mhdp_temp_sharp_color AsaMatrix matches 6 run data merge block 0 -64 0 {Text1:'[{"text":"","color":"light_purple","italic":false},{"nbt":"Temp.Weapon.tag.MhdpStatus.Name","storage":"mhdp:"}]'}
    data modify storage mhdp: Temp.Weapon.tag.display.Name set from block 0 -64 0 Text1
    item modify entity @s weapon.mainhand mh_dp:weapon/name

# 終了
    setblock 0 -64 0 bedrock