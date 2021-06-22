local lib = '{
"Ammo": 30,
"StoredAmmo": 200,
"ExplosiveAmmo" : 3,
"BaseDamage" : 45,
"LimbDamage" : 35,
"ArmorDamage" : 15,
"HeadDamage" : 110,
"EShieldDamage" : 10,

"gunRecoilMin" : 20, 
"gunRecoilMax" : 35, 

"AimGunRecoilMin" : 2, 
"AimGunRecoilMax" : 10, 

"KickbackMin" : 3, 
"KickbackMax" : 4,

"AimKickbackMin" : 2.5,
"AimKickbackMax" : 2.5, 

"SideKickMin" : -1,
"SideKickMax" : 1,

"AimSideKickMin" : -1,
"AimSideKickMax" : 1,

"CamShakeMin" : 2,
"CamShakeMax" : 3,

"AimCanShakeMin" : 1,
"AimCamShakeMax" : 2,

"Firerate" : "60/720",

"FireMode" : 2,


"CanSelectFire" : false,
"BurstEnabled" : false,
"SemiEnabled"  :true,
"AutoEnabled"  :true,
"BoltAction"  :false,
"ShotEnabled" :false,
"ExplosiveEnabled"  :false,


"BurstNum"  :3,
"ShotNum"  :5,


"AimZoom"  :60,
"AltAimZoom"  :60,
"AimZoomSpeed" :0.5,
"AimSpeedMult"  :10,


"MouseSensitivity"  :0.5,
"SensitivityIncrement"  :0.05,




 
"BulletSpeed"  :2000,
"BulletSpread" :0,


"ExploSpeed"  :600,

"BulletHopUpMult"  :0.005,


"TracerChance"  :60,


"AntiTK"  :true,
"MouseSense"  :0.5,

"CanAim"  :true,
"CanBolt"  :false,
"CanSlideLock" :false,
"CanAutoBolt" :true,


"SprintWalkIntensity" :0.18,
"SprintWalkAnimSpeed" :15
}'
local filename = "CarbonSettings.JSON"
local http = game:GetService("HttpService")
writefile(filename, lib)