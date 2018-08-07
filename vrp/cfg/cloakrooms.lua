
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local emergency_male = { model = "s_m_m_paramedic_01" }
local emergency_female = { model = "s_f_y_scrubs_01" }
local fbi_male = { model = "s_m_m_ciasec_01" }
local fbi_female = { model = "ig_michelle" }
local sheriff_male = { model = "s_m_y_sheriff_01"}
local sheriff_female = { model = "s_f_y_ranger_01"}
--s_m_m_paramedic_01
--s_f_y_scrubs_01
--mp_m_freemode_01
--mp_f_freemode_01


for i=0,19 do
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["police"] = {
    _config = { permissions = {"police.cloakroom"} },
    ["Male uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },
    ["Female uniform"] = {
      [3] = {35,0},
      [4] = {30,0},
      [6] = {24,0},
      [8] = {6,0},
      [11] = {48,0},
      ["p2"] = {2,0}
    }
  },
  ["president"] = {
    _config = { permissions = {"president.cloakroom"} },
    ["Male uniform"] = {
	  [3] = {1,0},
	  [4] = {10,0},
	  [6] = {10,0},
	  [8] = {4,0},
	  [11] = {10,0},
	  ["p2"] = {-1,0}       
    },
    ["Female uniform"] = {
	  [3] = {0,0},
	  [4] = {37,0},
	  [6] = {13,0},
	  [8] = {21,1},
	  [11] = {24,3},
	  ["p2"] = {-1,0}
    }
},
  ["surgery"] = {
    _config = { not_uniform = true },
    ["Male"] = surgery_male,
    ["Female"] = surgery_female
  },
  ["emergency"] = {
    _config = { permissions = {"emergency.cloakroom"} },
    ["Male"] = emergency_male,
    ["Female"] = emergency_female
  },
  ["fbi"] = {
    _config = { permissions = {"fbi.cloakroom"} },
    ["Male"] = fbi_male,
    ["Female"] = fbi_female
  },
  ["sheriff"] = {
    _config = { permissions = {"sheriff.cloakroom"} },
    ["Male"] = sheriff_male,
    ["Female"] = sheriff_female
  }
}

cfg.cloakrooms = {
  {"police", 1848.21, 3688.51, 34.2671},
  {"police", 444.743347167969, -975.502624511719, 30.6895961761475},
  {"police", 369.9228515625,-1607.12976074219,29.291934967041},
  {"fbi", 442.023559570313,-996.088012695313,30.6896018981934}, 
  {"sheriff", 451.532592773438,-973.137451171875,30.6895999908447},
  {"president",105.48087310791,-1088.82177734375,29.3024787902832},
  {"surgery",1849.7425,3686.5759,34.2670},----first spawn change skin
  {"surgery",75.3451766967773,-1392.86596679688,29.3761329650879},---skinsshops
  {"surgery",-700.089477539063,-151.570571899414,37.4151458740234},
  {"surgery",-170.416717529297,-296.563873291016,39.7332878112793},
  {"surgery",425.61181640625,-806.519897460938,29.4911422729492},
  {"surgery",-822.166687011719,-1073.58020019531,11.3281087875366},
  {"surgery",-1186.25744628906,-771.20166015625,17.3308639526367},
  {"surgery",-1450.98388671875,-238.164260864258,49.8105850219727},
  {"surgery",4.44537162780762,6512.244140625,31.8778476715088},
  {"surgery",1693.91735839844,4822.66162109375,42.0631141662598},
  {"surgery",118.071769714355,-224.893646240234,54.5578384399414},
  {"surgery",620.459167480469,2766.82641601563,42.0881042480469},
  {"surgery",1196.89221191406,2710.220703125,38.2226066589355},
  {"surgery",-3178.01000976563,1043.21044921875,20.8632164001465},
  {"surgery",-1101.15161132813,2710.8203125,19.1078643798828},
  {"emergency",358.404418945313,-588.177612304688,28.8007564544678}
}

return cfg
