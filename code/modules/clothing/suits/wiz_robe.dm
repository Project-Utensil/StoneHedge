/obj/item/clothing/head/wizard
	name = "wizard hat"
	desc = ""
	icon_state = "wizard"
	gas_transfer_coefficient = 0.01 // IT'S MAGICAL OKAY JEEZ +1 TO NOT DIE
	permeability_coefficient = 0.01
	armor = list("blunt" = 30, "slash" = 20, "stab" = 25, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	strip_delay = 50
	equip_delay_other = 50
	clothing_flags = SNUG_FIT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	dog_fashion = /datum/dog_fashion/head/blue_wizard

/obj/item/clothing/head/wizard/red
	name = "red wizard hat"
	desc = ""
	icon_state = "redwizard"
	dog_fashion = /datum/dog_fashion/head/red_wizard

/obj/item/clothing/head/wizard/yellow
	name = "yellow wizard hat"
	desc = ""
	icon_state = "yellowwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/black
	name = "black wizard hat"
	desc = ""
	icon_state = "blackwizard"
	dog_fashion = null

/obj/item/clothing/head/wizard/fake
	name = "wizard hat"
	desc = ""
	icon_state = "wizard-fake"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("blunt" = 0, "slash" = 0, "stab" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE
	dog_fashion = /datum/dog_fashion/head/blue_wizard

/obj/item/clothing/head/wizard/marisa
	name = "witch hat"
	desc = ""
	icon_state = "marisa"
	dog_fashion = null

/obj/item/clothing/head/wizard/magus
	name = "\improper Magus helm"
	desc = ""
	icon_state = "magus"
	item_state = "magus"
	dog_fashion = null

/obj/item/clothing/head/wizard/santa
	name = "Santa's hat"
	desc = ""
	icon_state = "santahat"
	flags_inv = HIDEHAIR|HIDEFACIALHAIR
	dog_fashion = null

/obj/item/clothing/suit/wizrobe
	name = "wizard robe"
	desc = ""
	icon_state = "wizard"
	item_state = "wizrobe"
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor = list("blunt" = 50, "slash" = 30, "stab" = 40, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	allowed = list(/obj/item/teleportation_scroll)
	flags_inv = HIDEJUMPSUIT
	strip_delay = 50
	equip_delay_other = 50
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/suit/wizrobe/red
	name = "red wizard robe"
	desc = ""
	icon_state = "redwizard"
	item_state = "redwizrobe"

/obj/item/clothing/suit/wizrobe/yellow
	name = "yellow wizard robe"
	desc = ""
	icon_state = "yellowwizard"
	item_state = "yellowwizrobe"

/obj/item/clothing/suit/wizrobe/black
	name = "black wizard robe"
	desc = ""
	icon_state = "blackwizard"
	item_state = "blackwizrobe"

/obj/item/clothing/suit/wizrobe/marisa
	name = "witch robe"
	desc = ""
	icon_state = "marisa"
	item_state = "marisarobe"

/obj/item/clothing/suit/wizrobe/magusblue
	name = "\improper Magus robe"
	desc = ""
	icon_state = "magusblue"
	item_state = "magusblue"

/obj/item/clothing/suit/wizrobe/magusred
	name = "\improper Magus robe"
	desc = ""
	icon_state = "magusred"
	item_state = "magusred"


/obj/item/clothing/suit/wizrobe/santa
	name = "Santa's suit"
	desc = ""
	icon_state = "santa"
	item_state = "santa"

/obj/item/clothing/suit/wizrobe/fake
	name = "wizard robe"
	desc = ""
	icon_state = "wizard-fake"
	item_state = "wizrobe"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("blunt" = 0, "slash" = 0, "stab" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/head/wizard/marisa/fake
	name = "witch hat"
	desc = ""
	icon_state = "marisa"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("blunt" = 0, "slash" = 0, "stab" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/suit/wizrobe/marisa/fake
	name = "witch robe"
	desc = ""
	icon_state = "marisa"
	item_state = "marisarobe"
	gas_transfer_coefficient = 1
	permeability_coefficient = 1
	armor = list("blunt" = 0, "slash" = 0, "stab" = 0, "bullet" = 0, "laser" = 0, "energy" = 0, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 0)
	resistance_flags = FLAMMABLE

/obj/item/clothing/suit/wizrobe/paper
	name = "papier-mache robe" // no non-latin characters!
	desc = ""
	icon_state = "wizard-paper"
	item_state = "wizard-paper"
	var/robe_charge = TRUE
	actions_types = list(/datum/action/item_action/stickmen)


/obj/item/clothing/suit/wizrobe/paper/ui_action_click(mob/user, action)
	stickmen()


/obj/item/clothing/suit/wizrobe/paper/verb/stickmen()
	set hidden = 1
	set name = "Summon Stick Minions"
	set src in usr
	if(!isliving(usr))
		return
	if(!robe_charge)
		to_chat(usr, span_warning("\The [src]'s internal magic supply is still recharging!"))
		return

	usr.say("Rise, my creation! Off your page into this realm!", forced = "stickman summoning")
	playsound(src.loc, 'sound/blank.ogg', 50, TRUE, TRUE)
	var/mob/living/M = new /mob/living/simple_animal/hostile/stickman(get_turf(usr))
	var/list/factions = usr.faction
	M.faction = factions
	src.robe_charge = FALSE
	sleep(30)
	src.robe_charge = TRUE
	to_chat(usr, span_notice("\The [src] hums, its internal magic supply restored."))


//Shielded Armour

/obj/item/clothing/suit/space/hardsuit/shielded/wizard
	name = "battlemage armour"
	desc = ""
	icon_state = "battlemage"
	item_state = "battlemage"
	recharge_rate = 0
	current_charges = 15
	recharge_cooldown = INFINITY
	shield_state = "shield-red"
	shield_on = "shield-red"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	armor = list("blunt" = 50, "slash" = 30, "stab" = 40, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	slowdown = 0
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard
	name = "battlemage helmet"
	desc = ""
	icon_state = "battlemage"
	item_state = "battlemage"
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	armor = list("blunt" = 50, "slash" = 30, "stab" = 40, "bullet" = 20, "laser" = 20, "energy" = 20, "bomb" = 20, "bio" = 20, "rad" = 20, "fire" = 100, "acid" = 100)
	actions_types = null //No inbuilt light
	resistance_flags = FIRE_PROOF | ACID_PROOF

/obj/item/clothing/head/helmet/space/hardsuit/shielded/wizard/attack_self(mob/user)
	return

/obj/item/wizard_armour_charge
	name = "battlemage shield charges"
	desc = ""
	icon = 'icons/effects/effects.dmi'
	icon_state = "electricity2"

/obj/item/wizard_armour_charge/afterattack(obj/item/clothing/suit/space/hardsuit/shielded/wizard/W, mob/user, proximity)
	. = ..()
	if(!proximity)
		return
	if(!istype(W))
		to_chat(user, span_warning("The rune can only be used on battlemage armour!"))
		return
	W.current_charges += 8
	to_chat(user, span_notice("I charge \the [W]. It can now absorb [W.current_charges] hits."))
	qdel(src)
