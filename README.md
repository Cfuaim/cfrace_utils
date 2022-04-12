# cfrace_utils
MinecraftJEでレースを楽しむためのdatapackです。

o: できること
* アイテムの自動配布
* エフェクトの常時付与
* リアルタイム順位表示
* ラップ/ゴールタイムの表示
* ワールド内/個人記録の保存

x: できないこと
* コースの建築の補助
# 動作要件 / Requirement
MinecraftJE 1.18.2
# 使い方 / How To Use
詳細は[wiki](https://github.com/Cfuaim/cfrace_utils/wiki)を参照してください

0: 事前準備

	0.1: コースを用意する
  
	0.2: cfrace_utilsを導入する (サンプルワールドに新規で建築した場合は不要)
  
1: コースを登録する

	1.1: /function #cfrace_utils:course を実行してコースマネージャーを起動する
  
	1.2: 「新規コース作成」を選択して右クリック
  
	1.3: スタート地点で「ノード設置」を選択して右クリック
  
	1.4: コースを一周してスタート地点に戻ってきたら「完成」を選択して右クリック
  
	1.5: 「終了」を選択して右クリックしてコースマネージャーを終了する
  
2: レースを遊ぶ

	2.1: レースの準備を整える (アイテム/effect等)
  
	2.2: レース参加用スコアを1にする (/scoreboard players set @s cfru_ra_pl_part 1)
  
	2.3: コースのスタート地点で /function #cfrace_utils:race を実行してレースを開始します
