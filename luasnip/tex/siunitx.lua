local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })
local function math()
    return vim.api.nvim_eval('vimtex#syntax#in_mathzone()') == 1
end

return {
	-- 数字
	---- . , 被识别为小数标记
	s({ trig='\\num', desr="\\num[<options>]{<number>}"},
		fmta([[\num{<>} <>]],
			{ i(1), i(0) })),
	s({ trig='\\numlist', desr="\\numlist[<options>]{<numbers>}"},
		fmta([[\\numlist[<>} <>]],
			{ i(1), i(0) })),
	---- 以 x 标记分隔
	s({ trig='\\numproduct', desr="\\numproduct[<options>]{<number>}"},
		fmta([[\numproduct{<>} <>]],
			{ i(1), i(0) })),
	s({ trig='\\numrange', desr="\\numrange[<options>]{<number1>}{<number2>}"},
		fmta([[\numrange{<>}{<>} <>]],
			{ i(1), i(2), i(0) })),

	-- 角度
	---- 以 ; 分隔
	s({ trig='\\ang', desr="\\ang[<options>]{<angle>}"},
		fmta([[\ang{<>} <>]],
			{ i(1), i(0) })),

	-- 单位
	s({ trig='\\unit', desr="\\unit[<options>]{<unit>}"},
		fmta([[\unit{<>} <>]],
			{ i(1), i(0) })),
	s({ trig='\\qty', dscr='\\qty[<options>]{<number>}{<unit>}'},
		fmta([[\qty{<>}{<>} <>]],
			{ i(1), i(2), i(0) })),
	---- 以 ; 分隔
	s({ trig='\\qtylist', dscr='\\qtylist[<options>]{<numbers>}{<unit>}'},
		fmta([[\qtylist{<>}{<>} <>]],
			{ i(1), i(2), i(0) })),
	---- 以 x 分隔
	s({ trig='\\qtyproduct', desr="\\qtyproduct[<options>]{<numbers>}{<unit>}"},
		fmta([[\qtyproduct{<>}{<>} <>]],
			{ i(1), i(2), i(0) })),
	s({ trig='\\qtyrange', desr="\\qtyrange[<options>]{<number1>}{<number2>}{<unit>}"},
		fmta([[\qtyrange{<>}{<>}{<>} <>]],
			{ i(1), i(2), i(3), i(0) })),

	-- 复数
	s({ trig='\\complexnum', desr="\\complexnum[<options>]{<number>}"},
		fmta([[\complexnum{<>} <>]],
			{ i(1), i(0) })),
	s({ trig='\\complexqty', desr="\\complexqty[<options>]{<number>}{<unit>}"},
		fmta([[\complexqty{<>}{<>} <>]],
			{ i(1), i(2), i(0) })),
}
