local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end
local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	-- subscript and supscript
	a({ trig='(%a)(%d)', regTrig=true, dscr='auto supscript for 2+ digits '},
		fmt([[<>^{<>} ]],
			{ f(function(_, snip) return snip.captures[1] end),
			f(function(_, snip) return snip.captures[2] end) },
			{ delimiters='<>' }
		),
			{ condition=math }
	),
	a({ trig='(%a)^(.%w)', regTrig=true, dscr='auto supscript for 2+ character'},
		fmt([[<>^{<>} ]],
			{ f(function(_, snip) return snip.captures[1] end),
			f(function(_, snip) return snip.captures[2] end) },
			{ delimiters='<>' }
		),
			{ condition=math }
	),
	a({ trig='(%a)(%d)', regTrig=true, dscr='auto subscript for 2+ digits'},
		fmt([[<>_{<>} ]],
			{ f(function(_, snip) return snip.captures[1] end),
			f(function(_, snip) return snip.captures[2] end)},
			{ delimiters='<>' }
		),
			{ condition=math }
	),
	a({ trig='(%a)_(%w%w)', regTrig=true, dscr='auto subscript for 2+ character'},
		fmt([[<>_{<>} ]],
			{ f(function(_, snip) return snip.captures[1] end),
			f(function(_, snip) return snip.captures[2] end)},
			{ delimiters='<>' }
		),
			{ condition=math }
	),

	-- fraction
	a({ trig='//', dscr='fraction'},
		fmt([[\frac{<>}{<>} <>]],
			{ i(1), i(2), i(0) },
			{ delimiters='<>' }
		)
	),

	-- -- inline and displayed 
	a({ trig='mk', dscr='make $$ environment'},
		fmt([[$<>$<>]],
			{ i(1), i(0) },
			{ delimiters='<>' })
	),
	a({ trig='md', dscr='make \\[\\] environment'},
		fmt([[
			\[
				<>
			\]<>]],
			{ i(1), i(0) },
			{ delimiters='<>' })
	),

	s({ trig='lrv', name='left right', dscr='left right'},
    fmt([[\left(<>\right)<>]],
    { f(function(args, snip)
      local res, env = {}, snip.env
      for _, val in ipairs(env.LS_SELECT_RAW) do table.insert(res, val) end
      return res
      end, {}), i(0) },
    { delimiters='<>' }
    ), { condition=math, show_condition=math }),

}
