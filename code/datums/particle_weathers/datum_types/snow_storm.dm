//Snow - goes down and swirls
/particles/weather/snow
	icon_state             = list("cross"=2, "snow_1"=5, "snow_2"=2, "snow_3"=2,)
	color                  = "#ffffff"
	position               = generator("box", list(-500,-256,5), list(500,500,0))
	spin                   = generator("num",-10,10)
	gravity                = list(0, -2, 0.1)
	drift                  = generator("circle", 0, 3) // Some random movement for variation
	friction               = 0.3  // shed 30% of velocity and drift every 0.1s
	//Weather effects, max values
	maxSpawning           = 50
	minSpawning           = 10
	wind                  = 2

	// big snowflakes
	transform			 = null

/datum/particle_weather/snow_gentle
	name = "Snow"
	desc = "Light snowfall."
	particleEffectType = /particles/weather/snow

	scale_vol_with_severity = TRUE
	weather_sounds = list(/datum/looping_sound/snow)

	minSeverity = 1
	maxSeverity = 10
	maxSeverityChange = 5
	severitySteps = 5
	immunity_type = TRAIT_SNOWSTORM_IMMUNE
	probability = 1
	target_trait = PARTICLEWEATHER_SNOW

//Makes you a little chilly
/datum/particle_weather/snow_gentle/weather_act(mob/living/L)
	//shit that prevents our ass from freezing.
	var/turf/ceiling = get_step_multiz(src, UP)
	if(ceiling)
		if(!istype(ceiling, /turf/open/transparent/openspace))
			return
	var/obj/item/bedsheet/rogue/bedsheet = locate() in L.loc
	if(bedsheet)
		return
	for(var/obj/machinery/light/rogue/heater in range(3, L))
		return
	var/area/thearea = get_area(L)
	if(!thearea.outdoors)
		return
	L.adjust_bodytemperature(-rand(1,4))

/obj/emitters/weather/snow
	particles 	= new/particles/weather/snow

/datum/particle_weather/snow_storm
	name = "Snow storm"
	desc = "Heavy snowstorm, la la description."
	particleEffectType = /particles/weather/snow

	scale_vol_with_severity = TRUE
	weather_sounds = list(/datum/looping_sound/snow)
	weather_messages = list("You feel a deep chill.", "The cold wind is freezing me to the bone!")

	minSeverity = 40
	maxSeverity = 100
	maxSeverityChange = 50
	severitySteps = 50
	immunity_type = TRAIT_SNOWSTORM_IMMUNE
	probability = 1
	target_trait = PARTICLEWEATHER_SNOW

//Makes you a lot chilly
/datum/particle_weather/snow_storm/weather_act(mob/living/L)
	//shit that prevents our ass from freezing.
	var/turf/ceiling = get_step_multiz(src, UP)
	if(ceiling)
		if(!istype(ceiling, /turf/open/transparent/openspace))
			return
	var/obj/item/bedsheet/rogue/bedsheet = locate() in L.loc
	if(bedsheet)
		return
	for(var/obj/machinery/light/rogue/heater in range(3, L))
		return
	var/area/thearea = get_area(L)
	if(!thearea.outdoors)
		return
	L.adjust_bodytemperature(-rand(4,8))
