[_tb_system_call storage=system/_ending_happy.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_show_message_window  ]
[tb_image_hide  time="0"  ]
[mask_off  time="500"  effect="fadeOut"  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_コンテスト_枠なし.png"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="495"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_7"  ]
[tb_start_text mode=1 ]
#社長
[er]やった、やったぞ！　おめでとう[emb exp = "f.name"]君！！　[emb exp = "f.name"]君は本当にすごいよ！[p]
ありがとう、	これで会社の借金は帳消しだっ！　ほんとうにありがとう、この会社はもう君に譲るよ。[p]
君なら日本一、いや世界一の企業にしてくれるはずだ！[p]
#
[_tb_end_text]

[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="同僚"  time="0"  wait="false"  storage="chara/2/同僚_A.png"  width="447"  height="633"  left="229"  top="7"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_同僚_A.png"  width="230"  height="225"  name="img_12"  ]
[tb_start_text mode=1 ]
#同僚
[er][emb exp = "f.name"]くんすごいでやんす！[p]
実は、君を初めてみた時から何かを感じてたでやんす！！[p]
一生君についていくでやんす！！[p]
#
[_tb_end_text]

[chara_hide  name="同僚"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="ライバル"  time="0"  wait="false"  storage="chara/4/ライバル_1.png"  width="476"  height="715"  left="480"  top="-78"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_ライバル_1.png"  width="230"  height="225"  name="img_17"  ]
[tb_start_text mode=1 ]
#一条尊
[er]この俺様があんな奴に負けるな...。[p]
これは、ひどい悪夢だ。[p]
#
[_tb_end_text]

[chara_hide  name="ライバル"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="恋人候補"  time="0"  wait="false"  storage="chara/6/社長令嬢_通常.png"  width="409"  height="579"  left="300"  top="60"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_社長令嬢_通常.png"  width="230"  height="225"  ]
[tb_start_text mode=1 ]
#沙羅
[er][emb exp = "f.name"]さん，社長が負った借金のためにあんなに頑張るなんて… [p]
なんて素敵なの．結婚しましょう！！[p]
#
[_tb_end_text]

[chara_hide  name="恋人候補"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[tb_hide_message_window  ]
[bg  time="1000"  method="crossfade"  storage="title.jpg"  ]
[tb_ptext_show  x="390"  y="260"  size="60"  color="0xffffff"  time="1000"  text="THE&nbsp;END."  anim="false"  face="fantasy"  edge="undefined"  shadow="0x120202"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
*THE_END.

[l  ]
[tb_ptext_hide  time="1000"  ]
[jump  storage="title_screen.ks"  target=""  ]
[s  ]
