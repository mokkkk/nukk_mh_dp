#declare storage mh_dp:settings
#declare storage mh_dp:status

# 初回ロード
execute unless data storage mh_dp:settings {Setup:true} run function mh_dp:settings/setup/general

# バージョン設定
execute unless score #mhdp_bersion AsaMatrix matches 4.. run function mh_dp:settings/setup/beta50
execute unless score #mhdp_bersion AsaMatrix matches 5.. run function mh_dp:settings/setup/beta60
execute unless score #mhdp_bersion AsaMatrix matches 6.. run function mh_dp:settings/setup/beta70
execute unless score #mhdp_bersion AsaMatrix matches 7.. run function mh_dp:settings/setup/v010

# UI本所持確認
execute as @a run function mh_dp:settings/ui/check
execute unless entity @a[tag=MhdpHasBook] as @r run function mh_dp:settings/ui/give
tag @a remove MhdpHasBook
data remove storage mh_dp:settings Temp