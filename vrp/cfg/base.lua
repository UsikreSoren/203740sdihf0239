
local cfg = {}

-- mysql credentials
cfg.db = {
  host = "127.0.0.1", --ip
  database = "vrpfx",   -- name of database
  user = "root",    --  name of user 
  password = ""   -- password of you database i'm use xampp and no password
}

cfg.save_interval = 60 -- seconds
cfg.whitelist = false -- enable/disable whitelist

-- delay the tunnel at loading (for weak connections)
cfg.load_duration = 30 -- seconds, player duration in loading mode at the first spawn
cfg.load_delay = 60 -- milliseconds, delay the tunnel communication when in loading mode
cfg.global_delay = 0 -- milliseconds, delay the tunnel communication when not in loading mode

cfg.ping_timeout = 5 -- number of minutes after a client should be kicked if not sending pings

cfg.lang = "en" -- en / fr / pt-br
cfg.debug = false


return cfg
