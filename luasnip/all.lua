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

	s({trig='bashenv', dscr="bash script template"},
		fmt([[
				#!/usr/bin/env bash

				# Filename	: <>
				# Date      : 2023-<>-<>
				# Author    : haiteng.zheng
				# Mail      : haiteng.zheng@outlook.com
				# Function  : The scripts function <>
				# Version   : 0.1

			]],
			{ i(1), i(2), i(3), i(4) },
			{ delimiters = "<>" }
		)
	),

	s({trig='cnet', dscr="c network preamble"},
		fmt([[
				#include <sys/types.h>
				#include <sys/socket.h>
				#include <netinet/in.h>
				#include <arpa/inet.h>
				#include <netdb.h>
				#include <unistd.h>
				#include <errno.h>

				#define ISVALIDSOCKET(s) ((s) >= 0)
				#define CLOSESOCKET(s) close(s)
				#define SOCKET int
				#define GETSOCKETERRNO() (errno)

				#include <stdio.h>
				#include <string.h>
				#include <time.h>
			]],
			{},
			{ delimiters = "{}" }
		)
	),
}
