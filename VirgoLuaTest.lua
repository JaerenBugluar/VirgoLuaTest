local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JaerenBugluar/SpectrumUI/main/ui%20lib%20spec.lua",true))()

local Win = library:Evil()
local Tab1 = Win:Tab("General",14477284625)

local Page1 = Tab1:CraftPage(1)
Page1:Seperator("JOB ID")
local Page2 = Tab1:CraftPage(2)
Page2:Seperator("JOIN JOB ID")

Page1:Textbox('Job ID',nil, function(jobid)
    _G.Job = jobid
end)

Page2:Button('Join Job ID', function()
    game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end)
