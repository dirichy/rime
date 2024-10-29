local trig = {
	jj = "jj",
	tt = "tt",
}
local auto_put = function(key, env)
	local input = env.engine.context.input
	if trig[input] then
		env.engine:commit_text(trig[input])
		env.engine.context:clear()
		return 0
	end
	return 2
end
return auto_put
