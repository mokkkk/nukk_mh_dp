#declare storage mh_dp:settings
#declare storage mh_dp:status

# 初回ロード
execute unless data storage mh_dp:settings {Setup:true} run function mh_dp:settings/setup/general

# バージョン設定
execute unless data storage mh_dp:settings {Version:"Beta4.1"} run function mh_dp:settings/setup/beta41

# UI本所持確認
execute as @a run function mh_dp:settings/ui/check
execute unless entity @a[tag=MhdpHasBook] as @r run function mh_dp:settings/ui/give
tag @a remove MhdpHasBook
data remove storage mh_dp:settings Temp