local a = require("luasnip").extend_decorator.apply(s, { snippetType = "autosnippet" })

return {
	-- letter case
	a(';a', {t('\\alpha')}),
	a(';b', {t('\\beta')}),
	a(';g', {t('\\gamma')}),
	a(';d', {t('\\delta')}),
	a(';ep', {t('\\epsilon')}),
	a(';z', {t('\\zeta')}),
	a(';et', {t('\\eta')}),
	a(';th', {t('\\theta')}),
	-- don't use \iota
	a(';k', {t('\\kappa')}),
	a(';l', {t('\\lambda')}),
	a(';m', {t('\\mu')}),
	a(';n', {t('\\nu')}),
	a(';x', {t('\\xi')}),
	-- o is default
	a(';pi', {t('\\pi')}), -- use i instead 
	a(';r', {t('\\rho')}),
	a(';s', {t('\\sigma')}),
	a(';ta', {t('\\tau')}),
	a(';u', {t('\\upsilon')}),
	a(';ph', {t('\\phi')}), -- pronounce
	a(';c', {t('\\chi')}),
	a(';ps', {t('\\psi')}),
	a(';o', {t('\\omega')}),

	-- var case
	a(';ve', {t('\\varepsilon')}),
	a(';vt', {t('\\vartheta')}),
	a(';vph', {t('\\varphi')}),
	a(';vr', {t('\\varrho')}),
	a(';vs', {t('\\varsigma')}),
	a(';vpi', {t('\\varpi')}),

	-- upper case
	a(';G', {t('\\Gamma')}),
	a(';D', {t('\\Delta')}),
	a(';T', {t('\\Theta')}),
	a(';L', {t('\\Lambda')}),
	a(';X', {t('\\Xi')}),
	a(';Pi', {t('\\Pi')}), -- use i instead 
	a(';S', {t('\\Sigma')}),
	a(';U', {t('\\Upsilon')}),
	a(';Ph', {t('\\Phi')}),
	a(';Ps', {t('\\Psi')}),
	a(';O', {t('\\Omega')}),

	-- var upper case
	a(';vG', {t('\\varGamma')}),
	a(';vD', {t('\\varDelta')}),
	a(';vT', {t('\\varTheta')}),
	a(';vL', {t('\\varLambda')}),
	a(';vX', {t('\\varXi')}),
	a(';vPi', {t('\\varPi')}), -- use i instead 
	a(';vS', {t('\\varSigma')}),
	a(';vU', {t('\\varUpsilon')}),
	a(';vPh', {t('\\varPhi')}),
	a(';vPs', {t('\\varPsi')}),
	a(';vO', {t('\\varOmega')}),
}
