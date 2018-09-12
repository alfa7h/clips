(defrule KankerDiagnosis
=>
(printout t "================================================================ " crlf)
(printout t "Gejala Kanker yg mana saja yg anda alami?" crlf)
(printout t "================================================================ " crlf)
(printout t "1. Perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah " crlf)
(printout t "2. Pembengkakan pada wajah dan leher " crlf)
(printout t "3. Bercak kemerahan atau putih dalam mulut, dan lidah terasa sakit atau mulut nyeri1 " crlf)
(printout t "4. Pendarahan pada rongga mulut dan gigi tanggal dengan sendirinya " crlf)
(printout t "5. Batuk kronis serta telinga terasa sakit dan berdengung " crlf)
(printout t "6. Timbul benjolan yang muncul di sekitar mata, rahang, leher, atau tenggorokan " crlf)
(printout t "7. Pembengkakan kelenjar getah bening " crlf)
(printout t "8. Dada sesak, nyeri, dan berat " crlf)
(printout t "9. Batuk berdahak disertai bercak darah " crlf)
(printout t "10. Sakit pada tulang, bisa pada bahu, lengan atau tangan serta perubahan pada bentuk jari, yaitu ujung jari menjadi cembung " crlf)
(printout t "11. Gatal-gatal atau rasa sakit pada payudara atau ketiak serta perubahan ukuran atau bentuk puting " crlf)
(printout t "12. Kemunculan benjolan atau pembengkakan yang kemerahan pada ketiak, atau payudara, atau kulit payudara yang menebal serta keluarnya cairan dari puting (biasanya disertai darah) " crlf)
(printout t "13. Frekuensi buang air kecil semakin sering, tapi jumlah urine yang dikeluarkan hanya sedikit, serta warna urin keruh atau kuning kemerahan " crlf)
(printout t "14. Kandung kemih terasa tegang, penuh, keras dan nyeri pada perut bagian bawah, serta nyeri atau perih 
kertika buang air kecil
 " crlf)
(printout t "15. Sakit kepala yang tiba-tiba  " crlf)
(printout t "16. Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh, dan bicara tidak jelas " crlf)
(printout t "17. Kelemahan dan kelumpuhan pada beberapa bagian tubuh (wajah, lengan, tangan, terutama pada salah satu sisi tubuh) " crlf)
(printout t "18. Penyakit infeksi saluran pernapasan (flu atau pilek) " crlf)
(printout t "19. Keluar lendir dari rongga hidung terus menerus yang berwarna kemerahan " crlf)
(printout t "20. Pembengkakan pada pergelangan kaki, kaki, dan tungkai kiri serta kanan " crlf)
(printout t "21. Terlalu cepat ejakulasi " crlf)
(printout t "22. Kesulitan memulai dan mempertahankan ereksi " crlf)
(printout t "================================================================ " crlf)
(printout t "Apakah anda mengalami perubahan suara serta sulit atau rasa sakit saat menelan serta mengunyah ? (1 = yes / 0 = no)" crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G02))
	else(assert(G08))	
))

(defrule gejalaDua
(G02)
=>
(printout t "Apakah anda mengalami pembengkakan pada wajah dan leher? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G03))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker " crlf)	
))

(defrule gejalaTiga
(G03)
=>
(printout t "Apakah anda mengalami Bercak kemerahan atau putih dalam mulut, dan lidah terasa sakit atau mulut nyeri ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G04))
	else(assert(G05))	
))

(defrule gejalaEmpat
(G04)
=>
(printout t "Apakah anda mengalami Pendarahan pada rongga mulut dan gigi tanggal dengan sendirinya? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Anda mengalami penyakit kanker mulut" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaLima
(G05)
=>
(printout t "Apakah anda mengalami Batuk kronis serta telinga terasa sakit dan berdengung ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G06))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaEnam
(G06)
=>
(printout t "Apakah anda mengalami Timbul benjolan yang muncul di sekitar mata, rahang, leher, atau tenggorokan ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G07))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaTujuh
(G07)
=>
(printout t "Apakah anda mengalami Pembengkakan kelenjar getah bening? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G14))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaDelapan(
G08)
=>
(printout t "Apakah anda mengalami Dada sesak, nyeri, dan berat ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G09))
	else(assert(G11))
))

(defrule gejalaSembilan
(G09)
=>
(printout t "Apakah anda mengalami Batuk berdahak disertai bercak darah ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G10))
	else(assert(G18))
))

(defrule gejalaSepuluh
(G10)
=>
(printout t "Apakah anda mengalami Sakit pada tulang, bisa pada bahu, lengan atau tangan serta perubahan pada bentuk jari, yaitu ujung jari menjadi cembung ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit kanker paru-paru" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaSebelas
(G11)
=>
(printout t "Apakah anda mengalami Gatal-gatal atau rasa sakit pada payudara atau ketiak serta perubahan ukuran atau bentuk puting ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G12))
	else(assert(G13))
))

(defrule gejalaDuaBelas
(G12)
=>
(printout t "Apakah anda mengalami Kemunculan benjolan atau pembengkakan yang kemerahan pada ketiak, atau payudara, atau kulit payudara yang menebal serta keluarnya cairan dari puting (biasanya disertai darah) ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit kanker payudara" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaTigaBelas
(G13)
=>
(printout t "Apakah anda mengalami Frekuensi buang air kecil semakin sering, tapi jumlah urine yang dikeluarkan hanya sedikit, serta warna urin keruh atau kuning kemerahan? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G14b))
	else(assert(G15))
))


(defrule gejalaEmpatBelas
(G14)
=>
(printout t "Apakah anda mengalami Kandung kemih terasa tegang, penuh, keras dan nyeri pada perut bagian bawah, serta nyeri atau perih kertika buang air kecil ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G15b))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaEmpatBelasB
(G14b)
=>
(printout t "Apakah anda mengalami Kandung kemih terasa tegang, penuh, keras dan nyeri pada perut bagian bawah, serta nyeri atau perih kertika buang air kecil ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit kanker kandung kemih" crlf)	
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaLimaBelas
(G15)
=>
(printout t "Apakah anda mengalami Sakit kepala yang tiba-tiba ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G16))
	else(assert(G21))
))

(defrule gejalaLimaBelasB
(G15b)
=>
(printout t "Apakah anda mengalami Sakit kepala yang tiba-tiba ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G16b))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaEnamBelas
(G16)
=>
(printout t "Apakah anda mengalami Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh, dan bicara tidak jelas ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G17))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaEnamBelasB
(G16b)
=>
(printout t "Apakah anda mengalami Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh, dan bicara tidak jelas ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit kanker tenggorokan" crlf)	
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)	
))

(defrule gejalaTujuhBelas
(G17)
=>
(printout t "Apakah anda mengalami Kelemahan dan kelumpuhan pada beberapa bagian tubuh (wajah, lengan, tangan, terutama pada salah satu sisi tubuh) ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit stroke" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaDelapanBelas
(G18)
=>
(printout t "Apakah anda mengalami Penyakit infeksi saluran pernapasan (flu atau pilek) ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G19))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaSembilanBelas
(G19)
=>
(printout t "Apakah anda mengalami Keluar lendir dari rongga hidung terus menerus yang berwarna kemerahan? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G20))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaDuaPuluh
(G20)
=>
(printout t "Apakah anda mengalami Pembengkakan pada pergelangan kaki, kaki, dan tungkai kiri serta kanan ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit Bronkitis" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaDuaSatu
(G21)
=>
(printout t "Apakah anda mengalami Terlalu cepat ejakulasi ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(assert(G22))
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))

(defrule gejalaDuaDua
(G22)
=>
(printout t "Apakah anda mengalami Kesulitan memulai dan mempertahankan ereksi ? (1 = yes / 0 = no) " crlf)
(bind ?x (read))
(if(= ?x 1)
	then(printout t "Sepertinya anda mengalami penyakit Impotensi" crlf)
	else(printout t "Sepertinya anda tidak mengalami penyakit kanker" crlf)
))