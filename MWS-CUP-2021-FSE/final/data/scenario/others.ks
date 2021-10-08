[_tb_system_call storage=system/_others.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_show_message_window  ]
*BGM-return

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
[tb_start_tyrano_code]
[button name="role_button" role="save" graphic="長ボタン/長ボタン_セーブ.png" x=303 y=22]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[button name="role_button" role="load" graphic="長ボタン/長ボタン_ロード.png" x=303 y=78]
[_tb_end_tyrano_code]

[button  storage="item.ks"  target=""  graphic="長ボタン/長ボタン_アイテム図鑑を見る.png"  width="635"  height="56"  x="303"  y="134"  ]
[button  storage="others.ks"  target="*AI"  graphic="長ボタン/長ボタン_社長のAL講座.png"  width="635"  height="56"  x="303"  y="190"  ]
[button  storage="others.ks"  target="*again_tutorial"  graphic="長ボタン/長ボタン_チュートリアルをもう一度見る.png"  width="635"  height="56"  x="303"  y="246"  ]
[button  storage="others.ks"  target="*credit"  graphic="長ボタン/長ボタン_クレジット.png"  width="635"  height="56"  x="303"  y="302"  ]
[button  storage="others.ks"  target="*やめる"  graphic="ボタン/ボタン-やめる.png"  width="233"  height="46"  x="5"  y="181"  name="img_20"  ]
[button  storage="others.ks"  target="*others"  graphic="ボタン/ボタン-そのほか.png"  width="233"  height="46"  x="5"  y="135"  name="img_19"  ]
[s  ]
*AI

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[jump  storage="ai_text.ks"  target=""  ]
[s  ]
*again_tutorial

[tb_start_tyrano_code]
[cm]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[jump  storage="tutorial_text.ks"  target=""  ]
[s  ]
*BGM

[tb_start_tyrano_code]
[cm]
[clearfix name="role_button"]
[if exp="f.BGM==0"]
[cm]
[iscript]
TG.stat.play_bgm = true;
TG.stat.play_se = true;
f.BGM = 1;
[endscript]
BGMをオンにしました。
[else]
[iscript]
TG.stat.play_bgm = false;
TG.stat.play_se = false;
f.BGM=0;
[endscript]
BGMをオフにしました。
[endif]
[_tb_end_tyrano_code]

[jump  storage="others.ks"  target="*BGM-return"  ]
[s  ]
*やめる

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.afternoon==1"]
@jump storage=afternoon.ks
[else]
@jump storage=evening.ks target=*menu
[endif]
[_tb_end_tyrano_code]

[s  ]
*others

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[jump  storage="others.ks"  target=""  ]
[s  ]
*credit

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[jump  storage="credit.ks"  target=""  ]
[s  ]
