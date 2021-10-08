[_tb_system_call storage=system/_collection.ks]

*collection

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[tb_show_message_window  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_text mode=3 ]
#&f.name
[er]データセットの収集をしようかな。[r]
[_tb_end_text]

[button  storage="collection.ks"  target="*yes"  graphic="長ボタン/長ボタン_はい.png"  width="635"  height="56"  x="303"  y="22"  _clickable_img=""  ]
[button  storage="collection.ks"  target="*no"  graphic="長ボタン/長ボタン_いいえ.png"  width="635"  height="56"  x="303"  y="78"  _clickable_img=""  ]
[button  storage="collection.ks"  target=""  graphic="ボタン/ボタン-収集.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
#&f.name
[er]やっぱりやめよう。[p]
[_tb_end_text]

[jump  storage="afternoon_move.ks"  target=""  ]
[s  ]
*yes

[tb_start_text mode=4 ]
[cm]収集中
[_tb_end_text]

[delay  speed="1000"  ]
[tb_start_text mode=3 ]
・・・[r]
[_tb_end_text]

[delay  speed="30"  ]
[tb_start_tyrano_code]
[cm]
[iscript]
f.collection_random = Math.floor(Math.random()*1001);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.HoF==1"]
@jump target=*HoF1
[else]
@jump target=*HoF0
[endif]
[_tb_end_tyrano_code]

*HoF1

[tb_start_tyrano_code]
[if exp="f.collection_random<50"]
新しいデータセットは獲得できなかった。[l][r]
[elsif exp="(f.collection_random>=51)&&(f.collection_random<550)"]
[eval exp = "f.I_dataset_Fe=f.I_dataset_Fe + 1"]
鉄のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Fe])[r]
[elsif exp="(f.collection_random>=551)&&(f.collection_random<800)"]
[eval exp = "f.I_dataset_Cu=f.I_dataset_Cu + 1"]
銅のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Cu])[l][r]
[elsif exp="(f.collection_random>=801)&&(f.collection_random<900)"]
[eval exp = "f.I_dataset_Ag=f.I_dataset_Ag + 1"]
銀のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Ag])[l]
[elsif exp="(f.collection_random>=901)&&(f.collection_random<970)"]
[if exp="f.I_dataset_Au==-1"]
[eval exp = "f.I_dataset_Au=1"]
[else]
[eval exp = "f.I_dataset_Au=f.I_dataset_Au + 1"]
[endif]
金のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Au])[l][r]
[elsif exp="(f.collection_random>=971)&&(f.collection_random<1001)"]
[if exp="f.I_dataset_Pt==-1"]
[eval exp = "f.I_dataset_Pt=1"]
[else]
[eval exp = "f.I_dataset_Pt=f.I_dataset_Pt + 1"]
[endif]
プラチナのデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Pt])[l][r]
[endif]

[_tb_end_tyrano_code]

[jump  storage="collection.ks"  target="*end"  ]
[s  ]
*HoF0

[tb_start_tyrano_code]
[if exp="f.collection_random<200"]
新しいデータセットは獲得できなかった。[l][r]
[elsif exp="(f.collection_random>=201)&&(f.collection_random<700)"]
[eval exp = "f.I_dataset_Fe=f.I_dataset_Fe + 1"]
鉄のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Fe])[l][r]
[elsif exp="(f.collection_random>=701)&&(f.collection_random<950)"]
[eval exp = "f.I_dataset_Cu=f.I_dataset_Cu + 1"]
銅のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Cu])[l][r]
[elsif exp="(f.collection_random>=951)&&(f.collection_random<995)"]
[eval exp = "f.I_dataset_Ag=f.I_dataset_Ag + 1"]
銀のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Ag])[l][r]
[elsif exp="(f.collection_random>=996)&&(f.collection_random<1001)"]
[if exp="f.I_dataset_Au==-1"]
[eval exp = "f.I_dataset_Au=1"]
[else]
[eval exp = "f.I_dataset_Au=f.I_dataset_Au + 1"]
[endif]
金のデータセットを獲得した！(所持数：[emb exp=f.I_dataset_Au])[l][r]
[endif]

[_tb_end_tyrano_code]

[jump  storage="collection.ks"  target="*end"  ]
[s  ]
*end

[jump  storage="rival_attack.ks"  target=""  ]
[s  ]
