[_tb_system_call storage=system/_ai_menu.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
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
*ai_menu_return

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[if exp="f.AI_seido_1>=0"]
[button  storage="ai_menu.ks"  target="*ai_1"  graphic="長ボタン/長ボタン_1号.png"  width="635"  height="56"  x="303"  y="22"  ]
[endif]

[if exp="f.AI_seido_2>=0"]
[button  storage="ai_menu.ks"  target="*ai_2"  graphic="長ボタン/長ボタン_2号.png"  width="635"  height="56"  x="303"  y="78"  ]
[endif]

[if exp="f.AI_seido_3>=0"]
[button  storage="ai_menu.ks"  target="*ai_3"  graphic="長ボタン/長ボタン_3号.png"  width="635"  height="56"  x="303"  y="134"  ]
[endif]
[_tb_end_tyrano_code]

[button  storage="ai_menu.ks"  target="*やめる"  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  name="img_20"  ]
[button  storage="ai_menu.ks"  target="*ai_menu"  graphic="ボタン/ボタン-AI.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[s  ]
*clicked

[s  ]
*やめる

[tb_start_tyrano_code]
[clearfix name="role_button"
[if eval exp="f.afternoon==1"]
[jump storage="afternoon.ks"]
[elsif eval exp="f.afternoon==0"]
[jump storage="evening.ks" target="*menu"]
[endif]
[_tb_end_tyrano_code]

[s  ]
*ai_menu

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target=""  ]
*ai_1

[tb_start_tyrano_code]
[cm]
[nowait]
AI１号機[r]
精度…[emb exp="f.AI_seido_1"]%[r]
防御率…[emb exp="f.AI_bougyo_1_query"]%，[emb exp="f.AI_bougyo_1_filtering"]%，[emb exp="f.AI_bougyo_1_noise"]%[r]
(against モデル抽出，敵対的サンプル，データ復元)[p]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*target_1"  ]
*ai_2

[tb_start_tyrano_code]
[cm]
[nowait]
AI２号機[r]
精度…[emb exp="f.AI_seido_2"]%[r]
防御率…[emb exp="f.AI_bougyo_2_query"]%，[emb exp="f.AI_bougyo_2_filtering"]%，[emb exp="f.AI_bougyo_2_noise"]%[r]
(against モデル抽出，敵対的サンプル，データ復元)[p]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*target_2"  ]
*ai_3

[tb_start_tyrano_code]
[cm]
[nowait]
AI３号機[r]
精度…[emb exp="f.AI_seido_3"]%[r]
防御率…[emb exp="f.AI_bougyo_3_query"]%，[emb exp="f.AI_bougyo_3_filtering"]%，[emb exp="f.AI_bougyo_3_noise"]%[r]
(against モデル抽出，敵対的サンプル，データ復元)[p]
[endnowait]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*target_3"  ]
[s  ]
*query

[tb_start_tyrano_code]
[cm]
[button  storage="ai_menu.ks"  target="*display_item"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="135"  name="img_20"  ]

[if exp="f.I_query_Cu>0"]
[button  storage="ai_menu.ks"  target="*query_cu"  graphic="長ボタン/長ボタン_銅のクエリ回数制限.png"  width="635"  height="56"  x="303"  y="22"  ]
[endif]
[if exp="f.I_query_Ag>0"]
[button  storage="ai_menu.ks"  target="*query_ag"  graphic="長ボタン/長ボタン_銀のクエリ回数制限.png"  width="635"  height="56"  x="303"  y="78"  ]
[endif]
[if exp="f.I_query_Au>0"]
[button  storage="ai_menu.ks"  target="*query_au"  graphic="長ボタン/長ボタン_金のクエリ回数制限.png"  width="635"  height="56"  x="303"  y="134"  ]
[endif]

[nowait]
どのアイテムを使いますか？[r]
銅のクエリ回数制限…[emb exp="f.I_query_Cu"]個 (10%~30%)[r]
[if exp="f.I_query_Ag>0"]
銀のクエリ回数制限…[emb exp="f.I_query_Ag"]個 (40%~80%)[r]
[endif]
[if exp="f.I_query_Au>0"]
金のクエリ回数制限…[emb exp="f.I_query_Au"]個 (90%~100%)[r]
[endif]
[endnowait]
[_tb_end_tyrano_code]

[s  ]
*filtering

[tb_start_tyrano_code]
[cm]
[button  storage="ai_menu.ks"  target="*display_item"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="135"  name="img_20"  ]

[if exp="f.I_filtering_Cu>0"]
[button  storage="ai_menu.ks"  target="*filtering_cu"  graphic="長ボタン/長ボタン_銅のフィルタリング.png"  width="635"  height="56"  x="303"  y="22"  ]
[endif]
[if exp="f.I_filtering_Ag>0"]
[button  storage="ai_menu.ks"  target="*filtering_ag"  graphic="長ボタン/長ボタン_銀のフィルタリング.png"  width="635"  height="56"  x="303"  y="78"  ]
[endif]
[if exp="f.I_filtering_Au>0"]
[button  storage="ai_menu.ks"  target="*filtering_au"  graphic="長ボタン/長ボタン_金のフィルタリング.png"  width="635"  height="56"  x="303"  y="134"  ]
[endif]

[nowait]
どのアイテムを使いますか？[r]
銅のフィルタリング…[emb exp="f.I_filtering_Cu"]個 (10%~30%)[r]
[if exp="f.I_filtering_Ag>0"]
銀のフィルタリング…[emb exp="f.I_filtering_Ag"]個 (40%~80%)[r]
[endif]
[if exp="f.I_filtering_Au>0"]
金のフィルタリング…[emb exp="f.I_filtering_Au"]個 (90%~100%)[r]
[endif]
[endnowait]
[_tb_end_tyrano_code]

[s  ]
*noise

[tb_start_tyrano_code]
[cm]
[button  storage="ai_menu.ks"  target="*display_item"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="5"  y="135"  name="img_20"  ]

[if exp="f.I_noise_Cu>0"]
[button  storage="ai_menu.ks"  target="*noise_cu"  graphic="長ボタン/長ボタン_銅のノイズ生成機.png"  width="635"  height="56"  x="303"  y="22"  ]
[endif]
[if exp="f.I_noise_Ag>0"]
[button  storage="ai_menu.ks"  target="*noise_ag"  graphic="長ボタン/長ボタン_銀のノイズ生成機.png"  width="635"  height="56"  x="303"  y="78"  ]
[endif]
[if exp="f.I_noise_Au>0"]
[button  storage="ai_menu.ks"  target="*noise_au"  graphic="長ボタン/長ボタン_金のノイズ生成機.png"  width="635"  height="56"  x="303"  y="134"  ]
[endif]

[nowait]
どのアイテムを使いますか？[r]
銅のノイズ生成機…[emb exp="f.I_noise_Cu"]個 (10%~30%)[r]
[if exp="f.I_noise_Ag>0"]
銀のノイズ生成機…[emb exp="f.I_noise_Ag"]個 (40%~80%)[r]
[endif]
[if exp="f.I_noise_Au>0"]
金のノイズ生成機…[emb exp="f.I_noise_Au"]個 (90%~100%)[r]
[endif]
[endnowait]
[_tb_end_tyrano_code]

[s  ]
*query_cu

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Cu_rise = Math.floor(Math.random() * 30) + 10;
[endscript]
[eval exp="f.I_query_Cu = f.I_query_Cu - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_query = f.AI_bougyo_1_query + f.item_Cu_rise"]
[if exp="f.AI_bougyo_1_query >= 100"]
[eval exp ="f.AI_bougyo_1_query = 100"]
[endif]
AI１号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_1_query"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_query = f.AI_bougyo_2_query + f.item_Cu_rise"]
[if exp="f.AI_bougyo_2_query >= 100"]
[eval exp="f.AI_bougyo_2_query = 100"]
[endif]
AI２号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_2_query"]に上昇した！[p]
[elsif exp="f.AI_bougyo_3_query = f.AI_bougyo_3_query + f.item_Cu_rise"]
[if exp="f.AI_bougyo_3_query >= 100"]
[eval exp="f.AI_bougyo_3_query = 100"]
[endif]
AI３号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_3_query"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*query_ag

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Ag_rise = Math.floor(Math.random() * 40) + 40;
[endscript]
[eval exp="f.I_query_Ag = f.I_query_Ag - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_query = f.AI_bougyo_1_query + f.item_Ag_rise"]
[if exp="f.AI_bougyo_1_query >= 100"]
[eval exp="f.AI_bougyo_1_query = 100"]
[endif]
AI１号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_1_query"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_query = f.AI_bougyo_2_query + f.item_Ag_rise"]
[if exp="f.AI_bougyo_2_query >= 100"]
[eval exp ="f.AI_bougyo_2_query = 100"]
[endif]
AI２号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_2_query"]に上昇した！[p]
[elsif exp="f.AI_bougyo_3_query = f.AI_bougyo_3_query + f.item_Ag_rise"]
[if exp="f.AI_bougyo_3_query >= 100"]
[eval exp ="f.AI_bougyo_3_query = 100"]
[endif]
AI３号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_3_query"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*query_au

[tb_start_tyrano_code]
[cm]

;乱数生成して防御率上昇
[iscript]
f.item_Au_rise = Math.floor(Math.random() * 10) + 90;
[endscript]
[eval exp="f.I_query_Au = f.I_query_Au - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_query = f.AI_bougyo_1_query + f.item_Au_rise"]
[if exp="f.AI_bougyo_1_query >= 100"]
[eval exp ="f.AI_bougyo_1_query = 100"]
[endif]
AI１号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_1_query"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_query = f.AI_bougyo_2_query + f.item_Au_rise"]
[if exp="f.AI_bougyo_2_query >= 100"]
[eval exp ="f.AI_bougyo_2_query = 100"]
[endif]
AI２号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_2_query"]に上昇した！[p]
[elsif exp="f.bougyo_target==3"]
[eval exp="f.AI_bougyo_3_query = f.AI_bougyo_3_query + f.item_Au_rise"]
[if exp="f.AI_bougyo_3_query >= 100"]
[eval exp ="f.AI_bougyo_3_query = 100"]
[endif]
AI３号機のモデル抽出に対する防御率は[emb exp="f.AI_bougyo_3_query"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*filtering_cu

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Cu_rise = Math.floor(Math.random() * 30) + 10;
[endscript]
[eval exp="f.I_filtering_Cu = f.I_filtering_Cu - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_filtering = f.AI_bougyo_1_filtering + f.item_Cu_rise"]
[if exp="f.AI_bougyo_1_filtering >= 100"]
[eval exp ="f.AI_bougyo_1_filtering = 100"]
[endif]
AI１号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_1_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_filtering = f.AI_bougyo_2_filtering + f.item_Cu_rise"]
[if exp="f.AI_bougyo_2_filtering >= 100"]
[eval exp ="f.AI_bougyo_2_filtering = 100"]
[endif]
AI２号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_2_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==3"]
[eval exp="f.AI_bougyo_3_filtering = f.AI_bougyo_3_filtering + f.item_Cu_rise"]
[if exp="f.AI_bougyo_3_filtering >= 100"]
[eval exp ="f.AI_bougyo_3_filtering = 100"]
[endif]
AI３号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_3_filtering"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*filtering_ag

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Ag_rise = Math.floor(Math.random() * 40) + 40;
[endscript]
[eval exp="f.I_filtering_Ag = f.I_filtering_Ag - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_filtering = f.AI_bougyo_1_filtering + f.item_Ag_rise"]
[if exp="f.AI_bougyo_1_filtering >= 100"]
[eval exp ="f.AI_bougyo_1_filtering = 100"]
[endif]
AI１号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_1_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_filtering = f.AI_bougyo_2_filtering + f.item_Ag_rise"]
[if exp="f.AI_bougyo_2_filtering >= 100"]
[eval exp ="f.AI_bougyo_2_filtering = 100"]
[endif]
AI２号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_2_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==3"]
[eval exp="f.AI_bougyo_3_filtering = f.AI_bougyo_3_filtering + f.item_Ag_rise"]
[if exp="f.AI_bougyo_3_filtering >= 100"]
[eval exp ="f.AI_bougyo_3_filtering = 100"]
[endif]
AI３号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_3_filtering"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*filtering_au

[tb_start_tyrano_code]
[cm]

;乱数生成して防御率上昇
[iscript]
f.item_Au_rise = Math.floor(Math.random() * 10) + 90;
[endscript]
[eval exp="f.I_filtering_Au = f.I_filtering_Au - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_filtering = f.AI_bougyo_1_filtering + f.item_Au_rise"]
[if exp="f.AI_bougyo_1_filtering >= 100"]
[eval exp ="f.AI_bougyo_1_filtering = 100"]
[endif]
AI１号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_1_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_filtering = f.AI_bougyo_2_filtering + f.item_Au_rise"]
[if exp="f.AI_bougyo_2_filtering >= 100"]
[eval exp ="f.AI_bougyo_2_filtering = 100"]
[endif]
AI２号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_2_filtering"]に上昇した！[p]
[elsif exp="f.bougyo_target==3"]
[eval exp="f.AI_bougyo_3_filtering = f.AI_bougyo_3_filtering + f.item_Au_rise"]
[if exp="f.AI_bougyo_3_filtering >= 100"]
[eval exp ="f.AI_bougyo_3_filtering = 100"]
[endif]
AI３号機の敵対的サンプルに対する防御率は[emb exp="f.AI_bougyo_3_filtering"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*noise_cu

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Cu_rise = Math.floor(Math.random() * 30) + 10;
[endscript]
[eval exp="f.I_noise_Cu = f.I_noise_Cu - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_noise = f.AI_bougyo_1_noise + f.item_Cu_rise"]
[if exp="f.AI_bougyo_1_noise >= 100"]
[eval exp ="f.AI_bougyo_1_noise = 100"]
[endif]
AI１号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_1_noise"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_noise = f.AI_bougyo_2_noise + f.item_Cu_rise"]
[if exp="f.AI_bougyo_2_noise >= 100"]
[eval exp ="f.AI_bougyo_2_noise = 100"]
[endif]
AI２号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_2_noise"]に上昇した！[p]
[elsif exp="f.bougyo_target == 3"]
[eval exp="f.AI_bougyo_3_noise = f.AI_bougyo_3_noise + f.item_Cu_rise"]
[if exp="f.AI_bougyo_3_noise >= 100"]
[eval exp ="f.AI_bougyo_3_noise = 100"]
[endif]
AI３号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_3_noise"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*noise_ag

[tb_start_tyrano_code]
[cm]
;乱数生成して防御率上昇
[iscript]
f.item_Ag_rise = Math.floor(Math.random() * 40) + 40;
[endscript]
[eval exp="f.I_noise_Ag = f.I_noise_Ag - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_noise = f.AI_bougyo_1_noise + f.item_Ag_rise"]
AI１号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_1_noise"]に上昇した！[p]
[if exp="f.AI_bougyo_1_noise >= 100"]
[eval exp ="f.AI_bougyo_1_noise = 100"]
[endif]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_noise = f.AI_bougyo_2_noise + f.item_Ag_rise"]
[if exp="f.AI_bougyo_2_noise >= 100"]
[eval exp ="f.AI_bougyo_2_noise = 100"]
[endif]
AI２号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_2_noise"]に上昇した！[p]
[elsif exp= "f.bougyo_target==3"]
[eval exp="f.AI_bougyo_3_noise = f.AI_bougyo_3_noise + f.item_Ag_rise"]
[if exp="f.AI_bougyo_3_noise >= 100"]
[eval exp ="f.AI_bougyo_3_noise = 100"]
[endif]
AI３号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_3_noise"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*noise_au

[tb_start_tyrano_code]
[cm]

;乱数生成して防御率上昇
[iscript]
f.item_Au_rise = Math.floor(Math.random() * 10) + 90;
[endscript]
[eval exp="f.I_noise_Au = f.I_noise_Au - 1"]

[if exp="f.bougyo_target==1"]
[eval exp="f.AI_bougyo_1_noise = f.AI_bougyo_1_noise + f.item_Au_rise"]
[if exp="f.AI_bougyo_1_noise >= 100"]
[eval exp ="f.AI_bougyo_1_noise = 100"]
[endif]
AI１号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_1_noise"]に上昇した！[p]
[elsif exp="f.bougyo_target==2"]
[eval exp="f.AI_bougyo_2_noise = f.AI_bougyo_2_noise + f.item_Au_rise"]
[if exp="f.AI_bougyo_2_noise >= 100"]
[eval exp ="f.AI_bougyo_2_noise = 100"]
[endif]
AI２号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_2_noise"]に上昇した！[p]
[elsif exp= "f.bougyo_target==3"]
[eval exp= "f.AI_bougyo_3_noise = f.AI_bougyo_3_noise + f.item_Au_rise"]
[if exp="f.AI_bougyo_3_noise >= 100"]
[eval exp ="f.AI_bougyo_3_noise = 100"]
[endif]
AI３号機のデータ復元に対する防御率は[emb exp="f.AI_bougyo_3_noise"]に上昇した！[p]
[endif]

[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*end"  ]
[s  ]
*target_1

[tb_start_tyrano_code]
[eval exp="f.bougyo_target=1"]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*display_item"  ]
[s  ]
*target_2

[tb_start_tyrano_code]
[eval exp="f.bougyo_target=2"]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*display_item"  ]
[s  ]
*target_3

[tb_start_tyrano_code]
[eval exp="f.bougyo_target=3"]
[_tb_end_tyrano_code]

[jump  storage="ai_menu.ks"  target="*display_item"  ]
[s  ]
*display_item

[tb_start_tyrano_code]
[cm]
[button  storage="ai_menu.ks"  target="*ai_menu"  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[button  storage="ai_menu.ks"  target="*query"  graphic="長ボタン/長ボタン_クエリ回数制限を使用する.png"  width="635"  height="56"  x="303"  y="22"  ]
[button  storage="ai_menu.ks"  target="*filtering"  graphic="長ボタン/長ボタン_フィルタリングを使用する.png"  width="635"  height="56"  x="303"  y="78"  ]
[button  storage="ai_menu.ks"  target="*noise"  graphic="長ボタン/長ボタン_ノイズ生成機を使用する.png"  width="635"  height="56"  x="303"  y="134"  ]
[nowait]
どれを使用しますか？[r]
クエリ回数制限はモデル抽出に対する防御率，[r]
フィルタリングは敵対的サンプルに対する防御率，[r]
ノイズ生成機はデータ復元に対する防御率を上昇させます。[r]
[endnowait]
[_tb_end_tyrano_code]

[s  ]
*end

[tb_start_tyrano_code]
[if eval exp="f.afternoon==1"]
[jump storage="afternoon.ks"]
[else]
[jump storage="evening.ks"]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
AIの防御率を上げていたら日が暮れてきた…[p]
[_tb_end_text]

[jump  storage="evening.ks"  target=""  ]
[s  ]
