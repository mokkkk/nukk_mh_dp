execute store result storage mh_dp:settings Temp int 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
data modify storage mh_dp:settings Custom.EnableBossSpawn set value true
tellraw @a {"text":"【MH_DP：ボスモンスターの出現を有効にしました】"}
execute if data storage mh_dp:settings {Temp:1} run schedule function mh_dp:settings/ui/set_gamerule 1t
function mh_dp:settings/ui/show_setting_ui