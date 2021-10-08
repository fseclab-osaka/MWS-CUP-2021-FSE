[_tb_system_call storage=system/_meeting_her_again_1.ks]

[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_コンテスト_枠なし.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="主人公"  time="0"  wait="true"  storage="chara/1/主人公_通常.png"  width="444"  height="630"  left="180"  top="13"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_7"  ]
[tb_start_text mode=1 ]
#&f.name
いよいよ今日は、AIコンテストだ！[p]
俺が今まで作ってきたAIがどこまで通用するだろうか。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_show  name="恋人候補"  time="1000"  wait="true"  storage="chara/6/社長令嬢_通常.png"  width="409"  height="579"  left="503"  top="60"  reflect="false"  ]
[chara_hide  name="恋人候補"  time="4000"  wait="true"  pos_mode="true"  ]
[chara_move  name="主人公"  anim="false"  time="0"  effect="linear"  wait="false"  left="180"  top="13"  width="444"  height="630"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_13"  ]
[tb_start_text mode=1 ]
#&f.name
(あれ？)[p]
(あの子、この前の酔っぱらいに絡まれていた子に似ている…)[p]
まさかね。[p]
AIコンテストなんてマニアックな所にいる訳がないよな。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_show  name="司会者"  time="1000"  wait="false"  storage="chara/5/司会者_通常.png"  width="400"  height="600"  left="540"  top="38"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_司会者_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_7"  ]
[tb_start_text mode=1 ]
#司会者
まもなく、コンテストが始まります！[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_7"  ]
[tb_start_text mode=1 ]
#&f.name
よし！[p]
本番だ！[p]
頑張るぞ！[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="0"  wait="false"  ]
[jump  storage="contest_1.ks"  target=""  ]
[s  ]
