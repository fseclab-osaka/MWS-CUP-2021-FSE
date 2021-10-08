[_tb_system_call storage=system/_credit.ks]

[cm  ]
[tb_hide_message_window  ]
[tb_ptext_hide  time="0"  ]
*1

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[if exp="f.afternoon==1"]
[bg storage="20211026/背景_クレジット１_昼.png" time="0" ]
[else]
[bg storage="20211026/背景_クレジット１_夕.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[button  storage="credit.ks"  target="*２"  graphic="ボタン/ボタン_→.png"  width="233"  height="46"  y="557"  x="400"  _clickable_img=""  name="img_6"  ]
[button  storage="credit.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="671"  y="557"  name="img_7"  _clickable_img="20211026/背景_クレジット_昼.png"  ]
[s  ]
*２

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[if exp="f.afternoon==1"]
[bg storage="20211026/背景_クレジット２_昼.png" time="0" ]
[else]
[bg storage="20211026/背景_クレジット２_夕.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

[button  storage="credit.ks"  target="*1"  graphic="ボタン/ボタン_←.png"  width="233"  height="46"  y="557"  x="130"  _clickable_img=""  ]
[button  storage="credit.ks"  target="*others"  graphic="ボタン/ボタン-もどる.png"  width="233"  height="46"  x="671"  y="557"  name="img_20"  _clickable_img="20211026/背景_クレジット_昼.png"  ]
[s  ]
*others

[tb_start_tyrano_code]
[clearfix name="role_button"]
[_tb_end_tyrano_code]

[tb_show_message_window  ]
[jump  storage="others.ks"  target=""  ]
[s  ]
