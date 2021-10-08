[_tb_system_call storage=system/_item_store.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[if exp="f.afternoon==1"]
[bg storage="20211026/背景_社内_昼_枠なし.png" time="0" ]
[else]
[bg storage="20211026/背景_社内_夜_枠なし.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_17"  ]
*買う

[cm  ]
[tb_start_tyrano_code]
[button graphic="ボタン/ボタン-道具屋.png" x="5" y="135" width="233" height="46"]

[if exp="f.afternoon==1"]
[button graphic="ボタン/ボタン-やめる.png" storage="afternoon.ks" x="5" y="181" width="233" height="46"]
[else]
[button graphic="ボタン/ボタン-やめる.png" storage="evening.ks" target="menu" x="5" y="181" width="233" height="46"]
[endif]
[_tb_end_tyrano_code]

[button  storage="item_store.ks"  target="*鉄のデータセット"  graphic="長ボタン/長ボタン_鉄のデータセット2万G.png"  width="635"  height="56"  x="303"  y="22"  ]
[button  storage="item_store.ks"  target="*銅のデータセット"  graphic="長ボタン/長ボタン_銅のデータセット5万G.png"  width="635"  height="56"  x="303"  y="78"  ]
[button  storage="item_store.ks"  target="*銀のデータセット"  graphic="長ボタン/長ボタン_銀のデータセット5万G.png"  width="635"  height="56"  x="303"  y="134"  ]
[button  storage="item_store.ks"  target="*銅のフィルタリング"  graphic="長ボタン/長ボタン_銅のフィルタリング4万G.png"  width="635"  height="56"  x="303"  y="190"  ]
[button  storage="item_store.ks"  target="*銅のクエリ回数制限"  graphic="長ボタン/長ボタン_銅のクエリ回数制限4万G.png"  width="635"  height="56"  x="303"  y="246"  ]
[button  storage="item_store.ks"  target="*銅のノイズ生成機"  graphic="長ボタン/長ボタン_銅のノイズ生成機4万G.png"  width="635"  height="56"  x="303"  y="302"  ]
[s  ]
*鉄のデータセット

[cm  ]
[tb_start_text mode=3 ]
[er]鉄のデータセットを購入しますか？[r][r]
現在の所持数（市販：[emb exp = "f.I_dataset_Fe_s"]個，収集：[emb exp = "f.I_dataset_Fe"]個）[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Fe_dataset_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Fe_dataset_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Fe_dataset_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 2"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 2"]
[eval exp = "f.I_dataset_Fe_s = f.I_dataset_Fe_s + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]鉄のデータセットを買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Fe_dataset_no

[jump  storage="item_store.ks"  target="*買う"  ]
*銅のデータセット

[cm  ]
[tb_start_text mode=3 ]
[er]銅のデータセットを購入しますか？[r][r]
現在の所持数（市販：[emb exp = "f.I_dataset_Cu_s"]個，収集：[emb exp = "f.I_dataset_Cu"]個）[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Cu_dataset_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Cu_dataset_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Cu_dataset_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 5"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 5"]
[eval exp = "f.I_dataset_Cu_s = f.I_dataset_Cu_s + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]銅のデータセットを買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Cu_dataset_no

[jump  storage="item_store.ks"  target="*買う"  ]
*銀のデータセット

[cm  ]
[tb_start_text mode=3 ]
[er]銀のデータセットを購入しますか？[r][r]
現在の所持数（市販：[emb exp = "f.I_dataset_Ag_s"]個，収集：[emb exp = "f.I_dataset_Ag"]個）[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Ag_dataset_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Ag_dataset_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Ag_dataset_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 10"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 10"]
[eval exp = "f.I_dataset_Ag_s= f.I_dataset_Ag_s + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]銀のデータセットを買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Ag_dataset_no

[jump  storage="item_store.ks"  target="*買う"  ]
*銅のフィルタリング

[cm  ]
[tb_start_text mode=3 ]
[er]銅のフィルタリングを購入しますか？[r][r]
現在の所持数：[emb exp = "f.I_filtering_Cu"]個[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Cu_filtering_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Cu_filtering_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Cu_filtering_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 4"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 4"]
[eval exp = "f.I_filtering_Cu = f.I_filtering_Cu + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]銅のフィルタリングを買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Cu_filtering_no

[jump  storage="item_store.ks"  target="*買う"  ]
*銅のクエリ回数制限

[cm  ]
[tb_start_text mode=3 ]
[er]銅のクエリ回数制限を購入しますか？[r][r]
現在の所持数（[emb exp = "f.I_query_Cu"]個）[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Cu_query_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Cu_query_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Cu_query_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 4"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 4"]
[eval exp = "f.I_query_Cu= f.I_query_Cu + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]銅のクエリ回数制限を買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Cu_query_no

[cm  ]
[jump  storage="item_store.ks"  target="*買う"  ]
*銅のノイズ生成機

[cm  ]
[tb_start_text mode=3 ]
[er]銅のノイズ生成機を購入しますか？[r][r]
現在の所持数（[emb exp = "f.I_noise_Cu"]個）[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_はい.png" target="Cu_noise_yes" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="Cu_noise_no" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*Cu_noise_yes

[cm  ]
[tb_start_tyrano_code]
[if exp = "f.money < 4"]
[cm]
お金が足りません！！[r]
[jump storage="item_store.ks" target="*買う"]
[else]
[eval exp = "f.money = f.money - 4"]
[eval exp = "f.I_noise_Cu= f.I_noise_Cu + 1"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
[er]銅のノイズ生成機を買いました！[r]
[_tb_end_text]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
*Cu_noise_no

[jump  storage="item_store.ks"  target="*買う"  ]
[s  ]
[cm  ]
