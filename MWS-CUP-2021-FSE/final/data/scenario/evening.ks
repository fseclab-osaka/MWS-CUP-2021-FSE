[_tb_system_call storage=system/_evening.ks]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[jump  storage="user_fee.ks"  target=""  ]
*after_calc

[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[iscript]
f.afternoon = 0;
[endscript]

[bg  time="0"  method="crossfade"  storage="20211026/背景_社内_夜_枠なし.png"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[tb_image_show  time="1"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_10"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
*menu

[cm  ]
[tb_start_text mode=3 ]
#&f.name
[er]本日の収益：[emb exp="f.honjituno_seika"]万円[r]

[_tb_end_text]

[button  storage="evening.ks"  target="*次の日"  graphic="ボタン/ボタン_次の日へ.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_9"  ]
[button  storage="evening.ks"  target="*道具屋"  graphic="ボタン/ボタン-道具屋.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_10"  ]
[button  storage="evening.ks"  target="*AI"  graphic="ボタン/ボタン-AI.png"  width="233"  height="46"  y="227"  x="5"  name="img_11"  ]
[button  storage="evening.ks"  target="*そのほか"  graphic="ボタン/ボタン-そのほか.png"  width="233"  height="46"  y="273"  x="5"  name="img_12"  ]
[s  ]
*次の日

[cm  ]
[iscript]
f.day = f.day + 1;
f.contest = f.contest - 1;
f.afternoon = 1;
[endscript]

[tb_start_tyrano_code]
[if exp = "f.day == 4"]
今日も一日が終わった。[p]
一日が過ぎるのは早いなぁ。[p]
それはそうと、3日後はいよいよ初めてのAIコンテストだ。[p]
[jump storage = "before_contest_1.ks" target = ""]
[endif]

[if exp = "f.day == 5"]
AIの特訓を行っていたら、こんな時間になってしまった。[p]
この時間だと終電だ...[p]
[mask effect="fadeIn" time=1000]
[jump storage = "meeting_her.ks" target = ""]
[endif]

[if exp = "f.day == 7"]
明日は一回目のコンテストだ。[p]
今日は早めに寝よう。[p]
[mask effect="fadeIn" time=1000]
[jump storage = "contest_1.ks" target = ""]
[endif]

[if exp = "f.day == 11"]
今日は東郷沙羅さんとのディナーだ。[p]
そろそろ支度をして向かおう。[p]
[mask effect="fadeIn" time=1000]
[jump storage = "dinner.ks" target = ""]
[endif]

[if exp = "f.day == 14"]
明日は二回目のコンテストだ。[p]
今日は早めに寝よう。[p]
[mask effect="fadeIn" time=1000]
[jump storage = "contest_2.ks" target = ""]
[endif]

[if exp = "f.day == 21"]
明日は三回目のコンテストだ。[p]
今日は早めに寝よう。[p]
[mask effect="fadeIn" time=1000]
[jump storage = "contest_3.ks" target = ""]
[endif]

[if exp = "f.day == 30"]
明日はいよいよ最後のコンテストだ。[p]
今日は早めに寝よう。[p]
絶対に勝つぞ。[p]
[mask effect="fadeIn" time=1000]
[jump storage = "contest_4.ks" target = ""]
[endif]
[_tb_end_tyrano_code]

[mask  time="2000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[mask_off  time="0"  effect="fadeOut"  ]
[jump  storage="afternoon.ks"  target=""  ]
[s  ]
*道具屋

[jump  storage="item_store.ks"  target=""  ]
[s  ]
*AI

[jump  storage="ai_menu.ks"  target=""  ]
[s  ]
*そのほか

[jump  storage="others.ks"  target=""  ]
[s  ]
