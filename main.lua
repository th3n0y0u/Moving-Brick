local movingbrick = script.Parent
local mainpartposition = movingbrick.MainPart.Position.X
local goalposition = movingbrick.Goal.Position.X
local goal = (goalposition - mainpartposition) / 32

 
while wait(1) do
	wait(2)
	for count = 1, 32, 1 do
		wait(0.5)
		movingbrick:SetPrimaryPartCFrame(movingbrick:GetPrimaryPartCFrame() * CFrame.new(0 +goal , 0, 0)) 
	end
	wait(2)
	for count = 1, 32, 1 do
		wait(0.5)
		movingbrick:SetPrimaryPartCFrame(movingbrick:GetPrimaryPartCFrame() * CFrame.new(0 + -goal , 0, 0))  
	end
end
 