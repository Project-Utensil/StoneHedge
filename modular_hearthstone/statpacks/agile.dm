// Statpacks focusing on Ranger/Rogue archetypes.

/datum/statpack/agile/none
	name = "None"
	desc = "There is nothing special about you beyond whatever training you have taken, you have no special qualities of your own."
	stat_array = list()

/datum/statpack/agile/swift
	name = "Swift"
	desc = "With the wind in your hair and trouble at your back, your speed has often been your salvation."
	stat_array = list(STAT_ENDURANCE = 1, STAT_SPEED = 2)

/datum/statpack/agile/hardy
	name = "Hardy"
	desc = "Uniquely Hermeiran fortitude affords you the means to shrug off illnesses and poisons that others might not."
	stat_array = list(STAT_CONSTITUTION = 2,  STAT_ENDURANCE = 1)

/datum/statpack/agile/tricky
	name = "Tricky"
	desc = "Swift feet with a mind to match."
	stat_array = list(STAT_INTELLIGENCE = 1, STAT_SPEED = 2)

/datum/statpack/agile/thug
	name = "Thuggish"
	desc = "Your robust physique and keen eye have oft been your most valuable friends in such trying times."
	stat_array = list(STAT_STRENGTH = 2, STAT_PERCEPTION = 1)

/datum/statpack/agile/wary
	name = "Wary"
	desc = "Eyes forward, ever and always. A careful course has always seen you through... so far."
	stat_array = list(STAT_PERCEPTION = 2, STAT_ENDURANCE = 2, STAT_SPEED = -1)

/datum/statpack/agile/dextrous
	name = "Dextrous"
	desc = "You see. You dash. You spring. You dodge. Can you keep it up?"
	stat_array = list(STAT_SPEED = 2, STAT_PERCEPTION = 2, STAT_ENDURANCE = -1)

/datum/statpack/agile/deft
	name = "Deft"
	desc = "Being quick on the draw has left you weaker when they live past your first strike."
	stat_array = list(STAT_PERCEPTION = 2, STAT_SPEED = 2, STAT_STRENGTH = -1)
