const_value set 1
	const CRYSTAL_CAVE_B1_BROCK
	const CRYSTAL_CAVE_B1_ITEM1
	const CRYSTAL_CAVE_B1_ONIX

CrystalCaveB1_MapScriptHeader::

.Triggers: db 0

.Callbacks: db 0

CrystalCaveB1BrockScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .BrockDefeated
    writetext CrystalCaveB2BrockText
	waitbutton
	closetext
	winlosstext BrockWinLoss, 0
	loadtrainer BROCK, 1
	startbattle
	playmapmusic
	reloadmapafterbattle
	opentext
	writetext BrockWonText
	waitbutton
	closetext
	setevent EVENT_BEAT_BROCK
	end

.BrockDefeated:
	checkevent EVENT_CRYSTAL_ONIX_DEFEATED
	iftrue .BrockLeaving
	writetext BrockDefeatedText
	waitbutton
	closetext
	end

.BrockLeaving:
	writetext BrockStayingText
	waitbutton
	closetext
	end

CrystalOnixScript:
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .BattleCrystalOnix
	writetext EarnTheRightText
	waitbutton
	closetext
	end

.BattleCrystalOnix:
	writetext CrystalOnixText
	pause 15
	cry ONIX
	closetext
	loadwildmon ONIX, 20
	writecode VAR_BATTLETYPE, BATTLETYPE_CRYSTAL_ONIX
	startbattle
	disappear CRYSTAL_CAVE_B1_ONIX
	reloadmapafterbattle
	end

CrystalCaveB1TMDragonbreath:
	itemball TM_DRAGONBREATH

CrystalOnixText:
	text "Grraaahr!"
	done

CrystalCaveB2BrockText:
	text "So you made it!"
	line "I apologize, what"
	cont "was your name?"

	para "<...><...><...><...>"

	para "So your name is"
	line "<PLAYER>."

	para "Well then, as"
	line "promised, let's"
	cont "battle for the"
	cont "right to battle"
	cont "the CRYSTAL ONIX!"
	done

BrockWinLoss:
	text "Well done,"
	line "<PLAYER>."
	done

BrockWonText:
	text "That was hard-"
	line "fought, <PLAYER>."

	para "You've earned the"
	line "right to challenge"
	cont "the CRYSTAL ONIX."

	para "You are a very"
	line "talented trainer!"
	done

BrockDefeatedText:
	text "You've earned the"
	line "right to challenge"
	cont "the CRYSTAL ONIX."
	done

BrockStayingText:
	text "<PLAYER>, that"
	line "was amazing!"

	para "You displayed"
	line "skill I have only"
	cont "seen from two"
	cont "other trainers."

	para "I truly hope we"
	line "will meet again."

	para "I'm going to stay"
	line "here for a little"
	cont "while to research"
	cont "this cave."

	para "Who knows what"
	line "secrets lie here?"
	done

EarnTheRightText:
	text "You have not yet"
	line "earned the right"
	cont "to battle the"
	cont "CRYSTAL ONIX."
	done

CrystalCaveB1_MapEventHeader::

.Warps: db 1
	warp_def 17, 7, 2, CRYSTAL_CAVE_1F

.CoordEvents: db 0

.BGEvents: db 0

.ObjectEvents: db 3
	person_event SPRITE_BROCK, 22, 19, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, CrystalCaveB1BrockScript, EVENT_CRYSTAL_CAVE_B1_BROCK
	person_event SPRITE_POKE_BALL, 4, 29, SPRITEMOVEDATA_ITEM_TREE, 0, 0, -1, -1, 0, PERSONTYPE_ITEMBALL, 0, CrystalCaveB1TMDragonbreath, EVENT_CRYSTAL_CAVE_B1_TM_DRAGONBREATH
	person_event SPRITE_ONIX, 19, 19, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_OW_BLUE, 0, 0, CrystalOnixScript, EVENT_CRYSTAL_ONIX_DEFEATED

