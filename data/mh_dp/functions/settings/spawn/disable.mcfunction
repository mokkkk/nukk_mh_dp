execute store result storage mh_dp:settings Temp int 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
data modify storage mh_dp:settings Custom.EnableBossSpawn set value false
tellraw @a {"text":"【MH_DP：ボスモンスターの出現を無効にしました】"}
schedule function mh_dp:settings/ui/set_gamerule 2t
function mh_dp:settings/ui/show_setting_ui