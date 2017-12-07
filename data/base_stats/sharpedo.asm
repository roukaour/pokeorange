	db SHARPEDO ; 221

	db 70, 120,  40,  95,  95,  40
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK
	db 60 ; catch rate
	db NO_ITEM ; item 1
	db NO_ITEM ; item 2
	db FEMALE_50 ; gender
	db 20 ; step cycles to hatch
	dn 7, 7 ; frontpic dimensions

	db SLOW ; growth rate
	dn FISH, FISH ; egg groups

	; tmhm
	tmhm WATER_PULSE, DARK_PULSE, TOXIC, HAIL, WHIRLPOOL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, FRUSTRATION, EARTHQUAKE, RETURN, DOUBLE_TEAM, GIGA_IMPACT, SWIFT, FACADE, REST, ATTRACT, THIEF, SURF, STRENGTH, ROCK_SMASH, DIVE, WATERFALL, ZEN_HEADBUTT, POISON_JAB, SLEEP_TALK, SWAGGER, ENDURE
	; end