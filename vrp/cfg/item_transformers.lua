
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Water bottles/tacos tree", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=20,
    units_per_minute=10,
    x=1861,y=3680.5,z=33.26, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest water"] = { -- action name
        description="Harvest some water bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
  {
    name="Body training", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Strength"] = { -- action name
        description="Increase your strength.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Hacker", -- menu name
	permissions = {"hacker.credit_cards"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=707.357238769531,y=-966.98876953125,z=30.4128551483154,
    radius=2, height=1.0, -- area
    recipes = {
      ["hacking"] = { -- action name
        description="Hacking credit cards.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["credit"] = 1,
		["dirty_money"] = 5000
		}, -- items given per unit
        aptitudes={ -- optional
          ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Driver License", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=437.178802490234,y=-994.613525390625,z=30.6895904541016,
    radius=2, height=1.0, -- area
    recipes = {
      ["Driver"] = { -- action name
       description="buy a Driver License.", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["driver"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Bank Driver Mission", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=236.87298583984,y=217.09535217285,z=106.28678894043,
    radius=2, height=1.0, -- area
    recipes = {
      ["Bank Money"] = { -- action name
       description="Get a money bank for mission.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Robbery Bank", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=265.94982910156,y=213.54983520508,z=101.68338775635,
    radius=2, height=1.0, -- area
    recipes = {
      ["Bank Money"] = { -- action name
       description="get the money.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["dirty_money"] = 5000000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  }
}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed field"] = {
    def = {
      name="Weed field", -- menu name
      permissions = {"harvest.weed"}, -- you can add permissions
      r=0,g=200,b=0, -- color
      max_units=30,
      units_per_minute=1,
      x=0,y=0,z=0, -- pos
      radius=5, height=1.5, -- area
      recipes = {
        ["Harvest"] = { -- action name
          description="Harvest some drugs.", -- action description
          in_money=0, -- money taken per unit
          out_money=0, -- money earned per unit
          reagents={}, -- items taken per unit
          products={ -- items given per unit
            ["seeds"] = 1,
			["benzoilmetilecgonina"] = 1,
			["harness"] = 1
          }
        }
      }
    },
    positions = {
      {1873.36901855469,3658.46215820313,33.8029747009277},
      {1856.33776855469,3635.12109375,34.1897926330566},
      {1830.75390625,3621.44140625,33.8487205505371}
    }
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed field"] = 20000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 60, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
