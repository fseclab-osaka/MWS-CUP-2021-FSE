[_tb_system_call storage=system/_item.ks]

[cm  ]
[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

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
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[button  storage="item.ks"  target="*dataset"  graphic="ボタン/ボタン_データセット.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="item.ks"  target="*filtering"  graphic="ボタン/ボタン_フィルタリング.png"  width="233"  height="46"  y="181"  x="5"  ]
[button  storage="item.ks"  target="*query"  graphic="ボタン/ボタン_クエリ回数制限.png"  width="233"  height="46"  x="5"  y="227"  ]
[button  storage="item.ks"  target="*noise"  graphic="ボタン/ボタン_ノイズ生成機.png"  width="233"  height="46"  x="5"  y="273"  ]
[button  storage="item.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="318"  name="img_19"  ]
[tb_start_tyrano_code]
[er]今までに見つけたアイテムの一覧だ。
[_tb_end_tyrano_code]

[s  ]
*dataset

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
*dataset_return

[button  storage="item.ks"  target="*dataset"  graphic="ボタン/ボタン_データセット.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="item.ks"  target="*filtering"  graphic="ボタン/ボタン_フィルタリング.png"  width="233"  height="46"  y="181"  x="5"  ]
[button  storage="item.ks"  target="*query"  graphic="ボタン/ボタン_クエリ回数制限.png"  width="233"  height="46"  x="5"  y="227"  ]
[button  storage="item.ks"  target="*noise"  graphic="ボタン/ボタン_ノイズ生成機.png"  width="233"  height="46"  x="5"  y="273"  ]
[button  storage="item.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="318"  name="img_19"  ]
[tb_start_tyrano_code]
[button name="I_dataset_Fe" graphic="長ボタン/長ボタン_鉄のデータセット.png" target=*I_dataset_Fe x=303 y=22 ]

[button  name="I_dataset_Cu" graphic="長ボタン/長ボタン_銅のデータセット.png" target=*I_dataset_Cu x=303 y=78]

[button name="I_dataset_Ag" graphic="長ボタン/長ボタン_銀のデータセット.png" target=*I_dataset_Ag x=303 y=134]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_dataset_Au==-1"]
[button name="I_dataset_Au_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_dataset_??? x=303 y=190]
[else]
[button name="I_dataset_Au" graphic="長ボタン/長ボタン_金のデータセット.png" target=*I_dataset_Au x=303 y=190]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_dataset_Pt==-1"]
[button name="I_dataset_Pt_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_dataset_??? x=303 y=246]
[else]
[button name="I_dataset_Pt" graphic="長ボタン/長ボタン_プラチナのデータセット.png" target=*I_dataset_Pt x=303 y=246]
[endif]
[_tb_end_tyrano_code]

[s  ]
*I_dataset_???

[tb_start_tyrano_code]
[cm][nowait]
まだ知らないアイテムだ。
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*I_dataset_Fe

[tb_start_tyrano_code]
[cm][nowait]
鉄のデータセット[r]
(所持数：道具屋入手…[emb exp="f.I_dataset_Fe_s"]　収集入手…[emb exp="f.I_dataset_Fe"])[r]
訓練に使用するとモデルの精度がほんの少し上昇する。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*I_dataset_Cu

[tb_start_tyrano_code]
[cm][nowait]
銅のデータセット[r]
(所持数：道具屋入手…[emb exp="f.I_dataset_Cu_s"]　収集入手…[emb exp="f.I_dataset_Cu"])[r]
訓練に使用するとモデルの精度が少し上昇する。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*I_dataset_Ag

[tb_start_tyrano_code]
[cm][nowait]
銀のデータセット[r]
(所持数：道具屋入手…[emb exp="f.I_dataset_Ag_s"]　収集入手…[emb exp="f.I_dataset_Ag"])[r]
訓練に使用するとモデルの精度が上昇する。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*I_dataset_Au

[tb_start_tyrano_code]
[cm][nowait]
金のデータセット(所持数：[emb exp="f.I_dataset_Au"])[r]
訓練に使用するとモデルの精度がそこそこ上昇する。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*I_dataset_Pt

[tb_start_tyrano_code]
[cm][nowait]
プラチナのデータセット(所持数：[emb exp="f.I_dataset_Pt"])[r]
訓練に使用するとモデルの精度がかなり上昇する。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*dataset_return"  ]
[s  ]
*filtering

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
*filtering_return

[button  storage="item.ks"  target="*dataset"  graphic="ボタン/ボタン_データセット.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="item.ks"  target="*filtering"  graphic="ボタン/ボタン_フィルタリング.png"  width="233"  height="46"  y="181"  x="5"  ]
[button  storage="item.ks"  target="*query"  graphic="ボタン/ボタン_クエリ回数制限.png"  width="233"  height="46"  x="5"  y="227"  ]
[button  storage="item.ks"  target="*noise"  graphic="ボタン/ボタン_ノイズ生成機.png"  width="233"  height="46"  x="5"  y="273"  ]
[button  storage="item.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="318"  name="img_19"  ]
[tb_start_tyrano_code]
[button name="I_filtering_Cu" graphic="長ボタン/長ボタン_銅のフィルタリング.png" target=*I_filtering_Cu x=303 y=22 ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_filtering_Ag==-1"]
[button name="I_filtering_Ag_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_filtering_??? x=303 y=78]
[else]
[button name="I_filtering_Ag" graphic="長ボタン/長ボタン_銀のフィルタリング.png" target=*I_filtering_Ag x=303 y=78]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_filtering_Au==-1"]
[button name="I_filtering_Au_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_filtering_??? x=303 y=134]
[else]
[button name="I_filtering_Au" graphic="長ボタン/長ボタン_金のフィルタリング.png" target=*I_filtering_Au x=303 y=134]
[endif]
[_tb_end_tyrano_code]

[s  ]
*I_filtering_???

[tb_start_tyrano_code]
[cm][nowait]
まだ知らないアイテムだ。
[nowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*filtering_return"  ]
[s  ]
*I_filtering_Cu

[tb_start_tyrano_code]
[cm][nowait]
銅のフィルタリング(所持数：[emb exp="f.I_filtering_Cu"])[r]
敵対的サンプルをたまに防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*filtering_return"  ]
[s  ]
*I_filtering_Ag

[tb_start_tyrano_code]
[cm][nowait]
銀のフィルタリング(所持数：[emb exp="f.I_filtering_Ag"])[r]
敵対的サンプルを防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*filtering_return"  ]
[s  ]
*I_filtering_Au

[tb_start_tyrano_code]
[cm][nowait]
金のフィルタリング(所持数：[emb exp="f.I_filtering_Au"])[r]
敵対的サンプルをほとんど防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*filtering_return"  ]
[s  ]
*query

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
*query_return

[button  storage="item.ks"  target="*dataset"  graphic="ボタン/ボタン_データセット.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="item.ks"  target="*filtering"  graphic="ボタン/ボタン_フィルタリング.png"  width="233"  height="46"  y="181"  x="5"  ]
[button  storage="item.ks"  target="*query"  graphic="ボタン/ボタン_クエリ回数制限.png"  width="233"  height="46"  x="5"  y="227"  ]
[button  storage="item.ks"  target="*noise"  graphic="ボタン/ボタン_ノイズ生成機.png"  width="233"  height="46"  x="5"  y="273"  ]
[button  storage="item.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="318"  name="img_19"  ]
[tb_start_tyrano_code]
[button name="I_query_Cu" graphic="長ボタン/長ボタン_銅のクエリ回数制限.png" target=*I_query_Cu x=303 y=22 ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_query_Ag==-1"]
[button name="I_query_Ag_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_query_??? x=303 y=78]
[else]
[button name="I_query_Ag" graphic="長ボタン/長ボタン_銀のクエリ回数制限.png" target=*I_query_Ag x=303 y=78]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_query_Au==-1"]
[button name="I_query_Au_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_query_??? x=303 y=134]
[else]
[button name="I_query_Au" graphic="長ボタン/長ボタン_金のクエリ回数制限.png" target=*I_query_Au x=303 y=134]
[endif]
[_tb_end_tyrano_code]

[s  ]
*I_query_???

[tb_start_tyrano_code]
[cm][nowait]
まだ知らないアイテムだ。
[nowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*query_return"  ]
[s  ]
*I_query_Cu

[tb_start_tyrano_code]
[cm][nowait]
銅のクエリ回数制限(所持数：[emb exp="f.I_query_Cu"])[r]
モデル抽出攻撃をたまに防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*query_return"  ]
[s  ]
*I_query_Ag

[tb_start_tyrano_code]
[cm][nowait]
銀のクエリ回数制限(所持数：[emb exp="f.I_query_Ag"])[r]
モデル抽出攻撃を防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*query_return"  ]
[s  ]
*I_query_Au

[tb_start_tyrano_code]
[cm][nowait]
金のクエリ回数制限(所持数：[emb exp="f.I_query_Au"])[r]
モデル抽出攻撃をほとんど防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*query_return"  ]
[s  ]
*noise

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
*noise_return

[button  storage="item.ks"  target="*dataset"  graphic="ボタン/ボタン_データセット.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="item.ks"  target="*filtering"  graphic="ボタン/ボタン_フィルタリング.png"  width="233"  height="46"  y="181"  x="5"  ]
[button  storage="item.ks"  target="*query"  graphic="ボタン/ボタン_クエリ回数制限.png"  width="233"  height="46"  x="5"  y="227"  ]
[button  storage="item.ks"  target="*noise"  graphic="ボタン/ボタン_ノイズ生成機.png"  width="233"  height="46"  x="5"  y="273"  ]
[button  storage="item.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="318"  name="img_19"  ]
[tb_start_tyrano_code]
[button name="I_noise_Cu" graphic="長ボタン/長ボタン_銅のノイズ生成機.png" target=*I_noise_Cu x=303 y=22 ]

[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_noise_Ag==-1"]
[button name="I_noise_Ag_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_noise_??? x=303 y=78]
[else]
[button name="I_noise_Ag" graphic="長ボタン/長ボタン_銀のノイズ生成機.png" target=*I_noise_Ag x=303 y=78]
[endif]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.I_query_Au==-1"]
[button name="I_noise_Au_???" graphic="長ボタン/長ボタン_？？？.png" target=*I_noise_??? x=303 y=134]
[else]
[button name="I_noise_Au" graphic="長ボタン/長ボタン_金のノイズ生成機.png" target=*I_noise_Au x=303 y=134]
[endif]
[_tb_end_tyrano_code]

[s  ]
*I_noise_???

[tb_start_tyrano_code]
[cm][nowait]
まだ知らないアイテムだ。
[nowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*noise_return"  ]
[s  ]
*I_noise_Cu

[tb_start_tyrano_code]
[cm][nowait]
銅のノイズ生成機(所持数：[emb exp="f.I_noise_Cu"])[r]
データ復元をたまに防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*noise_return"  ]
[s  ]
*I_noise_Ag

[tb_start_tyrano_code]
[cm][nowait]
銀のノイズ生成機(所持数：[emb exp="f.I_noise_Ag"])[r]
データ復元を防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*noise_return"  ]
[s  ]
*I_noise_Au

[tb_start_tyrano_code]
[cm][nowait]
金のノイズ生成機(所持数：[emb exp="f.I_noise_Au"])[r]
データ復元をほとんど防ぐことができる。[r]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="item.ks"  target="*noise_return"  ]
[s  ]
*others

[jump  storage="others.ks"  target=""  cond=""  ]
[s  ]
