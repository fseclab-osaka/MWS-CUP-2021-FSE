[_tb_system_call storage=system/_afternoon.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[button  storage="afternoon.ks"  target="*行動"  graphic="ボタン/ボタン-行動.png"  width="233"  height="46"  x="5"  y="135"  _clickable_img=""  name="img_8"  ]
[button  storage="afternoon.ks"  target="*道具屋"  graphic="ボタン/ボタン-道具屋.png"  width="233"  height="46"  x="5"  y="181"  _clickable_img=""  name="img_9"  ]
[button  storage="afternoon.ks"  target="*AI"  graphic="ボタン/ボタン-AI.png"  width="233"  height="46"  y="227"  x="5"  name="img_10"  ]
[button  storage="afternoon.ks"  target="*そのほか"  graphic="ボタン/ボタン-そのほか.png"  width="233"  height="46"  y="273"  x="5"  name="img_11"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_text mode=3 ]
#&f.name
[er]今日は何をしよう？[r]
[_tb_end_text]

[s  ]
*行動

[jump  storage="afternoon_move.ks"  target=""  ]
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
