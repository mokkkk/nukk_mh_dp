# MH_DP
minecraftにボスモンスターを追加するデータパック

## これは何？

Minecraftに，様々なボスモンスターを追加します．

## 機能

草原や森バイオームに居ると，まれにボスモンスターが出現します．かなりの強敵のため，注意してください．

何度もボスモンスターが出現して面倒臭くなったときは，/function mh_dp:settings/spawn_disable を実行してください．もう一度ボスモンスター達に会いたくなった時は，/function mh_dp:settings/spawn_enableを実行してください．

出現するボスモンスターと，強制召喚用のコマンドは以下の通りです．

- 火竜：
  - 出現バイオーム：草原，森林など
  - 強制召喚： /function asa_animator:reus/manager/summon

- 雌火竜：
  - 出現バイオーム：草原，森林など
  - 強制召喚： /function asa_animator:reia/manager/summon

- 角竜：
  - 出現バイオーム：砂漠
  - 強制召喚： /function asa_animator:diablos/manager/summon
  
- 雷狼竜：
  - 出現バイオーム：草原，森林など
  - 強制召喚： /function asa_animator:zinogre/manager/summon

## インストール

ダウンロードしたデータパックをworld内のdatapacksフォルダに入れてください．

同梱のリソースパックを各自Minecraftのresourcepacksフォルダに入れて下さい．

## 注意事項

Minecraft JavaEdition ver1.17.1でのみ動作確認済みです．それ未満のバージョンでの動作は保証できず，統合版には対応していません．

## ライセンス

本データパック(asa_animator および mh_dp)は，自由に分解，改変，コピペしていただいて大丈夫です．ただし，丸ごと再配布する場合は@nukknu99までご連絡をお願いします．

ただし，同梱リソースパックについては，本データパック以外への利用は個人的利用のみに留めてください．

## ライブラリ

本データパックは，以下のライブラリを使用させていただきました．

赤石愛様
- ScoreToHealth(https://github.com/Ai-Akaishi/ScoreToHealth)
- AiMath(https://github.com/Ai-Akaishi/AiMath)
  
ちぇん様
- ScoreDamage(https://github.com/ChenCMD/MCCMD-ScoreDamage)
