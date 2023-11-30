local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {

	-- format snippt
	a("snipf",
		fmt(
			[[	
				<>({ trig='<>', dscr='<>'},
					fmt(<>,
						{ <> },
						{ delimiters='<>' })<>
						{ condition=math })<>,
			]],
				{
					c(1, { t("s"), t("a") }),
					i(2, "trig"),
					i(3, "dscr"),
					i(4, "fmt"),
					i(5, "inputs"),
					i(6, "<>"),
					i(7, ""), --opts
					i(0),
				},
				{ delimiters = "<>" }
			)
	),

	a('ssa',
		fmt([[
				a({trig='<>', dscr="<>"}, {t('<>')}, { condition=math })<>,
			]],
			{ i(1, "trig"), i(2, "description"), i(3, "text"), i(0) },
			{ delimiters='<>' }
		)
	),

	a({ trig='saa', dscr='..'},
		fmt([[
				a({ trig='<>', desr="<>"},
					fmta(<>,
						{ <> })),
			]],
			{ i(1), i(2), i(3), i(4) },
			{ delimiters='<>' }
		)
	),

	-- auto complete brackets [], parentheses (), curly brackets {}
	a({ trig='{', desr="autocomplete curly brackets"},
		fmta([[{<>}<>]],
			{ i(1), i(0) }
		)
	),

	a({ trig='(', desr="autocomplete parentheses"},
		fmta([[(<>)<>]],
			{ i(1), i(0) }
		)
	),

	a({ trig='[', desr="autocomplete parentheses"},
		fmta([[[<>]<>]],
			{ i(1), i(0) }
		)
	),

	-- auto complete comment
	a({ trig='/*', desr="c multiy comment"},
		fmta([[/* <> */]],
			{ i(1) })),

}
