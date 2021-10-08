[_tb_system_call storage=system/_training_room.ks]

*training_room

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[bg  storage="20211026/背景_社内_昼_枠なし.png"  time="0"  ]
[button  storage="training_room.ks"  target="*azukeru"  graphic="長ボタン/長ボタン_預ける.png"  width="635"  height="56"  x="302"  y="22"  _clickable_img=""  name="img_9"  ]
[button  storage="training_room.ks"  target="*no"  graphic="長ボタン/長ボタン_いいえ.png"  width="635"  height="56"  y="78"  x="303"  name="img_11"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_text mode=3 ]
#&f.name
[er]AIを訓練所に預けようかな。[r]
[_tb_end_text]

[s  ]
*azukeru

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#&f.name
[er]どれを預けよう。[r]
[_tb_end_text]

[tb_start_tyrano_code]
[if exp="f.AI_seido_1<100"]
[button name="T_1" graphic="長ボタン/長ボタン_1号.png" target=*T_1 x=303 y=22 ]
[endif]
[if exp="(f.AI_seido_2<100) && (f.HoF==1)"]
[button name="T_2" graphic="長ボタン/長ボタン_2号.png" target=*T_2 x=303 y=78 ]
[endif]
[if exp="(f.AI_seido_3<100) && (f.HoF==1)"]
[button name="T_3" graphic="長ボタン/長ボタン_3号.png" target=*T_3 x=303 y=134]
[endif]
[button name="modoru" graphic="ボタン/ボタン-もどる.png" target=*training_room x=5 y=181]
[_tb_end_tyrano_code]

[s  ]
*T_1

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#&f.name
[er]どの店を選ぼう。[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button name="safety" graphic="長ボタン/長ボタン_Safety.png" target=*T_1_safety x=303 y=22]
[button name="low" graphic="長ボタン/長ボタン_Low-risk.png" target=*T_1_low x=303 y=78]
[button name="challenge" graphic="長ボタン/長ボタン_Challenge.png" target=*T_1_challenge x=303 y=134]
[button name="modoru" graphic="ボタン/ボタン-もどる.png" target=*azukeru x=5 y=181]
[_tb_end_tyrano_code]

[s  ]
*T_1_safety

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：7万円 [r]
精度上昇分：5% [r]
バックドアの確率：0%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes1" graphic="長ボタン/長ボタン_はい.png" target=*T_1_safety_yes x=303 y=22]
[button name="no1" graphic="長ボタン/長ボタン_いいえ.png" target=*T_1 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_1_safety_yes

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.money>=7"]
[eval exp="f.money=f.money-7"]
所持金から7万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_1][r]
[eval exp="f.AI_seido_1=f.AI_seido_1+5"]
[if exp="(f.AI_seido_1>=100)&&(f.HoF==0)"]
[eval exp="f.AI_seido_1=100"]
[eval exp="f.HoF=1"]
[eval exp="f.AI_seido_2=0"]
[eval exp="f.AI_seido_3=0"]
[endif]
預けた後：[emb exp=f.AI_seido_1][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_1_low

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：10万円[r]
精度上昇分：10% [r]
バックドアの確率：20%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes1" graphic="長ボタン/長ボタン_はい.png" target=*T_1_low_yes x=303 y=22]
[button name="no1" graphic="長ボタン/長ボタン_いいえ.png" target=*T_1 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_1_low_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=10)&&(f.backdoor>20)"]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から10万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_1][r]
[eval exp="f.AI_seido_1=f.AI_seido_1+10"]
[if exp="(f.AI_seido_1>=100)&&(f.HoF==0)"]
[eval exp="f.AI_seido_1=100"]
[eval exp="f.HoF=1"]
[eval exp="f.AI_seido_2=0"]
[eval exp="f.AI_seido_3=0"]
[endif]
預けた後：[emb exp=f.AI_seido_1][lr]
@jump target=*evening
[elsif exp="(f.money>=10)&&(f.backdoor<=20)"]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp=f.AI_seido_1][r]
[eval exp="f.AI_seido_1=0"]
預けた後：[emb exp=f.AI_seido_1][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_1_challenge

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：20万円 [r]
精度上昇分：30% [r]
バックドアの確率：50%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes1" graphic="長ボタン/長ボタン_はい.png" target=*T_1_challenge_yes x=303 y=22]
[button name="no1" graphic="長ボタン/長ボタン_いいえ.png" target=*T_1 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_1_challenge_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=20)&&(f.backdoor>50)"]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から20万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_1][r]
[eval exp="f.AI_seido_1=f.AI_seido_1+30"]
[if exp="(f.AI_seido_1>=100)&&(f.HoF==0)"]
[eval exp="f.AI_seido_1=100"]
[eval exp="f.HoF=1"]
[eval exp="f.AI_seido_2=0"]
[eval exp="f.AI_seido_3=0"]
[endif]
預けた後：[emb exp=f.AI_seido_1][lr]
@jump target=*evening
[elsif exp="(f.money>=20)&&(f.backdoor<=50)"]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp="f.AI_seido_1"][r]
[eval exp="f.AI_seido_1=0"]
預けた後：[emb exp="f.AI_seido_1"][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_2

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#&f.name
[er]どの店を選ぼう。[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button name="safety" graphic="長ボタン/長ボタン_Safety.png" target=*T_2_safety x=303 y=22]
[button name="low" graphic="長ボタン/長ボタン_Low-risk.png" target=*T_2_low x=303 y=78]
[button name="challenge" graphic="長ボタン/長ボタン_Challenge.png" target=*T_2_challenge x=303 y=134]
[button name="modoru" graphic="ボタン/ボタン-もどる.png" target=*azukeru x=5 y=181]
[_tb_end_tyrano_code]

[s  ]
*T_2_safety

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：7万円 [r]
精度上昇分：5% [r]
バックドアの確率：0%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes2" graphic="長ボタン/長ボタン_はい.png" target=*T_2_safety_yes x=303 y=22]
[button name="no2" graphic="長ボタン/長ボタン_いいえ.png" target=*T_2 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_2_safety_yes

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.money>=7"]
[if exp="f.AI_seido_2==-1"]
[eval exp="f.AI_seido_2==0"]
[endif]
[eval exp="f.money=f.money-7"]
所持金から7万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_2][r]
[eval exp="f.AI_seido_2=f.AI_seido_2+5"]
[if exp="f.AI_seido_2>=100"]
[eval exp="f.AI_seido_2=100"]
[endif]
預けた後：[emb exp=f.AI_seido_2][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_2_low

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：10万円 [r]
精度上昇分：10% [r]
バックドアの確率：20%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes2" graphic="長ボタン/長ボタン_はい.png" target=*T_2_low_yes x=303 y=22]
[button name="no2" graphic="長ボタン/長ボタン_いいえ.png" target=*T_2 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_2_low_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=10)&&(f.backdoor>20)"]
[if exp="f.AI_seido_2==-1"]
[eval exp="f.AI_seido_2==0"]
[endif]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から10万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_2][r]
[eval exp="f.AI_seido_2=f.AI_seido_2+10"]
[if exp="f.AI_seido_2>=100"]
[eval exp="f.AI_seido_2=100"]
[endif]
預けた後：[emb exp=f.AI_seido_2][lr]
@jump target=*evening
[elsif exp="(f.money>=10)&&(f.backdoor<=20)"]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp=f.AI_seido_2][r]
[eval exp="f.AI_seido_2=0"]
預けた後：[emb exp=f.AI_seido_2][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_2_challenge

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：20万円 [r]
精度上昇分：30% [r]
バックドアの確率：50%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes2" graphic="長ボタン/長ボタン_はい.png" target=*T_2_challenge_yes x=303 y=22]
[button name="no2" graphic="長ボタン/長ボタン_いいえ.png" target=*T_2 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_2_challenge_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=20)&&(f.backdoor>50)"]
[if exp="f.AI_seido_2==-1"]
[eval exp="f.AI_seido_2==0"]
[endif]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から20万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_2][r]
[eval exp="f.AI_seido_2=f.AI_seido_2+30"]
[if exp="f.AI_seido_2>=100"]
[eval exp="f.AI_seido_2=100"]
[endif]
預けた後：[emb exp=f.AI_seido_2][lr]
@jump target=*evening
[elsif exp="(f.money>=20)&&(f.backdoor<=50)"]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp=f.AI_seido_2][r]
[eval exp="f.AI_seido_2=0"]
預けた後：[emb exp=f.AI_seido_2][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_3

[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_8"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#&f.name
[er]どの店を選ぼう。[r]
[_tb_end_text]

[tb_start_tyrano_code]
[button name="safety" graphic="長ボタン/長ボタン_Safety.png" target=*T_3_safety x=303 y=22]
[button name="low" graphic="長ボタン/長ボタン_Low-risk.png" target=*T_3_low x=303 y=78]
[button name="challenge" graphic="長ボタン/長ボタン_Challenge.png" target=*T_3_challenge x=303 y=134]
[button name="modoru" graphic="ボタン/ボタン-もどる.png" target=*azukeru x=5 y=181]
[_tb_end_tyrano_code]

[s  ]
*T_3_safety

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：7万円 [r]
精度上昇分：5% [r]
バックドアの確率：0%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes3" graphic="長ボタン/長ボタン_はい.png" target=*T_3_safety_yes x=303 y=22]
[button name="no3" graphic="長ボタン/長ボタン_いいえ.png" target=*T_3 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_3_safety_yes

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="f.money>=7"]
[if exp="f.AI_seido_3==-1"]
[eval exp="f.AI_seido_3==0"]
[endif]
[eval exp="f.money=f.money-7"]
所持金から7万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_3][r]
[eval exp="f.AI_seido_3=f.AI_seido_3+5"]
[if exp="f.AI_seido_3>=100"]
[eval exp="f.AI_seido_3=100"]
[endif]
預けた後：[emb exp=f.AI_seido_3][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_3_low

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：10万円 [r]
精度上昇分：10% [r]
バックドアの確率：20%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes3" graphic="長ボタン/長ボタン_はい.png" target=*T_3_low_yes x=303 y=22]
[button name="no3" graphic="長ボタン/長ボタン_いいえ.png" target=*T_3 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_3_low_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=10)&&(f.backdoor>20)"]
[if exp="f.AI_seido_3==-1"]
[eval exp="f.AI_seido_3==0"]
[endif]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から10万円支払った。[r]
AIの精度が10%上昇した。[r]
預ける前：[emb exp=f.AI_seido_3][r]
[eval exp="f.AI_seido_3=f.AI_seido_3+10"]
[if exp="f.AI_seido_3>=100"]
[eval exp="f.AI_seido_3=100"]
[endif]
預けた後：[emb exp=f.AI_seido_3][lr]
@jump target=*evening
[elsif exp="(f.money>=10)&&(f.backdoor<=20)"]
[eval exp="f.money=f.money-10"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp=f.AI_seido_3][r]
[eval exp="f.AI_seido_3=0"]
預けた後：[emb exp=f.AI_seido_3][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*T_3_challenge

[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=3 ]
#
[er]この店にしますか?[r]
費用：20万円 [r]
精度上昇分：30% [r]
バックドアの確率：50%[r]
※ バックドアを仕込まれるとAIの精度は0%になります。[r]
#
[_tb_end_text]

[tb_start_tyrano_code]
[button name="yes3" graphic="長ボタン/長ボタン_はい.png" target=*T_3_challenge_yes x=303 y=22]
[button name="no3" graphic="長ボタン/長ボタン_いいえ.png" target=*T_3 x=303 y=78]
[_tb_end_tyrano_code]

[s  ]
*T_3_challenge_yes

[tb_start_tyrano_code]
[cm]
[iscript]
f.backdoor = Math.floor(Math.random()*101);
[endscript]
[_tb_end_tyrano_code]

[tb_start_tyrano_code]
[if exp="(f.money>=20)&&(f.backdoor>50)"]
[if exp="f.AI_seido_3==-1"]
[eval exp="f.AI_seido_3==0"]
[endif]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
所持金から20万円支払った。[r]
AIの精度が上昇した。[r]
預ける前：[emb exp=f.AI_seido_3][r]
[eval exp="f.AI_seido_3=f.AI_seido_3+30"]
[if exp="f.AI_seido_3>=100"]
[eval exp="f.AI_seido_3=100"]
[endif]
預けた後：[emb exp=f.AI_seido_3][lr]
@jump target=*evening
[elsif exp="(f.money>=20)&&(f.backdoor<=50)"]
[eval exp="f.money=f.money-20"]
[delay speed=1000]
. . .
[delay speed=30]
[er]
バックドアが仕込まれた。[r]
AIの精度が0%になった. . .[r]
預ける前：[emb exp=f.AI_seido_3][r]
[eval exp="f.AI_seido_3=0"]
預けた後：[emb exp=f.AI_seido_3][lr]
@jump target=*evening
[else]
お金が足りないよ。[lr]
@jump target=*training_room
[endif]
[_tb_end_tyrano_code]

[s  ]
*evening

[jump  storage="evening.ks"  target=""  ]
[s  ]
*no

[cm  ]
[tb_start_text mode=1 ]
#&f.name
[er]やっぱりやめよう[p]
[_tb_end_text]

[jump  storage="afternoon_move.ks"  target=""  ]
[s  ]
