
local cfg = {}

-- example of study transformer
local itemtr_study = {
  name="Bookcase", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["Chemicals book"] = { -- action name
      description="Read a chemicals book", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["Mathematics book"] = { -- action name
      description="Read a mathematics book", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    }
  }
}

----------------------------------------------------------------------------------------- laboratory
local itemtr_laboratory = {
  name="workbench", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["cocaine"] = { -- action name
      description="make cocaine", -- action description
      in_money=1000, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["benzoilmetilecgonina"] = 1
	  
	  },
      products={ -- items given per unit
	  ["cocaine"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
	["weed"] = { -- action name
      description="make weed", -- action description
      in_money=1000, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["seeds"] = 1
	  },
      products={ -- items given per unit
	  ["weed"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
-----------------
	["lsd"] = { -- action name
      description="make lsd", -- action description
      in_money=1000, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={ -- items taken per unit
	  ["harness"] = 1
	  },
      products={ -- items given per unit
	  ["lsd"] = 5
	  }, 
      aptitudes={ -- optional
        ["laboratory.lsd"] = 5, -- "group.aptitude", give 1 exp per unit
		["science.chemicals"] = 10
	  }
    },
	---------------------------------------------
  }
}
------------------------------------------------ hacker

local itemtr_hacker = {
  name="hacker", -- menu name
  r=0,g=255,b=0, -- color
  max_units=20,
  units_per_minute=10,
  x=0,y=0,z=0, -- pos (doesn't matter as home component)
  radius=1.1, height=1.5, -- area
  recipes = {
    ["logic pdf"] = { -- action name
      description="Read a logic pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.logic"] = 10 -- "group.aptitude", give 1 exp per unit
      }
    },
    ["c++ pdf"] = { -- action name
      description="Read a C++ pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.c++"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
	["lua pdf"] = { -- action name
      description="Read a C++ pdf", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={}, -- items given per unit
      aptitudes={ -- optional
        ["hacker.lua"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
	["hacking"] = { -- action name
      description="hacking a Credit card informations", -- action description
      in_money=0, -- money taken per unit
      out_money=0, -- money earned per unit
      reagents={}, -- items taken per unit
      products={
	  ["dirty_money"] = 5000
	  }, -- items given per unit
      aptitudes={ -- optional
        ["hacker.lua"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.c++"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.logic"] = 1, -- "group.aptitude", give 1 exp per unit
        ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
      }
    },
  }
}

-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=200}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"gametable",-755.40185546875,318.263214111328,221.875823974609},
      {"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
      {"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
      {"itemtr", _config = itemtr_hacker, -778.154296875,326.660491943359,223.25764465332}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=200}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"gametable",-800.763427734375,338.574951171875,206.239105224609},
      {"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
	  {"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
	  {"itemtr", _config = itemtr_hacker, -777.960876464844,330.808135986328,207.620849609375}
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=200}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"gametable",-801.228942871094,339.106231689453,158.619750976563},
      {"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
      {"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
      {"itemtr", _config = itemtr_hacker, -778.430236816406,331.083160400391,160.001556396484}
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=200}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"gametable",-623.078796386719,63.688045501709,106.645317077637},
      {"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
      {"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
      {"itemtr", _config = itemtr_hacker, -600.219604492188,55.7631721496582,108.027030944824}
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=200}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"gametable",-1476.12658691406,-534.873474121094,68.1748962402344},
      {"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
      {"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
      {"itemtr", _config = itemtr_hacker, -1452.96923828125,-528.350952148438,69.5566177368164}
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=200}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"gametable",-1476.12670898438,-534.895751953125,55.547306060791},
      {"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
      {"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
      {"itemtr", _config = itemtr_hacker, -1452.95886230469,-528.371948242188,56.9289970397949}
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=200}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"gametable",-934.216979980469,-378.082336425781,108.05859375},
      {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
      {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
      {"itemtr", _config = itemtr_hacker, -910.40234375,-374.561859130859,109.440299987793}
    },
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=200}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"gametable",-895.890075683594,-373.167846679688,84.0987701416016},
      {"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
      {"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
      {"itemtr", _config = itemtr_hacker, -919.742492675781,-376.550506591797,85.4804763793945}
    },
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=200}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"gametable",-459.870513916016,-682.054565429688,75.7051773071289},
      {"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
      {"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
      {"itemtr", _config = itemtr_hacker, -467.985504150391,-704.850036621094,77.0868835449219}
    },
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=200}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"gametable",-475.543884277344,-716.226867675781,52.0241050720215},
      {"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
      {"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
      {"itemtr", _config = itemtr_hacker, -467.812896728516,-693.403869628906,53.4058074951172}
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=500}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"gametable",-781.973083496094,338.788482666016,211.231979370117},
      {"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
      {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
      {"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=500}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"gametable",-606.140441894531,43.8849754333496,97.4350128173828},
      {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859},
      {"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
      {"itemtr", _config = itemtr_hacker, -625.2353515625,50.4472694396973,97.5995254516602}
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=500}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"gametable",-1466.37182617188,-546.663757324219,73.279052734375},
      {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453},
      {"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
      {"itemtr", _config = itemtr_hacker, -1472.04296875,-527.374267578125,73.4436416625977}
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=500}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"gametable",-908.407165527344,-379.825714111328,113.509590148926},
      {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395},
      {"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
      {"itemtr", _config = itemtr_hacker, -928.425598144531,-382.820159912109,113.67407989502}
    }
  },
  ["plantation_flat"] = {
    {
      {"entry",1906.6708984375,3711.19384765625,32.8070220947266},
      {"chest",1903.47888183594,3715.30200195313,32.7704811096191, _config = {weight=500}},
      {"wardrobe",1902.52734375,3714.08325195313,32.7693138122559},
      {"gametable",-102.721557617188,2817.1640625,53.1586837768555},
      {"itemtr", _config = itemtr_laboratory, 1900.09545898438,3711.39282226563,32.767204284668}
    },
  }
}

-- define home clusters
cfg.homes = {
  ["Basic Housing 1"] = {
    slot = "basic_flat",
    entry_point = {-635.665,44.155,42.697},
    buy_price = 100000,
    sell_price = 80000,
    max = 99,
    blipid=40,
    blipcolor=4
  },
  ["Basic Housing 2"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 100000,
    sell_price = 80000,
    max = 99,
    blipid=40,
    blipcolor=4
  },
  ["Rich Housing"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 500000,
    sell_price = 300000,
    max = 10,
    blipid=40,
    blipcolor=5
  },
  ["Laboratory"] = {
    slot = "plantation_flat",
    entry_point = {1907.19848632813,3710.33862304688,32.7361106872559},
    buy_price = 500000,
    sell_price = 300000,
    max = 50,
    blipid=499,
    blipcolor=4
  }
}

return cfg
