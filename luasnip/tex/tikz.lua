local function tikz()
    return env("tikzpicture")
end
local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return{
	a({ trig='tikz', desr="basic tikz"},
		fmta([[
			\begin{tikzpicture}
				<>
			\end{tikzpicture}<>]],
			{ i(1), i(0) }))
}
