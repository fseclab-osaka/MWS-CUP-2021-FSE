[_tb_system_call storage=system/_user_fee.ks]

[tb_start_tyrano_code]
;一日の終わりに各AIの利用者数と利用料金を計算する
;利用者数は社会的信用度に依存
;利用料金は精度に依存
[if exp = "f.afternoon == 1"]
[eval exp = "f.honjituno_seika=0"]
[if exp="f.AI_seido_1>0"]
[eval exp = "f.honjituno_seika = f.honjituno_seika + f.AI_seido_1*f.reptation"]
[endif]
[if exp="f.AI_seido_2>0"]
[eval exp = "f.honjituno_seika = f.honjituno_seika + f.AI_seido_2*f.reptation"]
[endif]
[if exp="f.AI_seido_3>0"]
[eval exp = "f.honjituno_seika = f.honjituno_seika + f.AI_seido_3*f.reptation"]
[endif]
[eval exp = "f.money = f.money + f.honjituno_seika"]
[endif]
[_tb_end_tyrano_code]

[jump  storage="evening.ks"  target="*after_calc"  ]
