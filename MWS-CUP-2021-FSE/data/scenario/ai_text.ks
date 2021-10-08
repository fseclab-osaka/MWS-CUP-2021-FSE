[_tb_system_call storage=system/_ai_text.ks]

[cm  ]
[tb_ptext_hide  time="0"  ]
[tb_image_hide  time="0"  ]
[tb_start_tyrano_code]
[if exp="f.afternoon==1"]
[bg storage="20211026/背景_社内_昼_枠なし.png" time="0" ]
[else]
[bg storage="20211026/背景_社内_夜_枠なし.png" time="0" ]
[endif]
[_tb_end_tyrano_code]

*AI_list

[tb_ptext_show  x="24"  y="0"  size="60"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.day"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="119"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.money"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="370"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.reptation"  edge="0x363636"  shadow="undefined"  ]
[tb_ptext_show  x="830"  y="373"  size="25"  color="0xffffff"  time="1"  anim="false"  face="sans-serif,'メイリオ'"  text="&f.contest"  edge="0x363636"  shadow="undefined"  ]
[button  storage="ai_text.ks"  target="*AI_1"  graphic="ボタン/ボタン_AI講座①.png"  width="233"  height="46"  x="5"  y="120"  _clickable_img=""  name="img_9"  ]
[button  storage="ai_text.ks"  target="*AI_2"  graphic="ボタン/ボタン_AI講座②.png"  width="233"  height="46"  x="5"  y="160"  _clickable_img=""  name="img_10"  ]
[button  storage="ai_text.ks"  target="*AI_3"  graphic="ボタン/ボタン_AI講座③.png"  width="233"  height="46"  y="200"  x="5"  name="img_11"  ]
[button  storage="ai_text.ks"  target="*AI_4"  graphic="ボタン/ボタン_AI講座④.png"  width="233"  height="46"  y="240"  x="5"  name="img_12"  ]
[button  storage="ai_text.ks"  target="*AI_5"  x="5"  y="280"  graphic="ボタン/ボタン_AI講座⑤.png"  width="233"  height="46"  name="img_13"  ]
[button  storage="ai_text.ks"  target="*others"  graphic="ボタン/ボタン-そのほか.png"  width="233"  height="46"  x="3"  y="320"  _clickable_img=""  name="img_14"  ]
[tb_image_show  time="0"  storage="default/顔/顔_主人公_通常.png"  width="230"  height="225"  x="3"  y="412"  _clickable_img=""  name="img_15"  ]
[tb_start_text mode=3 ]
#主人公
[er]何を聞こう?[r]
[_tb_end_text]

[s  ]
*AI_1

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]AIって?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]AI(Artificial Intelligence)は、人工知能とも呼ばれる、人工的に人間の知能を再現したものじゃ。[r]
様々な業界で予測・分析などにAIが用いられておる。[p]
AIを活用する際は、学習によって得られた、高性能のAIが必要じゃ。[r]
たとえば最近では、自動運転の実現にAIが注目されているぞ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*AI_2

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]AIによってどんなことができるの?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]AIは様々なデータを扱うことができるのじゃ。具体的には、画像、音声、テキストデータなどを扱うことができる。[r]
これらを活かして画像分類・音声認識・自然言語処理などのタスクにAIが活用されておるんじゃぞ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*AI_3

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]AIってどう学習するの?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]AIも人間と同様に学習するぞ。勉強に教材があるように、AIの学習(教師あり学習と呼ばれる)にはデータセットを用いるのじゃ。[r]
データセットとは、画像データなどのいくつかのデータに、それぞれ名前(正解ラベル)を組み合わせた集合じゃ。[p]
データセットがより良いものなら、効率的に学習ができるぞ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*AI_4

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]AIの性能はどう測るの?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er](分類タスクを解く)AIが優れているか否かを測るためには、精度という評価指標がある。[r]
精度というのは、検証するためのデータセットを用いて各データを推論し、最も高い確率だと予測したラベルが、正解ラベルと一致しているかどうかの割合のことじゃ。[p]
精度が高いAIは高性能なAIと言えよう。[r]
世の中には精度の他にも様々な評価指標があるぞ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*AI_5

[button  storage="ai_text.ks"  target="*モデル抽出攻撃"  graphic="長ボタン/長ボタン_モデル抽出.png"  width="635"  height="56"  x="303"  y="93"  _clickable_img=""  ]
[button  storage="ai_text.ks"  target="*敵対的サンプル"  x="303"  y="149"  graphic="長ボタン/長ボタン_敵対的サンプル.png"  width="635"  height="56"  ]
[button  storage="ai_text.ks"  target="*データ復元攻撃"  x="303"  y="205"  graphic="長ボタン/長ボタン_データ復元.png"  width="635"  height="56"  ]
[button  storage="ai_text.ks"  target="*バックドア攻撃"  graphic="長ボタン/長ボタン_バックドア.png"  width="635"  height="56"  x="303"  y="261"  ]
[tb_start_text mode=3 ]
#主人公
[er]どの攻撃を聞く?[r]
[_tb_end_text]

[s  ]
*モデル抽出攻撃

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]モデル抽出って?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_start_text mode=1 ]
#社長
[er]AIモデルを攻撃者がターゲットにし、同程度の性能を持つモデルを得る攻撃じゃ。[p]
クエリ回数制限などの対策が考えられておる。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*敵対的サンプル

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]敵対的サンプルって?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]画像データに摂動(ノイズ)を加えることで、AIが誤認識を引き起こしてしまうサンプルデータのことじゃ。[p]
パンダの画像に摂動を加えるとテナガザルと誤認識してしまう例が有名じゃな。[p]
フィルタリングなどの対策が考えられておる。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*データ復元攻撃

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]データ復元って?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]AIモデルを攻撃者がターゲットにし、そのターゲットモデルの学習に用いたデータを復元する攻撃じゃ。[p]
クエリしたデータに対するノイズ付加などの対策が考えられておる。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*バックドア攻撃

[tb_start_tyrano_code]
[cm]
[_tb_end_tyrano_code]

[tb_start_text mode=1 ]
#主人公
[er]バックドアって?[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[tb_ptext_hide  time="0"  ]
[chara_show  name="社長"  time="0"  wait="false"  storage="chara/3/社長_通常.png"  width="444"  height="629"  left="494"  top="12"  reflect="false"  ]
[tb_image_show  time="0"  storage="default/顔/顔_社長_通常.png"  width="230"  height="225"  x="3"  y="412"  ]
[tb_start_text mode=1 ]
#社長
[er]攻撃者がターゲットとするAIモデル内部に細工を仕掛け、そのモデルに対し、トリガー付きのデータが入力されると、攻撃者の意図した挙動をしてしまう攻撃じゃ。[p]
トリガーは攻撃者が自由に設定できる、特定の入力パターンや物などのことじゃな。[p]
外部委託などで仕掛けられる可能性があるから要注意じゃぞ。[p]
#
[_tb_end_text]

[tb_image_hide  time="0"  ]
[chara_hide  name="社長"  time="0"  wait="false"  pos_mode="true"  ]
[jump  storage="ai_text.ks"  target="*AI_list"  ]
[s  ]
*others

[jump  storage="others.ks"  target=""  ]
[s  ]
