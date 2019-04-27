modifier_activity16 = class({})

local _CODE_TO_ANIMATION_TRANSLATE = {
  [0] = "loadout",
  [1] = "split_shot",
  [2] = "chemical_rage",
  [3] = "agedspirit",
  [4] = "aggressive",
  [5] = "injured",
  [6] = "ancient_armor",
  [7] = "anvil",
  [8] = "arcana",
  [9] = "techies_arcana",
  [10] = "fast",
  [11] = "faster",
  [12] = "fastest",
  [13] = "abysm",
  [14] = "dualwield",
  [15] = "forcestaff_friendly",
  [16] = "phantom_attack",
  [17] = "snowangel",
  [18] = "suicide_squad",
  [19] = "taunt_fullbody",
  [20] = "armaments_set",
  [21] = "instagib",
  [22] = "tidehunter_boat",
  [23] = "shinobi_tail",
  [24] = "tidebringer",
  [25] = "masquerade",
  [26] = "pyre",
  [27] = "shinobi",
  [28] = "immortal",
  [29] = "cauldron",
  [30] = "red_moon",
  [31] = "when_nature_attacks",
  [32] = "odachi",
  [33] = "wraith_spin",
  [34] = "eyeoffetizu",
  [35] = "berserkers_blood",
  [36] = "flying",
  [37] = "frost_arrow",
  [38] = "manta",
  [39] = "come_get_it",
  [40] = "good_day_sir",
  [41] = "backstab",
  [42] = "offhand_basher",
  [43] = "batter_up",
  [44] = "black",
  [45] = "haste",
  [46] = "with_item",
  [47] = "bot",
  [48] = "web",
  [49] = "fountain",
  [50] = "broodmother_spin",
  [51] = "burrowed",
  [52] = "sandking_rubyspire_burrowstrike",
  [53] = "moth",
  [54] = "frostivus",
  [55] = "desolation",
  [56] = "sm_head",
  [57] = "chasm",
  [58] = "greevil_black_hole",
  [59] = "greevil_blade_fury",
  [60] = "greevil_bloodlust",
  [61] = "greevil_cold_snap",
  [62] = "greevil_decrepify",
  [63] = "greevil_diabolic_edict",
  [64] = "greevil_echo_slam",
  [65] = "greevil_fatal_bonds",
  [66] = "greevil_ice_wall",
  [67] = "ancestral_scepter",
  [68] = "greevil_laguna_blade",
  [69] = "greevil_leech_seed",
  [70] = "greevil_magic_missile",
  [71] = "greevil_maledict",
  [72] = "greevil_miniboss_black_brain_sap",
  [73] = "greevil_miniboss_black_nightmare",
  [74] = "greevil_miniboss_blue_cold_feet",
  [75] = "greevil_miniboss_blue_ice_vortex",
  [76] = "greevil_miniboss_green_living_armor",
  [77] = "greevil_miniboss_green_overgrowth",
  [78] = "greevil_miniboss_orange_dragon_slave",
  [79] = "greevil_miniboss_orange_lightstrike_array",
  [80] = "greevil_miniboss_purple_plague_ward",
  [81] = "greevil_miniboss_purple_venomous_gale",
  [82] = "greevil_miniboss_red_earthshock",
  [83] = "greevil_miniboss_red_overpower",
  [84] = "greevil_miniboss_white_purification",
  [85] = "greevil_miniboss_yellow_ion_shell",
  [86] = "greevil_miniboss_yellow_surge",
  [87] = "greevil_natures_attendants",
  [88] = "greevil_phantom_strike",
  [89] = "greevil_poison_nova",
  [90] = "greevil_purification",
  [91] = "greevil_shadow_strike",
  [92] = "greevil_shadow_wave",
  [93] = "stalker_exo",
  [94] = "death_protest",
  [95] = "nihility",
  [96] = "deadwinter_soul",
  [97] = "charge",
  [98] = "charge_attack",
  [99] = "iron_surge",
  [100] = "impatient_maiden",
  [101] = "glacier",
  [102] = "snowball",
  [103] = "corpse_dresstop",
  [104] = "corpse_dress",
  [105] = "corpse_scarf",
  [106] = "unbroken",
  [107] = "dc_sb_charge",
  [108] = "dc_sb_charge_attack",
  [109] = "dc_sb_charge_finish",
  [110] = "dc_sb_ultimate",
  [111] = "faces_hakama",
  [112] = "faces_wraps",
  [113] = "faces_mask",
  [114] = "lodestar",
  [115] = "reincarnate",
  [116] = "demon_drain",
  [117] = "divine_sorrow",
  [118] = "divine_sorrow_loadout",
  [119] = "divine_sorrow_loadout_spawn",
  [120] = "divine_sorrow_sunstrike",
  [121] = "duel_kill",
  [122] = "forcestaff_enemy",
  [123] = "fish_slap",
  [124] = "focusfire",
  [125] = "fear",
  [126] = "ftp_dendi_back",
  [127] = "triumphant_timelord",
  [128] = "ground_pound",
  [129] = "harlequin",
  [130] = "injured_aggressive",
  [131] = "f2p_doom",
  [132] = "obsidian_helmet",
  [133] = "item_style_2",
  [134] = "blood_chaser",
  [135] = "manias_mask",
  [136] = "punch",
  [137] = "thirst",
  [138] = "impetus",
  [139] = "taunt_killtaunt",
  [140] = "level_1",
  [141] = "level_2",
  [142] = "level_3",
  [143] = "dagger_twirl",
  [144] = "ancestors_edge",
  [145] = "ancestors_pauldron",
  [146] = "ancestors_vambrace",
  [147] = "bladebiter",
  [148] = "burning_fiend",
  [149] = "fiery_soul",
  [150] = "frostiron_raider",
  [151] = "obeisance_of_the_keeper",
  [152] = "salvaged_sword",
  [153] = "serene_honor",
  [154] = "shinobi_mask",
  [155] = "swordonshoulder",
  [156] = "whalehook",
  [157] = "winterblight",
  [158] = "lucentyr",
  [159] = "lyreleis_breeze",
  [160] = "mace",
  [161] = "tinker_rollermaw",
  [162] = "meld",
  [163] = "agrressive",
  [164] = "miniboss",
  [165] = "moonfall",
  [166] = "moon_griffon",
  [167] = "overpower1",
  [168] = "overpower2",
  [169] = "overpower3",
  [170] = "overpower4",
  [171] = "overpower5",
  [172] = "overpower6",
  [173] = "loda",
  [174] = "dark_wraith",
  [175] = "pinfold",
  [176] = "digger",
  [177] = "portrait_fogheart",
  [178] = "silent_ripper",
  [179] = "shake_moneymaker",
  [180] = "belly_flop",
  [181] = "roshan",
  [182] = "am_blink",
  [183] = "mana_void",
  [184] = "culling_blade",
  [185] = "brain_sap",
  [186] = "fiends_grip",
  [187] = "roar",
  [188] = "axes",
  [189] = "stolen_firefly",
  [190] = "firefly",
  [191] = "freezing_field",
  [192] = "frostbite",
  [193] = "crystal_nova",
  [194] = "black_hole",
  [195] = "fissure",
  [196] = "slam",
  [197] = "totem",
  [198] = "omnislash",
  [199] = "spin",
  [200] = "finger",
  [201] = "impale",
  [202] = "laguna",
  [203] = "lsa",
  [204] = "mana_drain",
  [205] = "wave",
  [206] = "leap",
  [207] = "requiem",
  [208] = "shadowraze",
  [209] = "sprout",
  [210] = "summon",
  [211] = "teleport",
  [212] = "wrath",
  [213] = "darkness",
  [214] = "void",
  [215] = "guardian_angel",
  [216] = "purification",
  [217] = "repel",
  [218] = "dismember",
  [219] = "life_drain",
  [220] = "hook",
  [221] = "qop_blink",
  [222] = "scream",
  [223] = "shadow_strike",
  [224] = "sonic_wave",
  [225] = "ravage",
  [226] = "snipe",
  [227] = "stolen_charge",
  [228] = "strike",
  [229] = "burrow",
  [230] = "shrapnel",
  [231] = "ball_lightning",
  [232] = "remnant",
  [233] = "bolt",
  [234] = "vortex",
  [235] = "earthshock",
  [236] = "gale",
  [237] = "plague_ward",
  [238] = "poison_nova",
  [239] = "viper_strike",
  [240] = "wall",
  [241] = "ward",
  [242] = "powershot",
  [243] = "end",
  [244] = "windrun",
  [245] = "windy",
  [246] = "chase",
  [247] = "injured rare",
  [248] = "pegleg",
  [249] = "start",
  [250] = "sb_helmet",
  [251] = "sb_bracers",
  [252] = "sb_shoulder",
  [253] = "sb_spear",
  [254] = "dominator",
  [255] = "iron",
  [256] = "sven_shield",
  [257] = "sven_warcry",
  [258] = "chicken_gesture",
  [259] = "emp",
  [260] = "slasher_weapon",
  [261] = "slasher_offhand",
  [262] = "slasher_chest",
  [263] = "slasher_mask",
  [264] = "sm_armor",
  [265] = "sm_shoulder",
  [266] = "wolfhound",
  [267] = "great_safari",
  [268] = "taunt_quickdraw_gesture",
  [269] = "sparrowhawk_bow",
  [270] = "sparrowhawk_cape",
  [271] = "sparrowhawk_quiver",
  [272] = "sparrowhawk_hood",
  [273] = "sparrowhawk_shoulder",
  [274] = "twister",
  [275] = "sprint",
  [276] = "sugarrush",
  [277] = "trickortreat",
  [278] = "transition",
  [279] = "torment",
  [280] = "stinger",
  [281] = "whats_that",
  [282] = "witchdoctor_jig",
  [283] = "backstroke_gesture",
  [284] = "bazooka",
  [285] = "cat_dancer_gesture",
  [286] = "face_me",
  [287] = "swag_gesture",
  [288] = "get_burned",
  [289] = "giddy_up_gesture",
  [290] = "guitar",
  [291] = "hang_loose_gesture",
  [292] = "horn",
  [293] = "happy_dance",
  [294] = "jump_gesture",
  [295] = "loser",
  [296] = "lute",
  [297] = "magic_ends_here",
  [298] = "mag_power_gesture",
  [299] = "mask_lord",
  [300] = "poundnpoint",
  [301] = "robot_gesture",
  [302] = "taunt_roll_gesture",
  [303] = "sharp_blade",
  [304] = "staff_swing",
  [305] = "groove_gesture",
  [306] = "telebolt",
  [307] = "admirals_prow",
  [308] = "turbulent_teleport",
  [309] = "timelord_head",
  [310] = "tree",
  [311] = "dryad_tree",
  [312] = "tidehunter_toss_fish",
  [313] = "enchant_totem",
  [314] = "trapper",
  [315] = "twinblade_attack",
  [316] = "twinblade_attack_b",
  [317] = "twinblade_attack_c",
  [318] = "twinblade_attack_d",
  [319] = "twinblade_attack_injured",
  [320] = "twinblade_death",
  [321] = "twinblade_idle",
  [322] = "twinblade_idle_injured",
  [323] = "twinblade_idle_rare",
  [324] = "twinblade_injured_attack_b",
  [325] = "twinblade_jinada",
  [326] = "twinblade_jinada_injured",
  [327] = "twinblade_shuriken_toss",
  [328] = "twinblade_shuriken_toss_injured",
  [329] = "twinblade_spawn",
  [330] = "twinblade_stun",
  [331] = "twinblade_track",
  [332] = "twinblade_track_injured",
  [333] = "twinblade_victory",
  [334] = "melee",
  [335] = "backward",
  [336] = "forward",
  [337] = "vendetta",
  [338] = "viridi_set",
  [339] = "fishstick",
  [340] = "dogofduty",
  [341] = "cryAnimationExportNode",
  [342] = "dog_of_duty",
  [343] = "dizzying_punch",
  [344] = "wardstaff",
  [345] = "glory",
  [346] = "white",
  [347] = "tidehunter_yippy",
  [348] = "rampant",
  [349] = "overload",
  [350] = "surge",
  [351] = "es_prosperity",
  [352] = "Espada_pistola",
  [353] = "overload_injured",
  [354] = "ss_fortune",
  [355] = "liquid_fire",
  [356] = "jakiro_icemelt",
  [357] = "jakiro_roar",
  [358] = "chakram",
  [359] = "doppelwalk",
  [360] = "enrage",
  [361] = "fast_run",
  [362] = "overpower",
  [363] = "overwhelmingodds",
  [364] = "pregame",
  [365] = "shadow_dance",
  [366] = "shukuchi",
  [367] = "strength",
  [368] = "twinblade_run",
  [369] = "twinblade_run_injured",
  [370] = "windwalk",
  [371] = "walk",
  [372] = "run",
  [373] = "run_fast",
  [374] = "<none>",
  [375] = "attack_long_range",
  [376] = "attack_normal_range",
  [377] = "spear",
  [378] = "faces_vest",
  [379] = "slasher_shoulder",
  [380] = "slasher_arms",
  [381] = "slasher_belt",
  [382] = "ancestral",
  [383] = "spirit",
  [384] = "ancestors_belt",
  [385] = "sm_weapons",
  [386] = "sm_belt",
  [387] = "shinobi_wraps",
  [388] = "shinobi_shoulder",
  [389] = "faces_katana",
  [390] = "sb_offhand",
  [391] = "regalia_bonelord",
  [392] = "ernest_pipe",
  [393] = "lightning",
  [394] = "olde_pipe",
  [395] = "yuwipi",
  [396] = "MGC",
  [397] = "shade",
  [398] = "eldwurm",
  [399] = "reprisal",
  [400] = "basher",
  [401] = "suffer",
  [402] = "darkclaw",
  [403] = "whiskey",
  [404] = "banana_gesture",
  [405] = "dive",
  [406] = "eztzhok",
  [407] = "eztzhok_off",
  [408] = "immosh",
  [409] = "solar",
  [410] = "para",
  [411] = "priest",
  [412] = "tako",
  [413] = "force",
  [414] = "shard",
  [415] = "crimson",
  [416] = "light",
  [417] = "burn",
  [418] = "juggle_gesture",
  [419] = "hell_gesture",
  [420] = "disco_gesture",
  [421] = "tears",
  [422] = "ogre_hop_gesture",
  [423] = "sideflip_gesture",
  [424] = "blowkiss_gesture",
  [425] = "terror",
  [426] = "pogo_gesture",
  [427] = "ti7",
  [428] = "pudge_ti7_immortal",
  [429] = "green",
  [430] = "weaver_ti7_immortal",
  [431] = "viper_immortal_head_ti7",
  [432] = "bm_ti7_immortal_shoulder",
  [433] = "pl_ti7_immortal_shoulder",
  [434] = "rage_gesture",
  [435] = "funky_gesture",
  [436] = "ti4",
  [437] = "auspice",
  [438] = "hydro",
  [439] = "ti6",
  [440] = "fallen_legion",
  [441] = "hoard",
  [442] = "jade",
  [443] = "starstorm",
  [444] = "augur_arm",
  [445] = "latch",
  [446] = "falcon",
  [447] = "harpoon",
  [448] = "shards",
  [449] = "fur",
  [450] = "voodoo",
  [451] = "rain_gesture",
  [452] = "inner_peace_gesture",
  [453] = "selemene_gesture",
  [454] = "ti8_taunt",
  [455] = "dreamleague",
  [456] = "bonkers_the_mad",
  [457] = "aeons",
  [458] = "Hero_Magnataur.ShockWave.Cast.Anvil",
  [459] = "spike",
  [460] = "walk_gesture",
  [461] = "apex",
  [462] = "mermaid",
  [463] = "ashes",
  [464] = "tactician",
  [465] = "bladeform_pants",
  [466] = "favor",
  [467] = "silent",
  [468] = "freeze",
  [469] = "arcana_style",
  [470] = "red",
  [471] = "scholar",
  [472] = "lycosidae_spread",
  [473] = "shark_up",
  [474] = "spectre_ti7_immortal",
  [475] = "head_roll_gesture",
  [476] = "break_gesture",
  [477] = "swing_around_gesture",
  [478] = "smoke",
  [479] = "treant_ti7_immortal",
  [480] = "immortal_cape",
  [481] = "kotl_ti7_immortal",
  [482] = "back",
  [483] = "rage",
  [484] = "assassin",
  [485] = "immortal_shoulder",
  [486] = "musket",
  [487] = "rose",
  [488] = "rope",
  [489] = "corkscrew_gesture",
  [490] = "kunkka_dance_gesture",
  [491] = "thirst_loadout",
  [492] = "ti8",
  [493] = "guns",
  [494] = "focal",
  [495] = "owl_mount",
  [496] = "bombadillo",
  [497] = "nords",
  [498] = "ti8_taunt_cooked",
  [499] = "tube_ti8",
  [500] = "arcana_skip",
  [501] = "ti8_immortal",
  [502] = "ti8_style_1",
  [503] = "viper_ti8_immortal_tail",
  [504] = "dance",
  [505] = "legion_commander_ti8",
  [506] = "centaur_taunt_gesture",
  [507] = "keg_roll_gesture",
  [508] = "dota_plus_head",
  [509] = "dota_plus",
  [510] = "2018_frostivus",
  [511] = "Tsukumo_mount",
  [512] = "level1",
  [513] = "level2",
  [514] = "level3",
  [515] = "level4",
  [516] = "level5",
  [517] = "level6",
  [518] = "super_fast",
  [519] = "attack_closest_range",
  [520] = "attack_close_range",
  [521] = "attack_medium_range",
}

function modifier_activity16:OnCreated(keys)
  if not IsServer() then
    self.translate = _CODE_TO_ANIMATION_TRANSLATE[keys.stack_count]
  else
    self.translate = keys.translate
  end
end

function modifier_activity16:GetAttributes()
  return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE --+ MODIFIER_ATTRIBUTE_MULTIPLE
end

function modifier_activity16:IsHidden()
  return true
end

function modifier_activity16:IsDebuff()
  return false
end

function modifier_activity16:IsPurgable()
  return false
end

function modifier_activity16:DeclareFunctions()
  local funcs = {
    MODIFIER_PROPERTY_TRANSLATE_ACTIVITY_MODIFIERS
  }

  return funcs
end

function modifier_activity16:GetActivityTranslationModifiers(...)
  --print('TRANSLATE MODIFIER', IsServer())
  --print(self.translate)
  return self.translate or 0
end

--[[function modifier_activity16:CheckState() 
  local state = {
    [MODIFIER_STATE_UNSELECTABLE] = true,
    [MODIFIER_STATE_INVULNERABLE] = true,
    [MODIFIER_STATE_NOT_ON_MINIMAP] = true,
    [MODIFIER_STATE_NO_HEALTH_BAR] = true,
  }

  return state
end]]
