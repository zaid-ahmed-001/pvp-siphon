Config =  {}

Config.DevPrints = true
Config.RandomSiphon = false -- Enable this to randomize Health and Armor Amount(100,200) For Heath / (50,100) For Armor
Config.RandomArmorRange = math.random(50,100) -- Values Can Be Changed here to decide the Random Armor Range (Default Values : 50 to 100 )
Config.RandomHealthRange =  math.random(150,200) -- Values Can Be Changed here to decide the Random Health Range (Default Values : 150 to 200 )

Config.HealthAmount = 200 -- Maximum Health Amount(200) 
Config.ArmorAmount = 100  -- Maximum Armor Amount (100)

-- Config.UsingPolyZones = false  -- If U are using PolyZones and want specific zones to enable this script set this value to true and uncomment polyzone in fxmanifest.lua

-- Config.siphonzone1 = PolyZone:Create({          -- Here is sample zone u can create similar zone like this
--     vector2(328.41662597656, -189.42219543457),
--     vector2(347.90512084961, -196.81504821777),
--     vector2(336.11190795898, -227.95924377441),
--     vector2(306.11798095703, -216.42715454102),
--     vector2(314.41293334961, -194.19380187988),
--     vector2(324.84567260742, -198.19834899902)
-- }, {
--     name="siphonzone1",
--     minZ=51.0,
--     maxZ=62.0,
--     debugGrid=false,
--     gridDivisions=25
-- })
