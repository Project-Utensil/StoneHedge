/datum/advclass/minstrel
	name = "Minstrel"
	tutorial = "You are a musician at heart, and not like those so-called bards who traipse around in fancy cloth and swordfight in the woods. Music is truly your calling, you're just... Yet to find a receptive audience."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDSPLUS
	outfit = /datum/outfit/job/roguetown/adventurer/minstrel
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)

/datum/outfit/job/roguetown/adventurer/minstrel/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/music, 6, TRUE) // Screw it, unlike Bards they don't get expert combat skill...
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/sneaking, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/stealing, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/athletics, 1, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/crafting, 3 , TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/masonry, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/craft/carpentry, 3, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/combat/unarmed, 1, TRUE)
	H.mind.adjust_skillrank_up_to(/datum/skill/misc/reading, 3, TRUE)
	head = /obj/item/clothing/head/roguetown/bardhat //with this hat, they will get all the pussy(or dick depending on preference(or both ig))
	neck = /obj/item/storage/belt/rogue/pouch/coins/poor
	cloak = /obj/item/clothing/cloak/half
	shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/white
	r_hand = /obj/item/rogue/instrument/accord
	pants = /obj/item/clothing/under/roguetown/tights/random
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	belt = /obj/item/storage/belt/rogue/leather/cloth
	beltr = /obj/item/rogueweapon/huntingknife/idagger
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/rogue/instrument/lute = 1, /obj/item/rogue/instrument/flute = 1, /obj/item/rogue/instrument/drum = 1)
	H.change_stat("intelligence", 1)
	H.change_stat("speed", 2)
	H.change_stat("fortune", 2)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/mockery)
	ADD_TRAIT(H, TRAIT_EMPATH, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
	if(isseelie(H))
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/seelie_dust)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/summon_rat)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/strip)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/seelie_kiss)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/splash)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/roustame)
		H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/projectile/animate_object)
