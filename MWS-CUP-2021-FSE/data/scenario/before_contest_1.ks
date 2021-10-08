[_tb_system_call storage=system/_before_contest_1.ks]

[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[cm  ]
[tb_ptext_hide  time="1000"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_外_枠なし_表示なし.png"  ]
[mask_off  time="1000"  effect="fadeOut"  ]
[chara_show  name="ライバル"  time="0"  wait="false"  storage="chara/4/ライバル_3.png"  width="476"  height="715"  left="480"  top="-78"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_ライバル_3.png"  width="230"  height="225"  x="3"  y="412"  name="img_6"  ]
[tb_start_text mode=1 ]
#ライバル
[er]あれ、[emb exp = "f.name"]じゃん！　奇遇だなァ？[p]
そういや、[emb exp = "f.name"]もAI制作会社だったよな？なんてとこだっけ？[p]
まぁ、格下の相手に興味はないけどな。[p]
ところで知ってるか？　AIコンテストがあること。俺、次のコンテストに出るんだよ。[p]
[_tb_end_text]

[chara_mod  name="ライバル"  time="0"  cross="true"  storage="chara/4/ライバル_2.png"  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="0"  storage="default/顔/顔_ライバル_2.png"  width="230"  height="225"  x="3"  y="412"  name="img_10"  ]
[tb_start_text mode=1 ]
まぁ、１位は俺で決まりなんだが。[r][p]
気が向いたら俺がつくったAI見にこいよ。[p]
もし、お前もでるなら一番精度のいいAIをだすんだな。じゃなきゃ、相手にならねぇだろ？[p]
俺の凄さを改めて教えてやるよ。天才の格ってやつ？[p]
ふん、じゃあな。[p]
#
[_tb_end_text]

[chara_hide  name="ライバル"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="同僚"  time="0"  wait="false"  storage="chara/2/同僚_C.png"  width="447"  height="633"  left="228"  top="7"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_同僚_C.png"  width="230"  height="225"  ]
[tb_start_text mode=1 ]
#同僚
[er]偉そうなやつでやんすね。いったい何者でやんすか？[p]
#
[_tb_end_text]

[chara_hide  name="同僚"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="主人公"  time="0"  wait="false"  storage="chara/1/主人公_通常.png"  width="444"  height="630"  left="180"  top="13"  reflect="false"  ]
[tb_image_show  time=""  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#&f.name
[er]（あいつは一条 尊(いちじょう　たける)。大学の同期で俺が就職したかった[emb exp = "f.A_name"]に就職したんだ。）[p]
（そして、俺に対して永遠に就職マウントをとってくる嫌なやつだ。しかも、ちゃんと実力があるのが腹立たしい。）[p]
僕の大学時代の知り合いです。凄いやつなんですが、嫌味が多いんです。[p]
#
[_tb_end_text]

[chara_hide  name="主人公"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
[chara_show  name="同僚"  time="0"  wait="false"  storage="chara/2/同僚_C.png"  width="447"  height="633"  left="228"  top="7"  reflect="false"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_同僚_C.png"  width="230"  height="225"  ]
[tb_start_text mode=1 ]
#同僚
[er]いちいち、はなにつく奴なんでやんすね！[p]
[_tb_end_text]

[chara_mod  name="同僚"  time="0"  cross="true"  storage="chara/2/同僚_A.png"  ]
[tb_image_hide  time="0"  ]
[tb_image_show  time="0"  x="3"  y="412"  storage="default/顔/顔_同僚_A.png"  width="230"  height="225"  ]
[tb_start_text mode=1 ]
気にせず、コンテストに向けて頑張るでやんすよっ！[p]
#
[_tb_end_text]

[chara_hide  name="同僚"  time="0"  wait="false"  pos_mode="true"  ]
[tb_image_hide  time="0"  ]
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
