local AnimCache = {}

local Cache = {}

function AnimCache.Load(Humanoid:Humanoid|AnimationController|Animator,Animation:Animation)
	if Humanoid:IsA("Humanoid") then
		Humanoid = Humanoid:FindFirstChild("Animator") or Instance.new("Animator",Humanoid)
	end
	
	if not Cache[Humanoid] then
		Cache[Humanoid] = {}
	end
	
	if not Cache[Humanoid][Animation] then
		Cache[Humanoid][Animation] = Humanoid:LoadAnimation(Animation)
	end
	
	return Cache[Humanoid][Animation]
end

return AnimCache
