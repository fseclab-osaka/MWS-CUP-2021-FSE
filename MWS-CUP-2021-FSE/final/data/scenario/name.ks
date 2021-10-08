[_tb_system_call storage=system/_name.ks]

[cm  ]
[tb_show_message_window  ]
*name_start

[tb_start_tyrano_code]
名前を入力してね[p]
[_tb_end_tyrano_code]

[edit  left="374"  top="277"  width="200"  height="40"  size="20"  maxchars="6"  name="f.name"  reflect="false"  ]
[button  storage="name.ks"  target="*name_confirmation"  graphic="ボタン/ボタン_決定.png"  width="200"  height="46"  x="374"  y="339"  _clickable_img=""  ]
[s  ]
*name_confirmation

[commit  ]
[cm  ]
[jump  storage="name.ks"  target="*input_ok"  cond="f.name!=''"  ]
[tb_start_text mode=1 ]
名前は必ず入力してください。[p]
[_tb_end_text]

[jump  storage="name.ks"  target="*name_start"  ]
*input_ok

[tb_start_text mode=1 ]
こんにちは、[emb exp="f.name"]さん。[p]
AI製作を通じて、AIセキュリティについて学びましょう！[p]
では、ゲームを開始します。[p]
[_tb_end_text]

[jump  storage="opening.ks"  target=""  ]
[s  ]
