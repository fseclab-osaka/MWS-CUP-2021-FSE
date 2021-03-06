[_tb_system_call storage=system/_contest_4.ks]

[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_外_枠なし_表示なし.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ライバル"  time="0"  wait="false"  storage="chara/4/ライバル_2.png"  width="476"  height="715"  left="480"  top="-78"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_ライバル_2.png"  width="230"  height="225"  x="3"  y="412"  name="img_6"  ]
[tb_start_text mode=1 ]
#一条尊
[er]今回は、俺様が自ら作成した最強AIだっ！[r] [p]
だから、負けるわけがない。無駄な頑張りご苦労様。 [p]
理解できてないようだから、俺が教えてやろう。[p]
#
[_tb_end_text]

[chara_mod  name="ライバル"  time="0"  cross="true"  storage="chara/4/ライバル_3.png"  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="0"  storage="default/顔/顔_ライバル_3.png"  width="230"  height="225"  x="3"  y="412"  name="img_10"  ]
[tb_start_text mode=1 ]
#一条尊
[er]俺がこのコンテストのフィナーレを派手に飾るということをな！！ [p]
#
[_tb_end_text]

[chara_hide  name="ライバル"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="同僚"  time="0"  wait="false"  storage="chara/2/同僚_C.png"  width="447"  height="633"  left="228"  top="7"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_同僚_C.png"  width="230"  height="225"  ]
[tb_start_text mode=1 ]
#同僚
[er]最終コンテストなだけあって、いつにもましてはなにつくでやんすね。 [p]
でも、こっちも絶対まけてないでやんす！ [p]
今までの成果をみせつけてやるでやんすよっ！！ [p]
#
[_tb_end_text]

[chara_hide  name="同僚"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_コンテスト_枠なし.png"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[chara_show  name="司会者"  time="000"  wait="false"  storage="chara/5/司会者_通常.png"  width="400"  height="600"  left="287"  top="38"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_司会者_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_18"  ]
[tb_start_text mode=1 ]
#司会者
[er]さて、とうとう最終コンテストを迎えました！ [p]
今回の優勝賞金は、１億G！！！！ [p]
この巨額の富を手にするのはいったいだれなのでしょうか！？ [p]
気になる勝負は一瞬です！ [p]
では、最後の結果発表へ参ります！！ [p]
[_tb_end_text]

[chara_move  name="司会者"  anim="false"  time="300"  effect="linear"  wait="true"  left="-75"  top="38"  width="400"  height="533"  ]
[bg  time="0"  method="crossfade"  storage="20211026/背景_コンテスト_表彰.png"  ]
[tb_start_text mode=4 ]
[cm]審査中
[_tb_end_text]

[delay  speed="1000"  ]
[tb_start_text mode=3 ]
・・・[r]
[_tb_end_text]

[delay  speed="30"  ]
[tb_start_tyrano_code]
[layopt layer=1 visible=true]
;ライバル社の精度更新
[eval exp = "f.A_AI_seido = f.A_AI_seido + 5"]
[eval exp = "f.B_AI_seido = f.B_AI_seido + 5"]
[eval exp = "f.C_AI_seido = f.C_AI_seido + 5"]

[if exp = "f.C_AI_seido < f.AI_seido_1 || f.C_AI_seido < f.AI_seido_2 || f.C_AI_seido < f.AI_seido_3"]
[if exp = "f.B_AI_seido < f.AI_seido_1 || f.B_AI_seido < f.AI_seido_2 || f.B_AI_seido < f.AI_seido_3"]
[if exp = "f.A_AI_seido < f.AI_seido_1 || f.A_AI_seido < f.AI_seido_2 || f.A_AI_seido < f.AI_seido_3"]
[eval exp = "f.C_name = f.B_name"]
[eval exp = "f.B_name = f.A_name"]
[eval exp = "f.A_name = f.company_name"]
[image layer="1" x="440" y="267" storage="default/画面素材/文字_田手エレクトロニクス.png" width = "500" hight = "60" time = "0"]
[er]第３位は[emb exp = "f.C_name"]！[p]
[image layer="1" x="440" y="161" storage="default/画面素材/文字_東郷グループ.png" width = "500" hight = "60" time = "0"]
第２位は[emb exp = "f.B_name"]！[p]
[image layer="1" x="440" y="55" storage="default/画面素材/文字_藤原コーポレーション.png" width = "500" hight = "60" time = "0"]
第１位は[emb exp = "f.A_name"]！[p]

[else]
[eval exp = "f.C_name = f.B_name"]
[eval exp = "f.B_name = f.company_name"]
[image layer="1" x="440" y="267" storage="default/画面素材/文字_田手エレクトロニクス.png" width = "500" hight = "60" time = "0"]
[er]第３位は[emb exp = "f.C_name"]！[r][p]
[image layer="1" x="440" y="161" storage="default/画面素材/文字_藤原コーポレーション.png" width = "500" hight = "60" time = "0"]
第２位は[emb exp = "f.B_name"]！[r][p]
[image layer="1" x="440" y="55" storage="default/画面素材/文字_東郷グループ.png" width = "500" hight = "60" time = "0"]
第１位は[emb exp = "f.A_name"]です！！[r][p]
[endif]
[else]
[eval exp = "f.C_name = f.company_name"]
[image layer="1" x="440" y="267" storage="default/画面素材/文字_藤原コーポレーション.png" width = "500" hight = "60" time = "0"]
[er]第３位は[emb exp = "f.C_name"]！[r][p]
[image layer="1" x="440" y="161" storage="default/画面素材/文字_田手エレクトロニクス.png" width = "500" hight = "60" time = "0"]
第２位は[emb exp = "f.B_name"]！[r][p]
[image layer="1" x="440" y="55" storage="default/画面素材/文字_東郷グループ.png" width = "500" hight = "60" time = "0"]
第１位は[emb exp = "f.A_name"]です！！[r][p]
[endif]
[else]
[image layer="1" x="440" y="267" storage="default/画面素材/文字_島山カンパニー.png" width = "500" hight = "60" time = "0"]
[er]第３位は[emb exp = "f.C_name"]！[r][p]
[image layer="1" x="440" y="161" storage="default/画面素材/文字_田手エレクトロニクス.png" width = "500" hight = "60" time = "0"]
第２位は[emb exp = "f.B_name"]！[r][p]
[image layer="1" x="440" y="55" storage="default/画面素材/文字_東郷グループ.png" width = "500" hight = "60" time = "0"]
第１位は[emb exp = "f.A_name"]です！！[r][p]
[endif]
[_tb_end_tyrano_code]

[tb_start_text mode=4 ]
#司会者
[er]コンテスト優勝は[emb exp = "f.A_name"]です！！　素晴らしいコンテストでした！！[p]
そして、 [emb exp = "f.A_name"]には優勝賞金１億Gが授与されます！！[p]
このコンテストを締め括るのにふさわしいAIでした！！
おめでとうございます！！[p]
#
[_tb_end_text]

[chara_hide  name="司会者"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[iscript]
f.contest_subprize = Math.floor(Math.random()*3)
[endscript]

[freeimage layer = 1 time= "0"]
[if exp = "f.A_name == '藤原コーポレーション']
[eval exp = "f.money = f.money + 10000"]
[if exp = "f.contest_subprize == 0"]
[eval exp = "f.I_filtering_Au = f.I_filtering_Au + 1"]
賞金として１億G、副賞として金のフィルタリングを１つ獲得しました。[p]
[else]
[if exp = "f.contest_subprize == 1"]
[eval exp = "f.I_query_Au = f.I_query_Au + 1"]
賞金として１億G、副賞として金のクエリ回数制限を１つ獲得しました。[p]
[else]
[if exp = "f.contest_subprize == 2"]
[eval exp = "f.I_noise_Au = f.I_noise_Au + 1"]
賞金として１億G、副賞として金のノイズ生成機を１つ獲得しました。[p]
[endif]
[endif]
[endif]
[else]
[if exp = "f.B_name == '藤原コーポレーション']
[eval exp = "f.money = f.money + 5000"]
[if exp = "f.contest_subprize == 0"]
[eval exp = "f.I_filtering_Ag = f.I_filtering_Ag + 1"]
賞金として５０００万G、副賞として銀のフィルタリングを１つ獲得しました。[p]
[else]
[if exp = "f.contest_subprize == 1"]
[eval exp = "f.I_query_Ag = f.I_query_Ag + 1"]
賞金として５０００万G、副賞として銀のクエリ回数制限を１つ獲得しました。[p]
[else]
[if exp = "f.contest_subprize == 2"]
[eval exp = "f.I_noise_Ag = f.I_noise_Ag + 1"]
賞金として５０００万G、副賞として銀のノイズ生成機を１つ獲得しました。[p]
[endif]
[endif]
[endif]
[endif]
[endif]
[_tb_end_tyrano_code]

[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[bg  time="0"  method="crossfade"  storage="20211026/背景_コンテスト_枠なし.png"  ]
[tb_start_tyrano_code]
[freeimage layer = 1 time= "0"]
[if exp = "f.A_name == '藤原コーポレーション']
[jump storage = "ending_happy.ks" target = ""]
[else]
[jump storage = "ending_bad.ks" target = ""]
[endif]

[_tb_end_tyrano_code]

[s  ]
