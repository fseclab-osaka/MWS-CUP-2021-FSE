[_tb_system_call storage=system/_opening.ks]

[tb_ptext_hide  time="1000"  ]
[tb_image_hide  time="1000"  ]
[tb_show_message_window  ]
[bg  time="1000"  method="crossfade"  storage="20211026/背景_社内_枠なし_表示なし.png"  cross="false"  ]
[chara_show  name="主人公"  time="0"  wait="false"  storage="chara/1/主人公_通常.png"  width="444"  height="630"  left="322"  top="13"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  name="img_4"  ]
[tb_start_text mode=1 ]
#&f.name
(俺の名前は[emb exp="f.name"]。今日からこの藤原コーポレーションで働くことになった）[p]
（これからの時代はAIだと、俺は思ってる。AIを作って大富豪になってやるんだ！！）[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_move  name="主人公"  anim="true"  time="0"  effect="linear"  wait="false"  left="180"  top="13"  width="444"  height="630"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
ようこそ[emb exp="f.company_name"]へ！[p]
[emb exp="f.name"]君だね。[r][p]
よろしく！！[p]
実は、今年は君一人なんだよ...。[p]
会社に多額の借金があって、君しか雇えなかったんだよね。[r][p]
だから、君が最後の希望なんだ！[p]
もうじきAIコンテストがあるんだが、君には若き才能を活かして、AIコンテストに出場してほしいと思っている。[p]
全部で4回のAIコンテストなんだが、最終コンテストの優勝賞金がなんと１億G、つまり借金と同額なのだよ！！[p]
まあ、最終コンテストまではたったの１ヶ月しかないんだが...。[p]
そのコンテストで優勝して、賞金を手にしてこの会社の借金を返済してくれ！　頼んだよ！！[p]
それじゃ、基本業務を説明するよ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[chara_hide_all  time="1000"  wait="false"  ]
[jump  storage="tutorial_text.ks"  target=""  ]
