	db FARFETCH_D ; 083

	db  52,  90,  55,  60,  58,  62
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING
	db 45 ; catch rate
	db NO_ITEM ; item 1
	db STICK ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 6, 6 ; frontpic dimensions

	db MEDIUM_FAST ; growth rate
	dn AVIAN, FIELD ; egg groups

	; tmhm
	tmhm TOXIC, SUNNY_DAY, PROTECT, FRUSTRATION, IRON_TAIL, RETURN, DOUBLE_TEAM, SWIFT, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, CUT, FLY, HEADBUTT, POISON_JAB, SLEEP_TALK, SWAGGER, ENDURE
	; end