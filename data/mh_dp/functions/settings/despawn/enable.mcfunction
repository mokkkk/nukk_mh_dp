execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
gamerule sendCommandFeedback false
data modify storage mh_dp:settings Custom.DisableDespawn set value true
tellraw @a {"text":"【MH_DP：ボスモンスターのデスポーンを無効にしました】"}
tellraw @a {"text":"======================！注意！=======================\nモンスターが読み込み範囲外にいる状態で新しいモンスターが召喚されると，意図せぬ挙動を引き起こす可能性があります．\nモンスターを討伐するか，プレイヤー全滅によるデスポーンを確認した後に召喚することをおすすめします．\n===================================================","color": "gold"}
schedule function mh_dp:settings/ui/set_gamerule 2t replace
function mh_dp:settings/ui/show_setting_ui