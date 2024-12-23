/obj/item/book/granter/crafting_recipe/frontier_guide
	name = "Frontiersman's Guide to The Galaxy"
	desc = "A helpful guide to the galaxy containing many, many, MANY recipes for pretty much everything."
	crafting_recipe_types = list(
		/datum/crafting_recipe/insulated_gloves,
		/datum/crafting_recipe/black_gloves,
		/datum/crafting_recipe/chief_engineer_gloves,
		/datum/crafting_recipe/combat_gloves,
		/datum/crafting_recipe/captain_gloves,
		/datum/crafting_recipe/mod_core_standard_secondary,
		/datum/crafting_recipe/advanced_modsuit,
		/datum/crafting_recipe/research_modsuit,
		/datum/crafting_recipe/safeguard_modsuit,
		/datum/crafting_recipe/rescue_modsuit,
		/datum/crafting_recipe/magnate_modsuit,
		/datum/crafting_recipe/frontier_gas_miner,
		/datum/crafting_recipe/frontier_bluespace_miner,
	)
	icon_state = "bookmindswap"
	uses = INFINITY
	remarks = list(
		"There seems to be the words, Don't Panic, printed in large friendly letters on its cover.",
		"For the sake of your sanity, avoid Nanotrasen poetry...",
		"Space is big. Really big. You just won't believe how vastly, hugely, mind bogglingly big it is. So why is it that you always find formerly-inhabited ruins everywhere?",
		"Never drink more than two Pan Galactic Gargle Blasters unless you are a thirty ton elephant with bronchial pneumonia.",
		"\"What's so wrong about being drunk?\" \"Ask a glass of water.\"",
		"In the beginning the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move.",
		"The marketing division of Nakamura Engineering has been described as \"A bunch of mindless jerks who'll be the first against the wall when the revolution comes.\"",
	)


/datum/crafting_recipe/insulated_gloves
	name = "Insulated Gloves"
	result = /obj/item/clothing/gloves/color/yellow
	reqs = list(
		/obj/item/clothing/gloves/frontier_colonist = 1,
		/obj/item/stack/sheet/plastic = 2, // no rubber = plastic used as an alternative. TODO: Make Rubber a thing, either chemical recipe for silicone rubber or rubberwood. or both
		/datum/reagent/plastic_polymers = 5, //Used as a binding agent, used for balancing as a way to make these harder than simply setting up the bio gen. GET A GRINDER
	)
	time = 5 SECONDS
	category = CAT_CLOTHING

/datum/crafting_recipe/black_gloves
	name = "Black Gloves"
	result = /obj/item/clothing/gloves/color/black
	reqs = list(
		/obj/item/clothing/gloves/color/white = 1,
		/obj/item/stack/sheet/plastic = 1,
	)
	time = 5 SECONDS
	category = CAT_CLOTHING

/datum/crafting_recipe/chief_engineer_gloves
	name = "Advanced Insulated Gloves"
	result = /obj/item/clothing/gloves/chief_engineer
	reqs = list(
		/obj/item/clothing/gloves/color/black = 1,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/stack/sheet/durathread = 3, // gotta use a new material
	)
	time = 5 SECONDS
	category = CAT_CLOTHING

/datum/crafting_recipe/combat_gloves
	name = "Combat Gloves"
	result = /obj/item/clothing/gloves/combat
	reqs = list(
		/obj/item/clothing/gloves/frontier_colonist = 1,
		/obj/item/clothing/gloves/color/yellow = 1,
		/obj/item/stack/sheet/durathread = 3, // gotta use a new material
	)
	time = 5 SECONDS
	category = CAT_CLOTHING

/datum/crafting_recipe/captain_gloves
	name = "Captain's Gloves"
	result = /obj/item/clothing/gloves/captain
	reqs = list(
		/obj/item/clothing/gloves/chief_engineer = 1,
		/obj/item/clothing/gloves/combat = 1,
		/obj/item/stack/sheet/bronze = 3, // fishing bonus. go fish
	)
	time = 5 SECONDS
	category = CAT_CLOTHING

/datum/crafting_recipe/mod_core_standard_secondary //secondary modcore recipe for the frontier, would be OP in normal use
	name = "MOD core (Standard)"
	result = /obj/item/mod/core/standard
	tool_behaviors = list(TOOL_SCREWDRIVER)
	time = 10 SECONDS
	reqs = list(
		/obj/item/stack/cable_coil = 5,
		/obj/item/stack/rods = 2,
		/obj/item/stack/sheet/glass = 1,
		/obj/item/food/grown/lanternfruit = 1,
	)
	category = CAT_ROBOT

/obj/item/mod/construction/plating/placeholder_sprite // so i dont have to make new sprites to test things
	var/state_to_use = "standard-plating"

/obj/item/mod/construction/plating/placeholder_sprite/Initialize(mapload)
	. = ..()
	icon_state = state_to_use

/obj/item/mod/construction/plating/placeholder_sprite/advanced
	theme = /datum/mod_theme/advanced
	icon_state = "cosmohonk-plating"
	state_to_use = "cosmohonk-plating"

/obj/item/mod/construction/plating/placeholder_sprite/research
	theme = /datum/mod_theme/research

/obj/item/mod/construction/plating/placeholder_sprite/safeguard
	theme = /datum/mod_theme/safeguard
	icon_state = "security-plating"
	state_to_use = "security-plating"

/obj/item/mod/construction/plating/placeholder_sprite/rescue
	theme = /datum/mod_theme/rescue
	icon_state= "medical-plating"
	state_to_use = "medical-plating"

/obj/item/mod/construction/plating/placeholder_sprite/magnate
	theme = /datum/mod_theme/magnate

/datum/crafting_recipe/advanced_modsuit
	name = "MOD Advanced Plating"
	result = /obj/item/mod/construction/plating/placeholder_sprite/advanced
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(
		/obj/item/mod/construction/plating/engineering = 1,
		/obj/item/mod/construction/plating/atmospheric = 1,
		/obj/item/stack/sheet/mineral/metal_hydrogen = 5, //get working on engi!
	)
	time = 10 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/research_modsuit
	name = "MOD Research Plating"
	result = /obj/item/mod/construction/plating/placeholder_sprite/research
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(
		/obj/item/mod/construction/plating = 1,
		/obj/item/slime_extract/grey = 1, //fishing, golem vendor or a really convoluted botany recipe
	)
	time = 10 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/safeguard_modsuit
	name = "MOD Safeguard Plating"
	result = /obj/item/mod/construction/plating/placeholder_sprite/safeguard
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(
		/obj/item/mod/construction/plating/security = 1,
		/obj/item/mod/construction/plating/cosmohonk = 1, // yin and yang
	)
	time = 10 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/rescue_modsuit
	name = "MOD Rescue Plating"
	result = /obj/item/mod/construction/plating/placeholder_sprite/rescue
	tool_behaviors = list(TOOL_WELDER)
	reqs = list(
		/obj/item/mod/construction/plating/medical = 1,
		/datum/reagent/reaction_agent/speed_agent = 10, // GO FAST
	)
	time = 10 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/magnate_modsuit
	name = "MOD Magnate Plating"
	result = /obj/item/mod/construction/plating/placeholder_sprite/magnate
	tool_behaviors = list(TOOL_WELDER)
	reqs = list( //BY YOUR POWERS COMBINED
		/obj/item/mod/construction/plating/placeholder_sprite/advanced = 1,
		/obj/item/mod/construction/plating/placeholder_sprite/research = 1,
		/obj/item/mod/construction/plating/placeholder_sprite/safeguard = 1,
		/obj/item/mod/construction/plating/placeholder_sprite/rescue = 1,
	)
	time = 10 SECONDS
	category = CAT_ROBOT


//needed to make the crafting menu have correct names and icons
/obj/item/mod/construction/plating/civilian
	name = "MOD civilian external plating"
	icon_state = "civilian-plating"

/obj/item/mod/construction/plating/engineering
	name = "MOD engineering external plating"
	icon_state = "engineering-plating"

/obj/item/mod/construction/plating/atmospheric
	name = "MOD atmospheric external plating"
	icon_state = "atmospheric-plating"

/obj/item/mod/construction/plating/medical
	name = "MOD medical external plating"
	icon_state = "medical-plating"

/obj/item/mod/construction/plating/security
	name = "MOD security external plating"
	icon_state = "security-plating"

/obj/item/mod/construction/plating/cosmohonk
	name = "MOD cosmohonk external plating"
	icon_state = "cosmohonk-plating"

/datum/lazy_template/virtual_domain/clown_planet
	completion_loot = list(/obj/item/bikehorn = 1, /obj/item/stack/sheet/mineral/bananium/five = 1) // makes bananium obtainable

/obj/item/summon_beacon/gas_miner/frontier
	name = "frontier gas miner beacon"
	desc = "Once a gas miner type is selected, delivers a gas miner to the target location."

	allowed_areas = list(
		/area,
	)

	selectable_atoms = list(
		/obj/machinery/atmospherics/miner/carbon_dioxide,
		/obj/machinery/atmospherics/miner/n2o,
		/obj/machinery/atmospherics/miner/nitrogen,
		/obj/machinery/atmospherics/miner/oxygen,
		/obj/machinery/atmospherics/miner/plasma,
	)

	area_string = "any"

/datum/crafting_recipe/frontier_gas_miner
	name = "Frontier Gas Mining Beacon"
	result = /obj/item/summon_beacon/gas_miner/frontier
	tool_behaviors = list(TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/flatpacked_machine/co2_cracker = 1,
		/obj/item/pickaxe/drill/compact = 2,
		/obj/item/stack/sheet/iron = 5,
	)
	time = 5 SECONDS
	category = CAT_ATMOSPHERIC

//different version of the bluespace miner, upgrades have more of an effect on it
/obj/machinery/bluespace_miner/frontier
	name = "overclocked bluespace miner"
	desc = "Through the power of bluespace, it is capable of producing materials. This version has been overclocked to produce more materials per cycle when upgraded. \
	The overclocking is only on the computation, producing no negative effects."
	circuit = /obj/item/circuitboard/machine/bluespace_miner/frontier

	//xenoarch rocks revmoved for better processing, bluespace added
	ore_chance = list(
		/obj/item/stack/sheet/iron = 20,
		/obj/item/stack/sheet/glass = 20,
		/obj/item/stack/sheet/mineral/plasma = 14,
		/obj/item/stack/sheet/mineral/silver = 8,
		/obj/item/stack/sheet/mineral/titanium = 8,
		/obj/item/stack/sheet/mineral/uranium = 3,
		/obj/item/stack/sheet/mineral/gold = 3,
		/obj/item/stack/sheet/mineral/diamond = 1,
		/obj/item/stack/sheet/bluespace_crystal = 1,
	)

	var/mat_quantity = 1

/obj/machinery/bluespace_miner/frontier/RefreshParts()
	. = ..()

	mat_quantity = 0
	for(var/datum/stock_part/micro_laser/laser_part in component_parts)
		mat_quantity += (laser_part.tier * 0.5)

/obj/machinery/bluespace_miner/frontier/spawn_mats()
	var/obj/chosen_sheet = pick_weight(ore_chance)
	if(mat_quantity >= 1) //in case someone makes tier 0 parts or an admin varedits... poorly
		for(var/i in 1 to floor(mat_quantity))
			new chosen_sheet(get_turf(src))
	else
		playsound(src, 'sound/machines/cryo_warning.ogg', 50, FALSE, SILENCED_SOUND_EXTRARANGE, ignore_walls = FALSE)

/obj/item/circuitboard/machine/bluespace_miner/frontier
	name = "Overclocked Bluespace Miner"
	build_path = /obj/machinery/bluespace_miner/frontier

/datum/crafting_recipe/frontier_bluespace_miner
	name = "Overclocked Bluespace Miner"
	result = /obj/item/circuitboard/machine/bluespace_miner/frontier
	tool_behaviors = list(TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/flatpacked_machine/co2_cracker = 1,
		/obj/item/pickaxe/drill/compact = 2,
		/obj/item/stack/sheet/bluespace_crystal = 1,
	)
	time = 5 SECONDS
	category = CAT_MISC

/datum/crafting_recipe/captain_sabre
	name = "Officer's Sabre"
	result = /obj/item/melee/sabre
	tool_behaviors = list(TOOL_SCREWDRIVER)
	reqs = list(
		/obj/item/forging/reagent_weapon/sword = 1,
		/obj/item/pickaxe/drill/compact = 2,
	)
	time = 5 SECONDS
	category = CAT_WEAPON_MELEE

/obj/item/storage/belt/sabre/empty

/obj/item/storage/belt/sabre/empty/PopulateContents()
	return
