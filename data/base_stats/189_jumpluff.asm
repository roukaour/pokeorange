	db JUMPLUFF ; 189

	db  75,  55,  70, 110,  55,  85
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING
	db 45 ; catch rate
	db 176 ; base exp
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db 127 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db MEDIUM_SLOW ; growth rate
	dn FAIRYEGG, PLANT ; egg groups

	; tmhm
	tmhm HEADBUTT, TOXIC, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, SWAGGER, SLEEP_TALK, REST, ATTRACT
	; end