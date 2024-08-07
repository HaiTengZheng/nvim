local function tikz()
    return env("tikzpicture")
end
local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return{
	-- use / as delimeter
	a({ trig='/tikz', desr="basic tikz"},
		fmta([[
			\begin{tikzpicture}
				<>
			\end{tikzpicture}<>]],
			{ i(1), i(0) })),
	a({ trig='/grid', desr="grid"},
		fmta([[
				grid (<>, <>)<>
			]],
			{ i(1), i(2), i(0) })),

	a({ trig='/ellipse', desr="ellipse"},
		fmta([[
				ellipse [ x radius = <>, y radius = <>]<>
			]],
			{ i(1), i(2), i(0) })),

	a({ trig='/circle', desr="circle"},
		fmta([[
				circle [radius = <>]<>
			]],
			{ i(1), i(0) })),

	a({ trig='/line', desr="line"},
		fmta([[
				-- (<>, <>)<>
			]],
			{ i(1), i(2), i(0) })),

	a({ trig='/rectangle', desr="rectangle"},
		fmta([[
				rectangle (<>, <>)<>
			]],
			{ i(1), i(2), i(0) })),

	a({ trig='/arc', desr="arc"},
		fmta([[
				arc [start angle = <>, end angle = <>, radius = <>]<>
			]],
			{ i(1), i(2), i(3), i(0) })),

	a({ trig='/node', desr="node"},
		fmta([[
				\node (<>) [<>] {<>}<>
			]],
			{ i(1), i(2), i(3), i(0) })),

	a({ trig='/coordinate', desr="coordinate"},
		fmta([[
				\coordinate (<>) at (<>, <>);
			]],
			{ i(1), i(2), i(3) })),
}
