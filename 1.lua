_G.FirePP = true

while wait(2) do
if _G.FirePP then

for i, v in pairs(game:GetService("Workspace").ItemSpawns.Meteors:GetDescendants()) do
    if v.Name == "Meteor" then
    if v then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    else
    local HttpService, TPService = game:GetService"HttpService", game:GetService"TeleportService";
       TPService:TeleportToPlaceInstance(game.PlaceId)
    game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport("loadstring(game:HttpGet(('https://pastebin.com/raw/mEAjaHTu'),true))()")
    end
end)
end
end
 for i, v in pairs(game:GetService("Workspace").ItemSpawns.Meteors:GetDescendants()) do
     if v:IsA("Part") or v:IsA("MeshPart") then
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(v.Position) <= 20 then
             if v:FindFirstChild("ProximityAttachment") then
                  fireproximityprompt(v.ProximityAttachment.Interaction, 1)
                        wait(2)
                     end
                 end
              end
          end
       end
   end
end
