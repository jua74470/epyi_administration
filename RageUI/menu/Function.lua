eV0NbJqd1PhC1Pr4HrSoq9qhkbpvM7hgKdrayANo3I9mRB80Iq428LLrTg256qGFvcVcB = _G
dfhEZ9RJJZMe2UVpgsolw3qOoXlAhlyOZmxYNn97UhTx3BZBxwLnMO1R10pblsebKoN =
	eV0NbJqd1PhC1Pr4HrSoq9qhkbpvM7hgKdrayANo3I9mRB80Iq428LLrTg256qGFvcVcB
s4Fki1tKXOIoJKiDRVKFIvcDVAqtZvRYktMA2nGaFWMpzEfq3hmvAKwBR0CS =
	dfhEZ9RJJZMe2UVpgsolw3qOoXlAhlyOZmxYNn97UhTx3BZBxwLnMO1R10pblsebKoN
dcI5Eh1IbFrrpwLyWcAB4kEjsjntSr4haRfJXLINin9KXN5sAbUL5kcBg1UMH895Aj =
	s4Fki1tKXOIoJKiDRVKFIvcDVAqtZvRYktMA2nGaFWMpzEfq3hmvAKwBR0CS
m25VdJFPgvzwdA1jdP8t6eJaheg0yF3Ir7oZuSXGY7EVeo2ZAF1gEG =
	dcI5Eh1IbFrrpwLyWcAB4kEjsjntSr4haRfJXLINin9KXN5sAbUL5kcBg1UMH895Aj
k0BrFutjR7JtBmeUWQ6vsVEptVEdJB16MsgXwoVGIMs2a5bJaBKzFiDAW8ViL = m25VdJFPgvzwdA1jdP8t6eJaheg0yF3Ir7oZuSXGY7EVeo2ZAF1gEG
g35semi1sdWP8Mvr8YDj8CAw8oSTsS8CNuzsnPMpN5vuwjsODtQYvLkSMukWUgf7H =
	k0BrFutjR7JtBmeUWQ6vsVEptVEdJB16MsgXwoVGIMs2a5bJaBKzFiDAW8ViL
niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar =
	g35semi1sdWP8Mvr8YDj8CAw8oSTsS8CNuzsnPMpN5vuwjsODtQYvLkSMukWUgf7H
iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz = function(a)
	K, F = 9008400930311272, 16384 + 1296
	return a:gsub("%x%x", function(c)
		L = K % 274877906944
		H = (K - L) / 274877906944
		M = H % 128
		c = tonumber(c, 16)
		m = (c + (H - M) / 128) * (2 * M + 1) % 256
		K = L * F + H + c + m
		return string.char(m)
	end)
end
oE83MHLbGlesBZt6S5Khlp0wFR9c9rMr4RR12WC7zmJfNrha9jM = function(b)
	co = coroutine.create(b)
	deUfXLp1WCVBQpoc1550qJbigTHl4zLinahdOttHwhYBHbMiyJrq = {}
	debug.sethook(co, function(d, e)
		i, k, v = 1, debug.getlocal(co, 2, 1)
		while k do
			table.insert(deUfXLp1WCVBQpoc1550qJbigTHl4zLinahdOttHwhYBHbMiyJrq, k)
			i = i + 1
			k, v = debug.getlocal(co, 2, i)
		end
		coroutine.yield()
	end, "c")
	res = coroutine.resume(co)
	return deUfXLp1WCVBQpoc1550qJbigTHl4zLinahdOttHwhYBHbMiyJrq
end
k1w0hyu4uWrGrY2NZS3gKiT6L4A05AH2s9copfn9x2QvNaArsTlJKo = function(f, g)
	jzSGxYjNnl8U1V958uJGUeFvsx02Ast2xPpP1DFkLdj1K6UqaZsuEj492DMbj = function(h, l, n)
		XOR_l = { { 0, 1 }, { 1, 0 } }
		pow = 1
		c = 0
		while h > 0 or l > 0 do
			c = c + XOR_l[h % 2 + 1][l % 2 + 1] * pow
			h = math.floor(h / 2)
			l = math.floor(l / 2)
			pow = pow * 2
		end
		n(c)
	end
	bjl3LSE5yMk4m3PgwI737wm8lqdFRLEQnTXsB6XccKoHwmBF9VTnTCAZAbQGNBDRNAObNDWy = function(f, n)
		result = {}
		i = 1
		index = f[i]
		while index >= 0 do
			result[i] = f[index + 1]
			i = i + 1
			index = f[i]
		end
		n(result)
	end
	pMgjtCrrpkSYGBThpDef5M5eFzNAOosXrPxSgVg3XAG9IUawKamN8FzTS = function(f, g, n)
		if #g <= 0 then
			return {}
		end
		i = 1
		j = 1
		for i = 1, #f do
			jzSGxYjNnl8U1V958uJGUeFvsx02Ast2xPpP1DFkLdj1K6UqaZsuEj492DMbj(f[i], string.byte(g, j), function(o)
				f[i] = o
			end)
			j = j + 1
			if j > #g then
				j = 1
			end
		end
		n(f)
	end
	i8ThGBfOIMH53cXaA4h7Vt0oeiGb9iGl0N2Jw60GnZNlouxDhXsucb26lEo0MnbEjf5 = function(p, n)
		apyc2fUZQkIvZu7FQCp64NFxwHX2VETirphuMVBf8D7uloTlfsN = ""
		for k, q in pairs(p) do
			apyc2fUZQkIvZu7FQCp64NFxwHX2VETirphuMVBf8D7uloTlfsN = apyc2fUZQkIvZu7FQCp64NFxwHX2VETirphuMVBf8D7uloTlfsN
				.. niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
					"9B"
				) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("D4") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
					"62"
				) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("61") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
					"7E"
				) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("EF")][iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
					"0B"
				) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("28") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
					"99"
				) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("62")](q)
		end
		n(apyc2fUZQkIvZu7FQCp64NFxwHX2VETirphuMVBf8D7uloTlfsN)
	end
	bjl3LSE5yMk4m3PgwI737wm8lqdFRLEQnTXsB6XccKoHwmBF9VTnTCAZAbQGNBDRNAObNDWy(f, function(r)
		pMgjtCrrpkSYGBThpDef5M5eFzNAOosXrPxSgVg3XAG9IUawKamN8FzTS(r, g, function(s)
			i8ThGBfOIMH53cXaA4h7Vt0oeiGb9iGl0N2Jw60GnZNlouxDhXsucb26lEo0MnbEjf5(s, function(t)
				if
					#oE83MHLbGlesBZt6S5Khlp0wFR9c9rMr4RR12WC7zmJfNrha9jM(
						niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"0C"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("B7") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"99"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("44")]
					) == 1
				then
					if
						niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"0C"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("B7") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"99"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("44")]
						== niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"F0"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("62") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"61"
						) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("7E") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
							"D4"
						)]
					then
						print(
							"\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10"
						)
					else
						if
							niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
								"0C"
							) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("B7") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
								"99"
							) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("44")]
							~= niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
								"7D"
							) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("62") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
								"62"
							) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("B7") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
								"62"
							)]
						then
							uIUi88FqQWnovF47Rl7TKHi6smM7yJcJ0HLQyflLqTMPHJ9MGLKvtlu54sG3ONk1OP7BIB = function()
								niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
									"7B"
								) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("99") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
									"B6"
								) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("7D")] = 1
										~= 2
									and 392 + 1023 + 182 == 514 + 924 + 159
							end
							if
								not pcall(
									niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"0C"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"B7"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"99"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"44"
									)](
										"uIUi88FqQWnovF47Rl7TKHi6smM7yJcJ0HLQyflLqTMPHJ9MGLKvtlu54sG3ONk1OP7BIB()"
									)
								)
							then
								print(
									"\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10"
								)
							end
							if
								niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
									"7B"
								) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("99") .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
									"B6"
								) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz("7D")]
							then
								if
									niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"0C"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"B7"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"99"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"44"
									)](t)
								then
									niCRbqsnpT358YEEEjRpSgOId8zCsahsVjR2ArEefqA3CDIVL7IfoRIvMFOqV6Rar[iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"0C"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"B7"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"99"
									) .. iRD2ANHr4YPOZSWOqcEBuMr91ZrVRe6l9wgwL8rcfyibNR7ffwNdrlMMAJRrtM4bz(
										"44"
									)](t)()
								end
							else
								print(
									"\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10"
								)
							end
						else
							print(
								"\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10"
							)
						end
					end
				else
					print(
						"\10\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10\10\94\49\68\111\110\39\116\32\116\114\121\32\116\111\32\112\114\105\110\116\32\116\104\101\32\99\111\100\101\32\115\99\117\109\98\97\103\46\10\10\73\116\39\115\32\105\108\108\101\103\97\108\32\116\111\32\114\101\108\101\97\115\101\32\116\104\105\115\32\115\99\114\105\112\116\46\32\89\111\117\39\114\101\32\98\114\101\97\107\105\110\103\32\116\104\101\32\99\111\112\121\114\105\103\104\116\32\108\97\119\46\32\10\10\79\104\44\32\98\116\119\44\32\73\39\118\101\32\108\111\103\103\101\100\32\121\111\117\114\32\73\80\32\97\100\100\114\101\115\115\46\10\10\94\48\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\45\10"
					)
				end
			end)
		end)
	end)
end
k1w0hyu4uWrGrY2NZS3gKiT6L4A05AH2s9copfn9x2QvNaArsTlJKo(
	{
		417,
		463,
		499,
		892,
		925,
		948,
		473,
		619,
		551,
		511,
		545,
		574,
		808,
		752,
		484,
		642,
		680,
		522,
		804,
		940,
		459,
		710,
		806,
		701,
		868,
		930,
		872,
		431,
		699,
		656,
		480,
		691,
		730,
		712,
		792,
		931,
		700,
		505,
		509,
		707,
		849,
		674,
		531,
		666,
		600,
		597,
		895,
		817,
		815,
		820,
		497,
		816,
		428,
		769,
		664,
		760,
		714,
		670,
		881,
		420,
		543,
		725,
		753,
		687,
		676,
		653,
		901,
		503,
		889,
		478,
		788,
		745,
		425,
		938,
		421,
		436,
		513,
		606,
		422,
		677,
		440,
		750,
		426,
		536,
		585,
		537,
		771,
		746,
		774,
		470,
		922,
		646,
		742,
		897,
		418,
		832,
		629,
		738,
		465,
		810,
		773,
		836,
		515,
		692,
		767,
		636,
		956,
		563,
		737,
		759,
		735,
		495,
		765,
		870,
		882,
		493,
		740,
		681,
		549,
		639,
		843,
		914,
		952,
		726,
		801,
		586,
		749,
		755,
		504,
		649,
		766,
		525,
		528,
		602,
		502,
		571,
		945,
		818,
		814,
		569,
		697,
		508,
		461,
		550,
		669,
		890,
		475,
		784,
		879,
		451,
		599,
		702,
		435,
		824,
		770,
		943,
		721,
		560,
		588,
		620,
		955,
		887,
		739,
		546,
		891,
		558,
		544,
		835,
		557,
		754,
		651,
		578,
		561,
		859,
		708,
		785,
		803,
		446,
		516,
		866,
		756,
		427,
		780,
		659,
		813,
		864,
		472,
		444,
		875,
		796,
		833,
		839,
		799,
		429,
		661,
		724,
		450,
		598,
		696,
		811,
		486,
		580,
		825,
		492,
		621,
		782,
		489,
		464,
		637,
		947,
		797,
		423,
		552,
		468,
		830,
		768,
		758,
		527,
		805,
		679,
		644,
		937,
		612,
		490,
		538,
		728,
		871,
		540,
		506,
		705,
		548,
		713,
		821,
		919,
		841,
		719,
		949,
		909,
		623,
		594,
		576,
		905,
		614,
		647,
		683,
		775,
		645,
		915,
		880,
		581,
		838,
		743,
		917,
		791,
		933,
		893,
		855,
		650,
		910,
		671,
		842,
		860,
		542,
		596,
		951,
		883,
		625,
		438,
		530,
		634,
		466,
		449,
		907,
		733,
		698,
		720,
		844,
		456,
		848,
		652,
		865,
		957,
		840,
		518,
		567,
		852,
		715,
		575,
		861,
		748,
		747,
		541,
		458,
		624,
		732,
		777,
		520,
		946,
		783,
		763,
		453,
		682,
		519,
		591,
		479,
		556,
		847,
		488,
		921,
		958,
		607,
		673,
		904,
		751,
		794,
		610,
		437,
		886,
		496,
		823,
		828,
		684,
		876,
		854,
		658,
		734,
		433,
		906,
		618,
		471,
		447,
		662,
		603,
		609,
		455,
		521,
		793,
		689,
		822,
		727,
		704,
		467,
		688,
		690,
		675,
		524,
		779,
		454,
		685,
		924,
		514,
		950,
		856,
		553,
		800,
		885,
		579,
		534,
		589,
		657,
		928,
		640,
		633,
		482,
		829,
		942,
		789,
		764,
		953,
		862,
		424,
		667,
		709,
		654,
		903,
		627,
		869,
		476,
		913,
		631,
		445,
		920,
		584,
		481,
		555,
		918,
		572,
		442,
		582,
		601,
		434,
		532,
		611,
		716,
		668,
		616,
		736,
		884,
		485,
		583,
		900,
		894,
		660,
		432,
		916,
		672,
		845,
		693,
		510,
		512,
		741,
		923,
		554,
		850,
		795,
		-1,
		3,
		18,
		9,
		16,
		77,
		4,
		26,
		13,
		43,
		51,
		68,
		53,
		17,
		44,
		51,
		6,
		127,
		73,
		76,
		74,
		65,
		110,
		67,
		185,
		114,
		48,
		21,
		118,
		8,
		10,
		55,
		65,
		28,
		36,
		10,
		112,
		166,
		0,
		65,
		96,
		34,
		143,
		34,
		3,
		224,
		10,
		36,
		22,
		48,
		36,
		12,
		88,
		53,
		83,
		105,
		118,
		44,
		35,
		82,
		76,
		16,
		172,
		21,
		46,
		43,
		53,
		33,
		135,
		32,
		102,
		65,
		227,
		43,
		62,
		8,
		1,
		42,
		105,
		19,
		8,
		126,
		34,
		150,
		39,
		231,
		104,
		32,
		12,
		34,
		67,
		24,
		250,
		44,
		68,
		4,
		51,
		62,
		29,
		3,
		46,
		31,
		139,
		21,
		24,
		7,
		63,
		36,
		48,
		77,
		23,
		51,
		20,
		4,
		3,
		15,
		0,
		105,
		8,
		53,
		234,
		77,
		77,
		9,
		205,
		126,
		8,
		40,
		123,
		0,
		8,
		62,
		100,
		65,
		73,
		127,
		102,
		96,
		12,
		15,
		53,
		54,
		1,
		19,
		170,
		49,
		1,
		114,
		20,
		36,
		151,
		34,
		123,
		80,
		21,
		158,
		24,
		65,
		249,
		46,
		32,
		41,
		119,
		44,
		21,
		19,
		49,
		98,
		65,
		18,
		108,
		27,
		242,
		44,
		44,
		131,
		62,
		187,
		107,
		32,
		73,
		31,
		49,
		41,
		97,
		2,
		118,
		29,
		97,
		65,
		176,
		33,
		112,
		30,
		120,
		84,
		105,
		29,
		16,
		51,
		93,
		77,
		155,
		76,
		3,
		22,
		24,
		36,
		58,
		25,
		5,
		202,
		0,
		51,
		21,
		44,
		10,
		170,
		35,
		21,
		238,
		13,
		57,
		119,
		101,
		83,
		23,
		107,
		94,
		1,
		6,
		0,
		79,
		62,
		33,
		65,
		75,
		112,
		16,
		40,
		153,
		46,
		23,
		68,
		6,
		0,
		12,
		112,
		113,
		61,
		203,
		57,
		8,
		110,
		99,
		3,
		111,
		101,
		107,
		101,
		108,
		3,
		22,
		189,
		59,
		40,
		85,
		33,
		58,
		107,
		59,
		233,
		40,
		110,
		100,
		77,
		5,
		121,
		118,
		110,
		207,
		9,
		1,
		15,
		97,
		64,
		65,
		120,
		58,
		105,
		120,
		218,
		85,
		6,
		19,
		55,
		131,
		14,
		21,
		43,
		92,
		88,
		135,
		65,
		17,
		54,
		84,
		205,
		166,
		28,
		65,
		54,
		67,
		56,
		93,
		37,
		165,
		11,
		19,
		85,
		36,
		108,
		110,
		29,
		62,
		68,
		37,
		27,
		51,
		104,
		34,
		8,
		60,
		10,
		31,
		114,
		82,
		32,
		59,
		93,
		71,
		57,
		51,
		5,
		25,
		53,
		10,
		103,
		34,
		88,
		40,
		26,
		84,
		77,
		13,
		112,
		102,
		144,
		31,
		15,
		60,
		208,
		4,
		245,
		102,
		1,
		213,
		80,
		74,
		118,
		53,
		204,
		230,
		20,
		116,
		98,
		53,
		42,
		112,
		96,
		52,
		79,
		39,
		11,
		63,
		66,
		97,
		235,
		35,
		0,
		27,
		31,
		245,
		1,
		133,
		54,
		122,
		101,
		61,
		102,
		41,
		54,
		120,
		68,
		149,
		64,
		19,
		84,
		85,
		21,
		52,
		181,
		167,
		111,
		0,
		96,
		137,
		56,
		106,
		99,
		61,
		21,
		176,
		0,
		65,
		91,
		6,
		84,
		76,
		9,
		76,
		155,
		39,
		77,
		73,
		91,
		96,
		100,
		127,
		105,
		2,
		60,
		112,
		188,
		55,
		49,
		60,
		12,
		45,
		29,
		117,
		65,
		245,
		57,
		16,
		107,
		20,
		1,
		186,
		72,
		52,
		73,
		104,
		179,
		65,
		0,
		57,
		73,
		56,
		77,
		31,
		95,
		8,
		243,
		66,
		101,
		54,
		27,
		63,
		39,
		45,
		118,
		55,
		174,
		248,
		12,
		60,
		114,
		71,
		84,
		3,
		101,
		43,
		153,
		22,
		112,
		11,
		179,
		4,
		118,
		1,
		73,
		41,
		120,
		49,
		48,
		15,
		39,
		82,
		40,
		58,
		52,
		186,
		12,
		99,
		53,
		4,
		149,
		40,
		244,
		109,
		142,
		27,
		61,
		50,
		39,
		60,
		67,
		100,
		215,
		100,
		60,
		6,
		4,
		44,
		16,
		43,
		8,
		28,
		89,
		42,
		32,
		107,
		65,
	},
	"tcIxNmLmFaiIduiElVaPAXj5PD"
)
