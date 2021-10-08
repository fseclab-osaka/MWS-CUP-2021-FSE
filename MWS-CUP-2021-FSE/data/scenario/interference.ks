[_tb_system_call storage=system/_interference.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[button  storage="interference.ks"  target=""  graphic="ボタン/ボタン_妨害.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_9"  ]
[button  storage="afternoon_move.ks"  target=""  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_10"  ]
[tb_start_text mode=3 ]
#&f.name
[er]どこの会社を攻撃しよう？[r]
[_tb_end_text]

[tb_start_tyrano_code]
; 攻撃対象：f.target
; 0：未選択，1：A社，2：B社，3：C社

[button graphic="長ボタン/長ボタン_東郷グループ.png" target="妨害方法選択" x="303" y="22" width="635" height="56" exp="f.attack_target=1"]
[button graphic="長ボタン/長ボタン_田手エレクトロニクス.png" target="妨害方法選択" x="303" y="78" width="635" height="56" exp="f.attack_target=2"]
[button graphic="長ボタン/長ボタン_島山カンパニー.png" target="妨害方法選択" x="303" y="134" width="635" height="56" exp="f.attack_target=3"]
[_tb_end_tyrano_code]

[s  ]
*妨害方法選択

[cm  ]
[button  storage="interference.ks"  target=""  graphic="ボタン/ボタン_妨害.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_9"  ]
[button  storage="afternoon_move.ks"  target=""  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_10"  ]
[tb_start_text mode=3 ]
[er]何をしよう？[r]
[_tb_end_text]

[tb_start_tyrano_code]
; 攻撃方法：f.way
; 0：未選択，1：モデル抽出，2：データ復元，3：敵対的サンプル

[button graphic="長ボタン/長ボタン_モデル抽出50万G.png" target="お金確認" x="303" y="22" width="635" height="56" exp="f.attack_way=1"]
[button graphic="長ボタン/長ボタン_データ復元30万G.png" target="お金確認" x="303" y="78" width="635" height="56" exp="f.attack_way=2"]
[button graphic="長ボタン/長ボタン_敵対的サンプル30万G.png" target="お金確認" x="303" y="134" width="635" height="56" exp="f.attack_way=3"]
[_tb_end_tyrano_code]

[s  ]
*お金確認

[cm  ]
[button  storage="interference.ks"  target=""  graphic="ボタン/ボタン_妨害.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_9"  ]
[button  storage="afternoon_move.ks"  target=""  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_10"  ]
[tb_start_tyrano_code]
[er]

[if exp="f.attack_way==1 && f.money<50 || f.attack_way==2 && f.money<30 || f.attack_way==3 && f.money<30"]
お金が足りない！！！
[wait time=750]
@jump target=*妨害方法選択
[else]
@jump target=*抽出確認
[endif]
[_tb_end_tyrano_code]

[s  ]
*抽出確認

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
#
[er]
[if exp="f.attack_way==1 && f.AI_seido_1<100"]
1号機の精度が
[if exp="f.attack_target==1"]
[emb exp="f.A_name"]のモデルの精度になりますがよろしいですか？
[elsif exp="f.attack_target==2"]
[emb exp="f.B_name"]のモデルの精度になりますがよろしいですか？
[elsif exp="f.attack_target==3"]
[emb exp="f.C_name"]のモデルの精度になりますがよろしいですか？
[endif]

[r](現在の精度：[emb exp="f.AI_seido_1"])

[button graphic="長ボタン/長ボタン_はい.png" target="攻撃確認" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="妨害方法選択" x="303" y="78" width="635" height="56"]

[else]
@jump target=*攻撃確認
[endif]
[_tb_end_tyrano_code]

[s  ]
*攻撃確認

[cm  ]
[button  storage="interference.ks"  target=""  graphic="ボタン/ボタン_妨害.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_9"  ]
[button  storage="afternoon_move.ks"  target=""  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_10"  ]
[tb_start_tyrano_code]
#
[er]
[if exp="f.attack_target==1"]
[emb exp="f.A_name"]に
[elsif exp="f.attack_target==2"]
[emb exp="f.B_name"]に
[elsif exp="f.attack_target==3"]
[emb exp="f.C_name"]に
[endif]

[if exp="f.attack_way==1"]
モデル抽出攻撃を仕掛けます。[r]
（費用：50万G）

[elsif exp="f.attack_way==2"]
データ復元攻撃を仕掛けます。[r]
（費用：30万G）

[elsif exp="f.attack_way==3"]
敵対的サンプル攻撃を仕掛けます。[r]
（費用：30万G）

[endif]

[button graphic="長ボタン/長ボタン_はい.png" target="攻撃" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*攻撃

[tb_start_tyrano_code]
[if exp="f.attack_way==1"]
[eval exp="f.money = f.money - 50"]

[elsif exp="f.attack_way==2"]
[eval exp="f.money = f.money - 30"]

[elsif exp="f.attack_way==3"]
[eval exp="f.money = f.money - 30"]

[endif]
[_tb_end_tyrano_code]

[tb_ptext_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[tb_start_text mode=4 ]
[cm]攻撃中
[_tb_end_text]

[delay  speed="1000"  ]
[tb_start_text mode=3 ]
・・・[r]
[_tb_end_text]

[delay  speed="30"  ]
[tb_start_tyrano_code]
[iscript]
f.attack_random = Math.floor(Math.random() * 100);
[endscript]

[er]

[if exp="f.attack_target==1 && f.attack_random < 20 || f.attack_target==2 && f.attack_random < 50 || f.attack_target==3 && f.attack_random < 80"]

[if exp="f.attack_way==1"]
@jump target=*モデル抽出

[elsif exp="f.attack_way==2"]
@jump target=*データ復元

[elsif exp="f.attack_way==3"]
@jump target=*敵対的サンプル

[endif]

[else]
攻撃が失敗しました。[l]
[wait time=750]
@jump target=*夕方へ

[endif]
[_tb_end_tyrano_code]

[s  ]
*モデル抽出

[tb_start_tyrano_code]
[er]
[if exp="f.attack_target==1"]
[eval exp="f.extract_seido = f.A_AI_seido"]
[emb exp="f.A_name"]の
[elsif exp="f.attack_target==2"]
[eval exp="f.extract_seido = f.B_AI_seido"]
[emb exp="f.B_name"]の
[elsif exp="f.attack_target==3"]
[eval exp="f.extract_seido = f.C_AI_seido"]
[emb exp="f.C_name"]の
[endif]
モデルを抽出した！[r]
抽出モデルの精度は[emb exp="f.extract_seido"]です。[l]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[er]
[if exp="f.AI_seido_1<100"]
[eval exp="f.AI_seido_1 = f.extract_seido"]
1号機を抽出したモデルにしました。[l]
@jump target=*夕方へ

[elsif exp="f.AI_seido_2==-1"]
[eval exp="f.AI_seido_2 = f.extract_seido"]
2号機を抽出したモデルにしました。[l]
@jump target=*夕方へ

[elsif exp="f.AI_seido_3==-1"]
[eval exp="f.AI_seido_3=f.extract_seido"]
3号機を抽出したモデルにしました。
@jump target=*夕方へ

[else]
[cm]
消去するモデルを選んでください。
@jump target=*消去モデル選択

[endif]
[_tb_end_tyrano_code]

[s  ]
*消去モデル選択

[cm  ]
[tb_start_tyrano_code]
[button graphic="長ボタン/長ボタン_2号.png" target="消去確認" x="303" y="22" width="635" height="56" exp="f.remove_model=2"]
[button graphic="長ボタン/長ボタン_3号.png" target="消去確認" x="303" y="78" width="635" height="56" exp="f.remove_model=3"]
[_tb_end_tyrano_code]

[s  ]
*消去確認

[tb_start_tyrano_code]
[cm]
[if exp="f.remove_model==2"]
2号機を消去しますか？[r]
精度：[emb exp="f.AI_seido_2"]
[elsif exp="f.remove_model==3"]
3号機を消去しますか？[r]
精度：[emb exp="f.AI_seido_3"]
[endif]

[button graphic="長ボタン/長ボタン_はい.png" target="モデル消去" x="303" y="22" width="635" height="56"]
[button graphic="長ボタン/長ボタン_いいえ.png" target="消去モデル選択" x="303" y="78" width="635" height="56"]
[_tb_end_tyrano_code]

[s  ]
*モデル消去

[tb_start_tyrano_code]
[er]
[if exp="f.remove_model==1"]
1号機を消去しました。
[wait time=500]
[eval exp="f.AI_seido_1=f.extract_seido"]
[elsif exp="f.remove_model==2"]
2号機を消去しました。
[wait time=500]
[eval exp="f.AI_seido_2=f.extract_seido"]
[elsif exp="f.remove_model==3"]
3号機を消去しました。
[wait time=500]
[eval exp="f.AI_seido_3=f.extract_seido"]
[elsif exp="f.remove_model==4"]
抽出モデルを消去しました。
[wait time=500]
[endif]
[_tb_end_tyrano_code]

[jump  storage="interference.ks"  target="*夕方へ"  ]
[s  ]
*データ復元

[tb_start_tyrano_code]
[er]
[if exp="f.attack_target==1"]
[eval exp="f.A_reputation = f.A_reputation - 10"]
[emb exp="f.A_name"]の

[elsif exp="f.attack_target==2"]
[eval exp="f.B_reputation = f.B_reputation - 10"]
[emb exp="f.B_name"]の

[elsif exp="f.attack_target==3"]
[eval exp="f.C_reputation = f.C_reputation - 10"]
[emb exp="f.C_name"]の

[endif]

社会的信用度が10下がった。
[wait time=500]
[_tb_end_tyrano_code]

[jump  storage="interference.ks"  target="*夕方へ"  ]
[s  ]
*敵対的サンプル

[tb_start_tyrano_code]
[er]

[if exp="f.attack_target==1"]
[eval exp="f.A_AI_seido = f.A_AI_seido - 5"]
[eval exp="f.A_reputation = f.A_reputation - 10"]
[emb exp="f.A_name"]の

[elsif exp="f.attack_target==2"]
[eval exp="f.B_AI_seido = f.B_AI_seido - 5"]
[eval exp="f.B_reputation = f.B_reputation - 10"]
[emb exp="f.B_name"]の

[elsif exp="f.attack_target==3"]
[eval exp="f.C_AI_seido = f.C_AI_seido - 5"]
[eval exp="f.C_reputation = f.C_reputation - 10"]
[emb exp="f.C_name"]の

[endif]

モデルの精度が5%，[r]
社会的信用度が10下がった。
[wait time=500]
[_tb_end_tyrano_code]

[jump  storage="interference.ks"  target="*夕方へ"  ]
*夕方へ

[jump  storage="rival_attack.ks"  target=""  ]
[s  ]
