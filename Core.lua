
local filename = "CarbonSettings.JSON"
if syn or PROTOSMASHER_LOADED then
    print('player is using synapse')
    else
    local msg = Instance.new("Message", workspace)
    msg.Text = "We only support Synapse X and ProtoSmasher sorry for the issue"
    wait(1)
    msg:Destroy()
    end
	local valid = isfile(filename)
if not valid then
loadstring(game:HttpGet('https://raw.githubusercontent.com/Nikev2/Carbon-Engine-Fucker/main/Lib.lua'))()
else
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

end
    function refreshConfig()
    
    end
    refreshData()
