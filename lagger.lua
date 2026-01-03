local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")


local gui = Instance.new("ScreenGui")
gui.Name = "BlackOverlayCore"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.DisplayOrder = 999999
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = CoreGui -- THIS is key for overlaying CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.fromScale(1,1)
frame.Position = UDim2.fromScale(0,0)
frame.BackgroundColor3 = Color3.new(0,0,0)
frame.BorderSizePixel = 0
frame.Active = true -- blocks all clicks
frame.Selectable = true
frame.ZIndex = 999999
frame.Parent = gui


RunService.RenderStepped:Connect(function()
frame.ZIndex = 999999
end)
