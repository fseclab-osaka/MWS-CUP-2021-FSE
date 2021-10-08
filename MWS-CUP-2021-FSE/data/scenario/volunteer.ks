[_tb_system_call storage=system/_volunteer.ks]

*volunteer

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[button  storage="volunteer.ks"  target="*やる"  graphic="長ボタン/長ボタン_はい.png"  width="635"  height="56"  x="303"  y="22"  _clickable_img=""  ]
[button  storage="volunteer.ks"  target="*戻る"  graphic="長ボタン/長ボタン_いいえ.png"  width="635"  height="56"  y="78"  x="303"  name="img_11"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_text mode=3 ]
#&f.name
[er]ボランティアしようかな。[r]
#
[_tb_end_text]

[s  ]
*やる

[tb_start_text mode=3 ]
[cm]ボランティア中[r]
[_tb_end_text]

[delay  speed="1000"  ]
[tb_start_text mode=3 ]
・・・[r]
[_tb_end_text]

[delay  speed="30"  ]
[tb_start_tyrano_code]
[cm]
[iscript]
f.volunteer_random = Math.floor(Math.random()*31);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.volunteer_random<11"]
[eval exp = "f.reptation=f.reptation + 3"]
街中のゴミ拾いをした。社会的信用が3上がった！！[r]
[elsif exp="f.volunteer_random<21"]
[eval exp = "f.reptation=f.reptation + 3"]
募金活動を行い、被災地の支援をした。社会的信用が3上がった！！[r]
[elsif exp="f.volunteer_random<31"]
[eval exp = "f.reptation=f.reptation + 3"]
高齢者や障害者の介護を行った。社会的信用が3上がった！！[r]
[endif]

[_tb_end_tyrano_code]

[wait  time="2000"  ]
[jump  storage="rival_attack.ks"  target=""  ]
[s  ]
*戻る

[cm  ]
[tb_start_text mode=1 ]
#&f.name
[er]やっぱりやめよう。[p]
#
[_tb_end_text]

[jump  storage="afternoon.ks"  target=""  ]
[s  ]
