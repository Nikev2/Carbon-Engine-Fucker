local http = game:GetService("HttpService")
local filename = "CarbonSettings.JSON"
frame = nil
frame.Draggable = true
frame.Active = true
frame.Selectable = true
if syn or PROTOSMASHER_LOADED then
    print('player is using synapse')
    else
    local msg = Instance.new("Message", workspace)
    msg.Text = "We only support Synapse X and ProtoSmasher sorry for the issue"
    wait(1)
    msg:Destroy()
    end
local SettingsData = {
    Ammo = 5;
		StoredAmmo = 30;
		ExplosiveAmmo = 3;
		BaseDamage = 45;
		LimbDamage = 35;
		ArmorDamage = 15;
		HeadDamage = 110;
		EShieldDamage = 10;
		
		gunRecoilMin = 20; -- How much the gun recoils backwards when not aiming
		gunRecoilMax = 35; -- How much the gun recoils backwards when not aiming

		AimGunRecoilMin = 2; -- How much the gun recoils backwards when aiming
		AimGunRecoilMax = 10; -- How much the gun recoils backwards when aiming

		KickbackMin = 3; -- Upward gun rotation when not aiming
		KickbackMax = 4; -- Upward gun rotation when not aiming

		AimKickbackMin = 2.5; -- Upward gun rotation when aiming
		AimKickbackMax = 2.5; -- Upward gun rotation when aiming

		SideKickMin = -1;
		SideKickMax = 1;

		AimSideKickMin = -1;
		AimSideKickMax = 1;

		CamShakeMin = 2;
		CamShakeMax = 3;

		AimCanShakeMin = 1;
		AimCamShakeMax = 2;
	
	--// Handling
		Firerate = 60 / 720; -- 60 = 1 Minute, 700 = Rounds per that 60 seconds. DO NOT TOUCH THE 60!
	
		FireMode = 5; -- 1 = Semi, 2 = Auto, 3 = Burst, 4 = Bolt Action, 5 = Shot, 6 = Explosive (Explosive is currently disabled)
		
	--// Firemode Config
		CanSelectFire = false;
		BurstEnabled = false;
		SemiEnabled = true;
		AutoEnabled = true;
		BoltAction = false;
		ShotEnabled = false;
		ExplosiveEnabled = false;
		
	--// Shot & Burst Config
		BurstNum = 3; -- How many bullets per burst
		ShotNum = 5; -- How many bullets per shot
		
	--// Aim Config
		AimZoom = 60;
		AltAimZoom = 60;
		AimZoomSpeed = 0.5;
		AimSpeedMult = 10;
		
	--// Mouse Config
		MouseSensitivity = 0.5; -- Number between 0.1 and 1
		SensitivityIncrement = 0.05; -- No touchy
		
	-- Tracer Config
		TracerTransparency = 0.3;
		TracerLightEmission = 1;
		TracerTextureLength = 1;
		TracerLifetime = 0.12;
		TracerFaceCamera = true;
		TracerColor = BrickColor.new('Deep orange');
		
	--// Bullet Physics
		BulletPhysics = Vector3.new(0,55,0); -- Drop fixation: Lower number = more drop
		BulletSpeed = 2000; -- Bullet Speed
		BulletSpread = 0; -- How much spread the bullet has
		
		ExploPhysics = Vector3.new(0,20,0); -- Drop for explosive rounds
		ExploSpeed = 600; -- Speed for explosive rounds
		
		BulletHopUpMult = 0.005; -- Hop up mutliplier
		
	--// Calculations
		TracerChance = 60;
		
	--// Cosmetic
		AntiTK = true;
		MouseSense = 0.5;
		
		CanAim = true;
		CanBolt = false;
		CanSlideLock = false;
		CanAutoBolt = true;
		
		
		SprintWalkIntensity = 0.18;
		SprintWalkAnimSpeed = 15;
}
FILE = nil
if not isfile(filename) then
local EncodeLib = http:JSONEncode(SettingsData)
writefile(filename, EncodeLib)
end  
COREGUI = game:GetService("CoreGui")
PARENT = nil
function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end
if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

local Data = http:JSONDecode(readfile(filename))
function refreshData()
   for i,v in pairs(SettingsData) do
    for i,vv in pairs(Data) do
        v = vv
        print('Ammo')
    end
    function refreshConfig()
    
    end






