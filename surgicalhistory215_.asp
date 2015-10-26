<%



'if B then Original
	if Session("EPQ30754300b") = "1" then
		Session("EPQ30754300")= "1"
	end if
	if Session("EPQ30755100b") = "1" then
		Session("EPQ30755100")= "1"
	end if
	if Session("EPQ30755300b") = "1" then
		Session("EPQ30755300")= "1"
	end if
	if Session("EPQ30756000b") = "1" then
		Session("EPQ30756000")= "1"
	end if
	if Session("EPQ30756050b") = "1" then
		Session("EPQ30756050")= "1"
	end if
	if Session("EPQ30756100b") = "1" then
		Session("EPQ30756100")= "1"
	end if
	if Session("EPQ30756150b") = "1" then
		Session("EPQ30756150")= "1"
	end if 
	if Session("EPQ30756200b") = "1" then
		Session("EPQ30756200")= "1"
	end if
	if Session("EPQ30756400b") = "1" then
		Session("EPQ30756400")= "1"
	end if
	if Session("EPQ30758700b") = "1" then
		Session("EPQ30758700")= "1"
	end if
	if Session("EPQ30758750b") = "1" then
		Session("EPQ3075850")= "1"
	end if
	if Session("EPQ30758900b") = "1" then
		Session("EPQ30758900")= "1"
	end if
	if Session("EPQ30756800b") = "1" then
		Session("EPQ30756800")= "1"
	end if



'if Original then B
	if Session("EPQ30754300") = "1" then
		Session("EPQ30754300b")= "1"
	end if
	if Session("EPQ30755100") = "1" then
		Session("EPQ30755100b")= "1"
	end if
	if Session("EPQ30755300") = "1" then
		Session("EPQ30755300b")= "1"
	end if
	if Session("EPQ30756000") = "1" then
		Session("EPQ30756000b")= "1"
	end if
	if Session("EPQ30756050") = "1" then
		Session("EPQ30756050b")= "1"
	end if
	if Session("EPQ30756100") = "1" then
		Session("EPQ30756100b")= "1"
	end if
	if Session("EPQ30756150") = "1" then
		Session("EPQ30756150b")= "1"
	end if
	if Session("EPQ30756200") = "1" then
		Session("EPQ30756200b")= "1"
	end if
	if Session("EPQ30756400") = "1" then
		Session("EPQ30756400b")= "1"
	end if
	if Session("EPQ30758700") = "1" then
		Session("EPQ30758700b")= "1"
	end if
	if Session("EPQ30758750") = "1" then
		Session("EPQ3075850b")= "1"
	end if
	if Session("EPQ30758900") = "1" then
		Session("EPQ30758900b")= "1"
	end if
	if Session("EPQ30756800") = "1" then
		Session("EPQ30756800b")= "1"
	end if

'Clear New Dates

if Session("TEMP1EPQ30754550Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30754550N")
Session.Contents.Remove("TEMP1EPQ30754550MM")
Session.Contents.Remove("TEMP1EPQ30754550YY")
end if
if Session("TEMP1EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30755400N")
Session.Contents.Remove("TEMP1EPQ30755400MM")
Session.Contents.Remove("TEMP1EPQ30755400YY")
end if
if Session("TEMP1EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30755800N")
Session.Contents.Remove("TEMP1EPQ30755800MM")
Session.Contents.Remove("TEMP1EPQ30755800YY")
end if
if Session("TEMP1EPQ30756000bPage1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756000bN")
Session.Contents.Remove("TEMP1EPQ30756000bMM")
Session.Contents.Remove("TEMP1EPQ30756000bYY")
end if
if Session("TEMP1EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756100bN")
Session.Contents.Remove("TEMP1EPQ30756100bMM")
Session.Contents.Remove("TEMP1EPQ30756100bYY")
end if
if Session("TEMP1EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756100bN")
Session.Contents.Remove("TEMP1EPQ30756100bMM")
Session.Contents.Remove("TEMP1EPQ30756100bYY")
end if
if Session("TEMP1EPQ30756550Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756550N")
Session.Contents.Remove("TEMP1EPQ30756550MM")
Session.Contents.Remove("TEMP1EPQ30756550YY")
end if
if Session("TEMP1EPQ30756750Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756750N")
Session.Contents.Remove("TEMP1EPQ30756750MM")
Session.Contents.Remove("TEMP1EPQ30756750YY")
end if
if Session("TEMP1EPQ30756800Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756800N")
Session.Contents.Remove("TEMP1EPQ30756800MM")
Session.Contents.Remove("TEMP1EPQ30756800YY")
end if
if Session("TEMP1EPQ30756950Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30756950N")
Session.Contents.Remove("TEMP1EPQ30756950MM")
Session.Contents.Remove("TEMP1EPQ30756950YY")
end if
if Session("TEMP1EPQ30757450Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30757450N")
Session.Contents.Remove("TEMP1EPQ30757450MM")
Session.Contents.Remove("TEMP1EPQ30757450YY")
end if
if Session("TEMP1EPQ30757600Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30757600N")
Session.Contents.Remove("TEMP1EPQ30757600MM")
Session.Contents.Remove("TEMP1EPQ30757600YY")
end if
if Session("TEMP1EPQ30757750Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30757750N")
Session.Contents.Remove("TEMP1EPQ30757750MM")
Session.Contents.Remove("TEMP1EPQ30757750YY")
end if
if Session("TEMP1EPQ30758150Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30758150N")
Session.Contents.Remove("TEMP1EPQ30758150MM")
Session.Contents.Remove("TEMP1EPQ30758150YY")
end if
if Session("TEMP1EPQ30758200Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30758200N")
Session.Contents.Remove("TEMP1EPQ30758200MM")
Session.Contents.Remove("TEMP1EPQ30758200YY")
end if
if Session("TEMP1EPQ30758600Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30758600N")
Session.Contents.Remove("TEMP1EPQ30758600MM")
Session.Contents.Remove("TEMP1EPQ30758600YY")
end if
if Session("TEMP1EPQ30758800Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30758800N")
Session.Contents.Remove("TEMP1EPQ30758800MM")
Session.Contents.Remove("TEMP1EPQ30758800YY")
end if
if Session("TEMP1EPQ30758900Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30758900N")
Session.Contents.Remove("TEMP1EPQ30758900MM")
Session.Contents.Remove("TEMP1EPQ30758900YY")
end if
if Session("TEMP1EPQ30759700Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30759700N")
Session.Contents.Remove("TEMP1EPQ30759700MM")
Session.Contents.Remove("TEMP1EPQ30759700YY")
end if
if Session("TEMP1EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30759950N")
Session.Contents.Remove("TEMP1EPQ30759950MM")
Session.Contents.Remove("TEMP1EPQ30759950YY")
end if
if Session("TEMP1EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP1EPQ30759950N")
Session.Contents.Remove("TEMP1EPQ30759950MM")
Session.Contents.Remove("TEMP1EPQ30759950YY")
end if
if Session("TEMP2EPQ30754550Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30754550N")
Session.Contents.Remove("TEMP2EPQ30754550MM")
Session.Contents.Remove("TEMP2EPQ30754550YY")
end if
if Session("TEMP2EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30755400N")
Session.Contents.Remove("TEMP2EPQ30755400MM")
Session.Contents.Remove("TEMP2EPQ30755400YY")
end if
if Session("TEMP2EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30756100bN")
Session.Contents.Remove("TEMP2EPQ30756100bMM")
Session.Contents.Remove("TEMP2EPQ30756100bYY")
end if
if Session("TEMP2EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30756100bN")
Session.Contents.Remove("TEMP2EPQ30756100bMM")
Session.Contents.Remove("TEMP2EPQ30756100bYY")
end if
if Session("TEMP2EPQ30756550Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30756550N")
Session.Contents.Remove("TEMP2EPQ30756550MM")
Session.Contents.Remove("TEMP2EPQ30756550YY")
end if
if Session("TEMP2EPQ30756750Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30756750N")
Session.Contents.Remove("TEMP2EPQ30756750MM")
Session.Contents.Remove("TEMP2EPQ30756750YY")
end if
if Session("TEMP2EPQ30756800Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30756800N")
Session.Contents.Remove("TEMP2EPQ30756800MM")
Session.Contents.Remove("TEMP2EPQ30756800YY")
end if
if Session("TEMP2EPQ30757250Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30757250N")
Session.Contents.Remove("TEMP2EPQ30757250MM")
Session.Contents.Remove("TEMP2EPQ30757250YY")
end if
if Session("TEMP2EPQ30757800Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30757800N")
Session.Contents.Remove("TEMP2EPQ30757800MM")
Session.Contents.Remove("TEMP2EPQ30757800YY")
end if
if Session("TEMP2EPQ30758650Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30758650N")
Session.Contents.Remove("TEMP2EPQ30758650MM")
Session.Contents.Remove("TEMP2EPQ30758650YY")
end if
if Session("TEMP2EPQ30759700Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30759700N")
Session.Contents.Remove("TEMP2EPQ30759700MM")
Session.Contents.Remove("TEMP2EPQ30759700YY")
end if
if Session("TEMP2EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30759950N")
Session.Contents.Remove("TEMP2EPQ30759950MM")
Session.Contents.Remove("TEMP2EPQ30759950YY")
end if
if Session("TEMP2EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP2EPQ30759950N")
Session.Contents.Remove("TEMP2EPQ30759950MM")
Session.Contents.Remove("TEMP2EPQ30759950YY")
end if
if Session("TEMP3EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30755400N")
Session.Contents.Remove("TEMP3EPQ30755400MM")
Session.Contents.Remove("TEMP3EPQ30755400YY")
end if
if Session("TEMP3EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30755800N")
Session.Contents.Remove("TEMP3EPQ30755800MM")
Session.Contents.Remove("TEMP3EPQ30755800YY")
end if
if Session("TEMP3EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30756100bN")
Session.Contents.Remove("TEMP3EPQ30756100bMM")
Session.Contents.Remove("TEMP3EPQ30756100bYY")
end if
if Session("TEMP3EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30756100bN")
Session.Contents.Remove("TEMP3EPQ30756100bMM")
Session.Contents.Remove("TEMP3EPQ30756100bYY")
end if
if Session("TEMP3EPQ30756550Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30756550N")
Session.Contents.Remove("TEMP3EPQ30756550MM")
Session.Contents.Remove("TEMP3EPQ30756550YY")
end if
if Session("TEMP3EPQ30756750Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30756750N")
Session.Contents.Remove("TEMP3EPQ30756750MM")
Session.Contents.Remove("TEMP3EPQ30756750YY")
end if
if Session("TEMP3EPQ30756800Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30756800N")
Session.Contents.Remove("TEMP3EPQ30756800MM")
Session.Contents.Remove("TEMP3EPQ30756800YY")
end if
if Session("TEMP3EPQ30757250Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30757250N")
Session.Contents.Remove("TEMP3EPQ30757250MM")
Session.Contents.Remove("TEMP3EPQ30757250YY")
end if
if Session("TEMP3EPQ30759700Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30759700N")
Session.Contents.Remove("TEMP3EPQ30759700MM")
Session.Contents.Remove("TEMP3EPQ30759700YY")
end if
if Session("TEMP3EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30759950N")
Session.Contents.Remove("TEMP3EPQ30759950MM")
Session.Contents.Remove("TEMP3EPQ30759950YY")
end if
if Session("TEMP3EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP3EPQ30759950N")
Session.Contents.Remove("TEMP3EPQ30759950MM")
Session.Contents.Remove("TEMP3EPQ30759950YY")
end if
if Session("TEMP4EPQ30755300Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30755300N")
Session.Contents.Remove("TEMP4EPQ30755300MM")
Session.Contents.Remove("TEMP4EPQ30755300YY")
end if
if Session("TEMP4EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30755400N")
Session.Contents.Remove("TEMP4EPQ30755400MM")
Session.Contents.Remove("TEMP4EPQ30755400YY")
end if
if Session("TEMP4EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30755800N")
Session.Contents.Remove("TEMP4EPQ30755800MM")
Session.Contents.Remove("TEMP4EPQ30755800YY")
end if
if Session("TEMP4EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30756100bN")
Session.Contents.Remove("TEMP4EPQ30756100bMM")
Session.Contents.Remove("TEMP4EPQ30756100bYY")
end if
if Session("TEMP4EPQ30756100bPage1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30756100bN")
Session.Contents.Remove("TEMP4EPQ30756100bMM")
Session.Contents.Remove("TEMP4EPQ30756100bYY")
end if
if Session("TEMP4EPQ30756750Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30756750N")
Session.Contents.Remove("TEMP4EPQ30756750MM")
Session.Contents.Remove("TEMP4EPQ30756750YY")
end if
if Session("TEMP4EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30759950N")
Session.Contents.Remove("TEMP4EPQ30759950MM")
Session.Contents.Remove("TEMP4EPQ30759950YY")
end if
if Session("TEMP4EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP4EPQ30759950N")
Session.Contents.Remove("TEMP4EPQ30759950MM")
Session.Contents.Remove("TEMP4EPQ30759950YY")
end if
if Session("TEMP5EPQ30755300Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30755300N")
Session.Contents.Remove("TEMP5EPQ30755300MM")
Session.Contents.Remove("TEMP5EPQ30755300YY")
end if
if Session("TEMP5EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30755400N")
Session.Contents.Remove("TEMP5EPQ30755400MM")
Session.Contents.Remove("TEMP5EPQ30755400YY")
end if
if Session("TEMP5EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30755800N")
Session.Contents.Remove("TEMP5EPQ30755800MM")
Session.Contents.Remove("TEMP5EPQ30755800YY")
end if
if Session("TEMP5EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30756100N")
Session.Contents.Remove("TEMP5EPQ30756100MM")
Session.Contents.Remove("TEMP5EPQ30756100YY")
end if
if Session("TEMP5EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30756100N")
Session.Contents.Remove("TEMP5EPQ30756100MM")
Session.Contents.Remove("TEMP5EPQ30756100YY")
end if
if Session("TEMP5EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30759950N")
Session.Contents.Remove("TEMP5EPQ30759950MM")
Session.Contents.Remove("TEMP5EPQ30759950YY")
end if
if Session("TEMP5EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP5EPQ30759950N")
Session.Contents.Remove("TEMP5EPQ30759950MM")
Session.Contents.Remove("TEMP5EPQ30759950YY")
end if
if Session("TEMP6EPQ30755300Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30755300N")
Session.Contents.Remove("TEMP6EPQ30755300MM")
Session.Contents.Remove("TEMP6EPQ30755300YY")
end if
if Session("TEMP6EPQ30755400Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30755400N")
Session.Contents.Remove("TEMP6EPQ30755400MM")
Session.Contents.Remove("TEMP6EPQ30755400YY")
end if
if Session("TEMP6EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30755800N")
Session.Contents.Remove("TEMP6EPQ30755800MM")
Session.Contents.Remove("TEMP6EPQ30755800YY")
end if
if Session("TEMP6EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30756100N")
Session.Contents.Remove("TEMP6EPQ30756100MM")
Session.Contents.Remove("TEMP6EPQ30756100YY")
end if
if Session("TEMP6EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30756100N")
Session.Contents.Remove("TEMP6EPQ30756100MM")
Session.Contents.Remove("TEMP6EPQ30756100YY")
end if
if Session("TEMP6EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP6EPQ30759950N")
Session.Contents.Remove("TEMP6EPQ30759950MM")
Session.Contents.Remove("TEMP6EPQ30759950YY")
end if
if Session("TEMP7EPQ30755650Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30755650N")
Session.Contents.Remove("TEMP7EPQ30755650MM")
Session.Contents.Remove("TEMP7EPQ30755650YY")
end if
if Session("TEMP7EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30755800N")
Session.Contents.Remove("TEMP7EPQ30755800MM")
Session.Contents.Remove("TEMP7EPQ30755800YY")
end if
if Session("TEMP7EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30756100N")
Session.Contents.Remove("TEMP7EPQ30756100MM")
Session.Contents.Remove("TEMP7EPQ30756100YY")
end if
if Session("TEMP7EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30756100N")
Session.Contents.Remove("TEMP7EPQ30756100MM")
Session.Contents.Remove("TEMP7EPQ30756100YY")
end if
if Session("TEMP7EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30759950N")
Session.Contents.Remove("TEMP7EPQ30759950MM")
Session.Contents.Remove("TEMP7EPQ30759950YY")
end if
if Session("TEMP7EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP7EPQ30759950N")
Session.Contents.Remove("TEMP7EPQ30759950MM")
Session.Contents.Remove("TEMP7EPQ30759950YY")
end if
if Session("TEMP8EPQ30755600Page1")<> "1" then
Session.Contents.Remove("TEMP8EPQ30755600N")
Session.Contents.Remove("TEMP8EPQ30755600MM")
Session.Contents.Remove("TEMP8EPQ30755600YY")
end if
if Session("TEMP8EPQ30755800Page1")<> "1" then
Session.Contents.Remove("TEMP8EPQ30755800N")
Session.Contents.Remove("TEMP8EPQ30755800MM")
Session.Contents.Remove("TEMP8EPQ30755800YY")
end if
if Session("TEMP8EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP8EPQ30756100N")
Session.Contents.Remove("TEMP8EPQ30756100MM")
Session.Contents.Remove("TEMP8EPQ30756100YY")
end if
if Session("TEMP8EPQ30756100Page1")<> "1" then
Session.Contents.Remove("TEMP8EPQ30756100N")
Session.Contents.Remove("TEMP8EPQ30756100MM")
Session.Contents.Remove("TEMP8EPQ30756100YY")
end if
if Session("TEMP8EPQ30759950Page1")<> "1" then
Session.Contents.Remove("TEMP8EPQ30759950N")
Session.Contents.Remove("TEMP8EPQ30759950MM")
Session.Contents.Remove("TEMP8EPQ30759950YY")
end if
if Session("TEMPEPQ30754300Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30754300N")
Session.Contents.Remove("TEMPEPQ30754300MM")
Session.Contents.Remove("TEMPEPQ30754300YY")
end if
if Session("TEMPEPQ30754600Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30754600N")
Session.Contents.Remove("TEMPEPQ30754600MM")
Session.Contents.Remove("TEMPEPQ30754600YY")
end if
if Session("TEMPEPQ30754700Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30754700N")
Session.Contents.Remove("TEMPEPQ30754700MM")
Session.Contents.Remove("TEMPEPQ30754700YY")
end if
if Session("TEMPEPQ30754900Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30754900N")
Session.Contents.Remove("TEMPEPQ30754900MM")
Session.Contents.Remove("TEMPEPQ30754900YY")
end if
if Session("TEMPEPQ30758150Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30758150N")
Session.Contents.Remove("TEMPEPQ30758150MM")
Session.Contents.Remove("TEMPEPQ30758150YY")
end if
if Session("TEMPEPQ30759050Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30759050N")
Session.Contents.Remove("TEMPEPQ30759050MM")
Session.Contents.Remove("TEMPEPQ30759050YY")
end if
if Session("TEMPEPQ30759200Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30759200N")
Session.Contents.Remove("TEMPEPQ30759200MM")
Session.Contents.Remove("TEMPEPQ30759200YY")
end if
if Session("TEMPEPQ30759450Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30759450N")
Session.Contents.Remove("TEMPEPQ30759450MM")
Session.Contents.Remove("TEMPEPQ30759450YY")
end if
if Session("TEMPEPQ30759600Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30759600N")
Session.Contents.Remove("TEMPEPQ30759600MM")
Session.Contents.Remove("TEMPEPQ30759600YY")
end if
if Session("TEMPEPQ30760250Page1")<> "1" then
Session.Contents.Remove("TEMPEPQ30760250N")
Session.Contents.Remove("TEMPEPQ30760250MM")
Session.Contents.Remove("TEMPEPQ30760250YY")
end if

'Clear dates

	if Session("EPQ30754000")<>"1" then

		Session.Contents.Remove("EPQ30754040")
		Session.Contents.Remove("EPQ30754020")
		Session.Contents.Remove("EPQ30754030")

	end if

	if Session("EPQ30754050")<>"1" then

		Session.Contents.Remove("EPQ30754090")
		Session.Contents.Remove("EPQ30754070")
		Session.Contents.Remove("EPQ30754080")

	end if

	if Session("EPQ30754100")<>"1" then

		Session.Contents.Remove("EPQ30754140")
		Session.Contents.Remove("EPQ30754120")
		Session.Contents.Remove("EPQ30754130")

	end if

	if Session("EPQ30754150")<>"1" then

		Session.Contents.Remove("EPQ30754190")
		Session.Contents.Remove("EPQ30754170")
		Session.Contents.Remove("EPQ30754180")

	end if

	if Session("EPQ30754200")<>"1" then

		Session.Contents.Remove("EPQ30754240")
		Session.Contents.Remove("EPQ30754220")
		Session.Contents.Remove("EPQ30754230")

	end if

	if Session("EPQ30754250")<>"1" then

		Session.Contents.Remove("EPQ30754290")
		Session.Contents.Remove("EPQ30754270")
		Session.Contents.Remove("EPQ30754280")

	end if

	if Session("EPQ30754300")<>"1" then

		Session.Contents.Remove("EPQ30754340")
		Session.Contents.Remove("EPQ30754320")
		Session.Contents.Remove("EPQ30754330")

	end if

	if Session("EPQ30754350")<>"1" then

		Session.Contents.Remove("EPQ30754390")
		Session.Contents.Remove("EPQ30754370")
		Session.Contents.Remove("EPQ30754380")

	end if

	if Session("EPQ30754400")<>"1" then

		Session.Contents.Remove("EPQ30754440")
		Session.Contents.Remove("EPQ30754420")
		Session.Contents.Remove("EPQ30754430")

	end if

	if Session("EPQ30754450")<>"1" then

		Session.Contents.Remove("EPQ30754490")
		Session.Contents.Remove("EPQ30754470")
		Session.Contents.Remove("EPQ30754480")

	end if

	if Session("EPQ30754500")<>"1" then

		Session.Contents.Remove("EPQ30754540")
		Session.Contents.Remove("EPQ30754520")
		Session.Contents.Remove("EPQ30754530")

	end if

	if Session("EPQ30754550")<>"1" then

		Session.Contents.Remove("EPQ30754590")
		Session.Contents.Remove("EPQ30754570")
		Session.Contents.Remove("EPQ30754580")

	end if

	if Session("EPQ30754600")<>"1" then

		Session.Contents.Remove("EPQ30754640")
		Session.Contents.Remove("EPQ30754620")
		Session.Contents.Remove("EPQ30754630")

	end if

	if Session("EPQ30754650")<>"1" then

		Session.Contents.Remove("EPQ30754690")
		Session.Contents.Remove("EPQ30754670")
		Session.Contents.Remove("EPQ30754680")

	end if

	if Session("EPQ30754700")<>"1" then

		Session.Contents.Remove("EPQ30754740")
		Session.Contents.Remove("EPQ30754720")
		Session.Contents.Remove("EPQ30754730")

	end if

	if Session("EPQ30754750")<>"1" then

		Session.Contents.Remove("EPQ30754790")
		Session.Contents.Remove("EPQ30754770")
		Session.Contents.Remove("EPQ30754780")

	end if

	if Session("EPQ30754800")<>"1" then

		Session.Contents.Remove("EPQ30754840")
		Session.Contents.Remove("EPQ30754820")
		Session.Contents.Remove("EPQ30754830")

	end if

	if Session("EPQ30754850")<>"1" then

		Session.Contents.Remove("EPQ30754890")
		Session.Contents.Remove("EPQ30754870")
		Session.Contents.Remove("EPQ30754880")

	end if

	if Session("EPQ30754900")<>"1" then

		Session.Contents.Remove("EPQ30754940")
		Session.Contents.Remove("EPQ30754920")
		Session.Contents.Remove("EPQ30754930")

	end if

	if Session("EPQ30754950")<>"1" then

		Session.Contents.Remove("EPQ30754990")
		Session.Contents.Remove("EPQ30754970")
		Session.Contents.Remove("EPQ30754980")

	end if

	if Session("EPQ30755000")<>"1" then

		Session.Contents.Remove("EPQ30755040")
		Session.Contents.Remove("EPQ30755020")
		Session.Contents.Remove("EPQ30755030")

	end if

	if Session("EPQ30755050")<>"1" then

		Session.Contents.Remove("EPQ30755090")
		Session.Contents.Remove("EPQ30755070")
		Session.Contents.Remove("EPQ30755080")

	end if

	if Session("EPQ30755100")<>"1" then

		Session.Contents.Remove("EPQ30755140")
		Session.Contents.Remove("EPQ30755120")
		Session.Contents.Remove("EPQ30755130")
		Session.Contents.Remove("EPQ30704000")
		Session.Contents.Remove("EPQ30705000")

	end if

	if Session("EPQ30755150")<>"1" then

		Session.Contents.Remove("EPQ30755190")
		Session.Contents.Remove("EPQ30755170")
		Session.Contents.Remove("EPQ30755180")

	end if

	if Session("EPQ30755200")<>"1" then

		Session.Contents.Remove("EPQ30755240")
		Session.Contents.Remove("EPQ30755220")
		Session.Contents.Remove("EPQ30755230")

	end if
	if Session("EPQ30755250")<>"1" then

		Session.Contents.Remove("EPQ30755290")
		Session.Contents.Remove("EPQ30755270")
		Session.Contents.Remove("EPQ30755280")

	end if
	if Session("EPQ30755300b")<>"1" then

		Session.Contents.Remove("EPQ30755340")
		Session.Contents.Remove("EPQ30755320")
		Session.Contents.Remove("EPQ30755330")

	end if

	if Session("EPQ30755350")<>"1" then

		Session.Contents.Remove("EPQ30755390")
		Session.Contents.Remove("EPQ30755370")
		Session.Contents.Remove("EPQ30755380")

	end if

	if Session("EPQ30755400")<>"1" then

		Session.Contents.Remove("EPQ30755440")
		Session.Contents.Remove("EPQ30755420")
		Session.Contents.Remove("EPQ30755430")

	end if

	if Session("EPQ30755450")<>"1" then

		Session.Contents.Remove("EPQ30755490")
		Session.Contents.Remove("EPQ30755470")
		Session.Contents.Remove("EPQ30755480")

	end if

	if Session("EPQ30755500")<>"1" then

		Session.Contents.Remove("EPQ30755540")
		Session.Contents.Remove("EPQ30755520")
		Session.Contents.Remove("EPQ30755530")

	end if

	if Session("EPQ30755550")<>"1" then

		Session.Contents.Remove("EPQ30755590")
		Session.Contents.Remove("EPQ30755570")
		Session.Contents.Remove("EPQ30755580")

	end if

	if Session("EPQ30755600")<>"1" then

		Session.Contents.Remove("EPQ30755640")
		Session.Contents.Remove("EPQ30755620")
		Session.Contents.Remove("EPQ30755630")

	end if

	if Session("EPQ30755650")<>"1" then

		Session.Contents.Remove("EPQ30755690")
		Session.Contents.Remove("EPQ30755670")
		Session.Contents.Remove("EPQ30755680")

	end if

	if Session("EPQ30755700")<>"1" then

		Session.Contents.Remove("EPQ30755740")
		Session.Contents.Remove("EPQ30755720")
		Session.Contents.Remove("EPQ30755730")

	end if

	if Session("EPQ30755750")<>"1" then

		Session.Contents.Remove("EPQ30755790")
		Session.Contents.Remove("EPQ30755770")
		Session.Contents.Remove("EPQ30755780")

	end if

	if Session("EPQ30755800")<>"1" then

		Session.Contents.Remove("EPQ30755840")
		Session.Contents.Remove("EPQ30755820")
		Session.Contents.Remove("EPQ30755830")

	end if

	if Session("EPQ30755850")<>"1" then

		Session.Contents.Remove("EPQ30755890")
		Session.Contents.Remove("EPQ30755870")
		Session.Contents.Remove("EPQ30755880")

	end if

	if Session("EPQ30755900")<>"1" then

		Session.Contents.Remove("EPQ30755940")
		Session.Contents.Remove("EPQ30755920")
		Session.Contents.Remove("EPQ30755930")

	end if

	if Session("EPQ30755950")<>"1" then

		Session.Contents.Remove("EPQ30755990")
		Session.Contents.Remove("EPQ30755970")
		Session.Contents.Remove("EPQ30755980")

	end if

	if Session("EPQ30756000b")<>"1" then

		Session.Contents.Remove("EPQ30756040")
		Session.Contents.Remove("EPQ30756020")
		Session.Contents.Remove("EPQ30756030")

	end if

	if Session("EPQ30756050b")<>"1" then

		Session.Contents.Remove("EPQ30756090")
		Session.Contents.Remove("EPQ30756070")
		Session.Contents.Remove("EPQ30756080")

	end if

	if Session("EPQ30756100b")<>"1" then

		Session.Contents.Remove("EPQ30756142")
		Session.Contents.Remove("EPQ30756122")
		Session.Contents.Remove("EPQ30756132")
		Session.Contents.Remove("EPQ30756141")
		Session.Contents.Remove("EPQ30756121")
		Session.Contents.Remove("EPQ30756131")
		Session.Contents.Remove("EPQ30756140")
		Session.Contents.Remove("EPQ30756120")
		Session.Contents.Remove("EPQ30756130")

	end if

	if Session("EPQ30756150b")<>"1" then

		Session.Contents.Remove("EPQ30756192")
		Session.Contents.Remove("EPQ30756172")
		Session.Contents.Remove("EPQ30756182")
		Session.Contents.Remove("EPQ30756191")
		Session.Contents.Remove("EPQ30756171")
		Session.Contents.Remove("EPQ30756181")
		Session.Contents.Remove("EPQ30756190")
		Session.Contents.Remove("EPQ30756170")
		Session.Contents.Remove("EPQ30756180")

	end if

	if Session("EPQ30756200b")<>"1" then
		Session.Contents.Remove("EPQ30756240")
		Session.Contents.Remove("EPQ30756220")
		Session.Contents.Remove("EPQ30756230")
	end if

	if Session("EPQ30756250")<>"1" then

		Session.Contents.Remove("EPQ30710020")
		Session.Contents.Remove("EPQ30710000lMM")
		Session.Contents.Remove("EPQ30710000lYY")
		Session.Contents.Remove("EPQ30710010")
		Session.Contents.Remove("EPQ30710000rMM")
		Session.Contents.Remove("EPQ30710000rYY")
		Session.Contents.Remove("EPQ30710030")
		Session.Contents.Remove("EPQ30710000bMM")
		Session.Contents.Remove("EPQ30710000bYY")

	end if

	if Session("EPQ30756300")<>"1" then

		Session.Contents.Remove("EPQ30711020")
		Session.Contents.Remove("EPQ30711000MM")
		Session.Contents.Remove("EPQ307110l0YY")
		Session.Contents.Remove("EPQ30711010")
		Session.Contents.Remove("EPQ30711000rMM")
		Session.Contents.Remove("EPQ30711000rYY")
		Session.Contents.Remove("EPQ30711030")
		Session.Contents.Remove("EPQ30711000bMM")
		Session.Contents.Remove("EPQ30711000bYY")

	end if

	if Session("EPQ30756350")<>"1" then

		Session.Contents.Remove("EPQ30709020")
		Session.Contents.Remove("EPQ30709000lMM")
		Session.Contents.Remove("EPQ30709000lYY")
		Session.Contents.Remove("EPQ30709010")
		Session.Contents.Remove("EPQ30709000rMM")
		Session.Contents.Remove("EPQ30709000rYY")
		Session.Contents.Remove("EPQ30709030")
		Session.Contents.Remove("EPQ30709000bMM")
		Session.Contents.Remove("EPQ30709000bYY")

	end if

	if Session("EPQ30756400")<>"1" then

		Session.Contents.Remove("EPQ30756440")
		Session.Contents.Remove("EPQ30756420")
		Session.Contents.Remove("EPQ30756430")

	end if

	if Session("EPQ30756450")<>"1" then

		Session.Contents.Remove("EPQ30756490")
		Session.Contents.Remove("EPQ30756470")
		Session.Contents.Remove("EPQ30756480")

	end if

	if Session("EPQ30756500")<>"1" then

		Session.Contents.Remove("EPQ30756540")
		Session.Contents.Remove("EPQ30756520")
		Session.Contents.Remove("EPQ30756530")

	end if

	if Session("EPQ30756550")<>"1" then

		Session.Contents.Remove("EPQ30756590")
		Session.Contents.Remove("EPQ30756570")
		Session.Contents.Remove("EPQ30756580")

	end if

	if Session("EPQ30756600")<>"1" then

		Session.Contents.Remove("EPQ30756640")
		Session.Contents.Remove("EPQ30756620")
		Session.Contents.Remove("EPQ30756630")

	end if

	if Session("EPQ30756650")<>"1" then

		Session.Contents.Remove("EPQ30756690")
		Session.Contents.Remove("EPQ30756670")
		Session.Contents.Remove("EPQ30756680")

	end if

	if Session("EPQ30756700")<>"1" then

		Session.Contents.Remove("EPQ30756740")
		Session.Contents.Remove("EPQ30756720")
		Session.Contents.Remove("EPQ30756730")

	end if

	if Session("EPQ30756750")<>"1" then

		Session.Contents.Remove("EPQ30756790")
		Session.Contents.Remove("EPQ30756770")
		Session.Contents.Remove("EPQ30756780")

	end if

	if Session("EPQ30756800")<>"1" then

		Session.Contents.Remove("EPQ30756840")
		Session.Contents.Remove("EPQ30756820")
		Session.Contents.Remove("EPQ30756830")

	end if

	if Session("EPQ30756850")<>"1" then

		Session.Contents.Remove("EPQ30756890")
		Session.Contents.Remove("EPQ30756870")
		Session.Contents.Remove("EPQ30756880")

	end if

	if Session("EPQ30758600")<>"1" then

		Session.Contents.Remove("EPQ30758640")
		Session.Contents.Remove("EPQ30758620")
		Session.Contents.Remove("EPQ30758630")

	end if

	if Session("EPQ30758650")<>"1" then

		Session.Contents.Remove("EPQ30758690")
		Session.Contents.Remove("EPQ30758670")
		Session.Contents.Remove("EPQ30758680")

	end if

	if Session("EPQ30758700")<>"1" then

		Session.Contents.Remove("EPQ30758740")
		Session.Contents.Remove("EPQ30758720")
		Session.Contents.Remove("EPQ30758730")

	end if

	if Session("EPQ30758750")<>"1" then

		Session.Contents.Remove("EPQ30758790")
		Session.Contents.Remove("EPQ30758770")
		Session.Contents.Remove("EPQ30758780")

	end if

	if Session("EPQ30758800")<>"1" then

		Session.Contents.Remove("EPQ30758840")
		Session.Contents.Remove("EPQ30758820")
		Session.Contents.Remove("EPQ30758830")

	end if

	if Session("EPQ30758850")<>"1" then

		Session.Contents.Remove("EPQ30758890")
		Session.Contents.Remove("EPQ30758870")
		Session.Contents.Remove("EPQ30758880")

	end if

	if Session("EPQ30758900")<>"1" then

		Session.Contents.Remove("EPQ30758940")
		Session.Contents.Remove("EPQ30758920")
		Session.Contents.Remove("EPQ30758930")

	end if

	if Session("EPQ30758950")<>"1" then

		Session.Contents.Remove("EPQ30758990")
		Session.Contents.Remove("EPQ30758970")
		Session.Contents.Remove("EPQ30758980")

	end if

	if Session("EPQ30757450")<>"1" then

		Session.Contents.Remove("EPQ30757490")
		Session.Contents.Remove("EPQ30757470")
		Session.Contents.Remove("EPQ30757480")

	end if

	if Session("EPQ30757500")<>"1" then

		Session.Contents.Remove("EPQ30757540")
		Session.Contents.Remove("EPQ30757520")
		Session.Contents.Remove("EPQ30757530")

	end if

	if Session("EPQ30757550")<>"1" then

		Session.Contents.Remove("EPQ30757590")
		Session.Contents.Remove("EPQ30757570")
		Session.Contents.Remove("EPQ30757580")

	end if

	if Session("EPQ30757600")<>"1" then

		Session.Contents.Remove("EPQ30757640")
		Session.Contents.Remove("EPQ30757620")
		Session.Contents.Remove("EPQ30757630")

	end if

	if Session("EPQ30757650")<>"1" then

		Session.Contents.Remove("EPQ30757690")
		Session.Contents.Remove("EPQ30757670")
		Session.Contents.Remove("EPQ30757680")

	end if

	if Session("EPQ30757700")<>"1" then

		Session.Contents.Remove("EPQ30757740")
		Session.Contents.Remove("EPQ30757720")
		Session.Contents.Remove("EPQ30757730")

	end if

	if Session("EPQ30757750")<>"1" then

		Session.Contents.Remove("EPQ30757790")
		Session.Contents.Remove("EPQ30757770")
		Session.Contents.Remove("EPQ30757780")

	end if

	if Session("EPQ30757800")<>"1" then

		Session.Contents.Remove("EPQ30757840")
		Session.Contents.Remove("EPQ30757820")
		Session.Contents.Remove("EPQ30757830")

	end if

	if Session("EPQ30757850")<>"1" then

		Session.Contents.Remove("EPQ30757890")
		Session.Contents.Remove("EPQ30757870")
		Session.Contents.Remove("EPQ30757880")

	end if

	if Session("EPQ30757900")<>"1" then

		Session.Contents.Remove("EPQ30757940")
		Session.Contents.Remove("EPQ30757920")
		Session.Contents.Remove("EPQ30757930")

	end if

	if Session("EPQ30757950")<>"1" then

		Session.Contents.Remove("EPQ30757990")
		Session.Contents.Remove("EPQ30757970")
		Session.Contents.Remove("EPQ30757980")

	end if

	if Session("EPQ30756800b")<>"1" then

		Session.Contents.Remove("EPQ30758040")
		Session.Contents.Remove("EPQ30758020")
		Session.Contents.Remove("EPQ30758030")

	end if

	if Session("EPQ30758050")<>"1" then

		Session.Contents.Remove("EPQ30758090")
		Session.Contents.Remove("EPQ30758070")
		Session.Contents.Remove("EPQ30758080")

	end if

	if Session("EPQ30758100")<>"1" then

		Session.Contents.Remove("EPQ30758140")
		Session.Contents.Remove("EPQ30758120")
		Session.Contents.Remove("EPQ30758130")

	end if

	if Session("EPQ30758150")<>"1" then

		Session.Contents.Remove("EPQ30758190")
		Session.Contents.Remove("EPQ30758170")
		Session.Contents.Remove("EPQ30758180")

	end if

	if Session("EPQ30758200")<>"1" then

		Session.Contents.Remove("EPQ30758240")
		Session.Contents.Remove("EPQ30758220")
		Session.Contents.Remove("EPQ30758230")

	end if

	if Session("EPQ30758250")<>"1" then

		Session.Contents.Remove("EPQ30758290")
		Session.Contents.Remove("EPQ30758270")
		Session.Contents.Remove("EPQ30758280")

	end if

	if Session("EPQ30758300")<>"1" then

		Session.Contents.Remove("EPQ30758340")
		Session.Contents.Remove("EPQ30758320")
		Session.Contents.Remove("EPQ30758330")

	end if

	if Session("EPQ30758350")<>"1" then

		Session.Contents.Remove("EPQ30758390")
		Session.Contents.Remove("EPQ30758370")
		Session.Contents.Remove("EPQ30758380")

	end if

	if Session("EPQ30758400")<>"1" then

		Session.Contents.Remove("EPQ30758440")
		Session.Contents.Remove("EPQ30758420")
		Session.Contents.Remove("EPQ30758430")

	end if

	if Session("EPQ30758450")<>"1" then

		Session.Contents.Remove("EPQ30758490")
		Session.Contents.Remove("EPQ30758470")
		Session.Contents.Remove("EPQ30758480")

	end if

	if Session("EPQ30758500")<>"1" then

		Session.Contents.Remove("EPQ30758540")
		Session.Contents.Remove("EPQ30758520")
		Session.Contents.Remove("EPQ30758530")

	end if

	if Session("EPQ30758550")<>"1" then

		Session.Contents.Remove("EPQ30758590")
		Session.Contents.Remove("EPQ30758570")
		Session.Contents.Remove("EPQ30758580")

	end if

	if Session("EPQ30759050")<>"1" then

		Session.Contents.Remove("EPQ30759090")
		Session.Contents.Remove("EPQ30759070")
		Session.Contents.Remove("EPQ30759080")

	end if

	if Session("EPQ30759200")<>"1" then

		Session.Contents.Remove("EPQ30759240")
		Session.Contents.Remove("EPQ30759220")
		Session.Contents.Remove("EPQ30759230")

	end if

	if Session("EPQ30759250")<>"1" then

		Session.Contents.Remove("EPQ30759290")
		Session.Contents.Remove("EPQ30759270")
		Session.Contents.Remove("EPQ30759280")

	end if

	if Session("EPQ30759300")<>"1" then

		Session.Contents.Remove("EPQ30759340")
		Session.Contents.Remove("EPQ30759320")
		Session.Contents.Remove("EPQ30759330")

	end if

	if Session("EPQ30759350")<>"1" then

		Session.Contents.Remove("EPQ30759390")
		Session.Contents.Remove("EPQ30759370")
		Session.Contents.Remove("EPQ30759380")

	end if

	if Session("EPQ30759400")<>"1" then

		Session.Contents.Remove("EPQ30759440")
		Session.Contents.Remove("EPQ30759420")
		Session.Contents.Remove("EPQ30759430")

	end if

	if Session("EPQ30759450")<>"1" then

		Session.Contents.Remove("EPQ30759490")
		Session.Contents.Remove("EPQ30759470")
		Session.Contents.Remove("EPQ30759480")

	end if

	if Session("EPQ30759500")<>"1" then

		Session.Contents.Remove("EPQ30759540")
		Session.Contents.Remove("EPQ30759520")
		Session.Contents.Remove("EPQ30759530")

	end if

	if Session("EPQ30759550")<>"1" then

		Session.Contents.Remove("EPQ30759590")
		Session.Contents.Remove("EPQ30759570")
		Session.Contents.Remove("EPQ30759580")

	end if

	if Session("EPQ30759600")<>"1" then

		Session.Contents.Remove("EPQ30759640")
		Session.Contents.Remove("EPQ30759620")
		Session.Contents.Remove("EPQ30759630")

	end if

	if Session("EPQ30759650")<>"1" then

		Session.Contents.Remove("EPQ30759690")
		Session.Contents.Remove("EPQ30759670")
		Session.Contents.Remove("EPQ30759680")

	end if

	if Session("EPQ30759700")<>"1" then

		Session.Contents.Remove("EPQ30759740")
		Session.Contents.Remove("EPQ30759720")
		Session.Contents.Remove("EPQ30759730")

	end if

	if Session("EPQ30759750")<>"1" then

		Session.Contents.Remove("EPQ30759790")
		Session.Contents.Remove("EPQ30759770")
		Session.Contents.Remove("EPQ30759780")

	end if

	if Session("EPQ30759800")<>"1" then

		Session.Contents.Remove("EPQ30759840")
		Session.Contents.Remove("EPQ30759820")
		Session.Contents.Remove("EPQ30759830")

	end if

	if Session("EPQ30759900")<>"1" then

		Session.Contents.Remove("EPQ30759940")
		Session.Contents.Remove("EPQ30759920")
		Session.Contents.Remove("EPQ30759930")

	end if

	if Session("EPQ30759950")<>"1" then

		Session.Contents.Remove("EPQ30759990")
		Session.Contents.Remove("EPQ30759970")
		Session.Contents.Remove("EPQ30759980")

	end if

	if Session("EPQ30760000")<>"1" then

		Session.Contents.Remove("EPQ30760040")
		Session.Contents.Remove("EPQ30760020")
		Session.Contents.Remove("EPQ30760030")

	end if

	if Session("EPQ30760050")<>"1" then

		Session.Contents.Remove("EPQ30760090")
		Session.Contents.Remove("EPQ30760070")
		Session.Contents.Remove("EPQ30760080")

	end if

	if Session("EPQ30760100")<>"1" then

		Session.Contents.Remove("EPQ30760140")
		Session.Contents.Remove("EPQ30760120")
		Session.Contents.Remove("EPQ30760130")

	end if

	if Session("EPQ30760150")<>"1" then

		Session.Contents.Remove("EPQ30760190")
		Session.Contents.Remove("EPQ30760170")
		Session.Contents.Remove("EPQ30760180")

	end if

	if Session("EPQ30760200")<>"1" then

		Session.Contents.Remove("EPQ30760240")
		Session.Contents.Remove("EPQ30760220")
		Session.Contents.Remove("EPQ30760230")

	end if

	if Session("EPQ30760250")<>"1" then

		Session.Contents.Remove("EPQ30760290")
		Session.Contents.Remove("EPQ30760270")
		Session.Contents.Remove("EPQ30760280")

	end if

	if Session("EPQ30760300")<>"1" then

		Session.Contents.Remove("EPQ30760340")
		Session.Contents.Remove("EPQ30760320")
		Session.Contents.Remove("EPQ30760330")

	end if

	if Session("EPQ30756900")<>"1" then

		Session.Contents.Remove("EPQ30756940")
		Session.Contents.Remove("EPQ30756920")
		Session.Contents.Remove("EPQ30756930")

	end if

	if Session("EPQ30756950")<>"1" then

		Session.Contents.Remove("EPQ30756990")
		Session.Contents.Remove("EPQ30756970")
		Session.Contents.Remove("EPQ30756980")

	end if

	if Session("EPQ30757000")<>"1" then

		Session.Contents.Remove("EPQ30757040")
		Session.Contents.Remove("EPQ30757020")
		Session.Contents.Remove("EPQ30757030")

	end if

	if Session("EPQ30757050")<>"1" then

		Session.Contents.Remove("EPQ30757090")
		Session.Contents.Remove("EPQ30757070")
		Session.Contents.Remove("EPQ30757080")

	end if

	if Session("EPQ30757100")<>"1" then

		Session.Contents.Remove("EPQ30712010")
		Session.Contents.Remove("EPQ30712000MM")
		Session.Contents.Remove("EPQ307120l0YY")
		Session.Contents.Remove("EPQ30712020")
		Session.Contents.Remove("EPQ30712000rMM")
		Session.Contents.Remove("EPQ30712000rYY")
		Session.Contents.Remove("EPQ30712030")
		Session.Contents.Remove("EPQ30712000bMM")
		Session.Contents.Remove("EPQ30712000bYY")

	end if

	if Session("EPQ30757150")<>"1" then

		Session.Contents.Remove("EPQ30712010s")
		Session.Contents.Remove("EPQ30712000MMs")
		Session.Contents.Remove("EPQ307120l0YYs")
		Session.Contents.Remove("EPQ30712020s")
		Session.Contents.Remove("EPQ30712000rMMs")
		Session.Contents.Remove("EPQ30712000rYYs")
		Session.Contents.Remove("EPQ30712030s")
		Session.Contents.Remove("EPQ30712000bMMs")
		Session.Contents.Remove("EPQ30712000bYYs")

	end if

	if Session("EPQ30757200")<>"1" then

		Session.Contents.Remove("EPQ30757240")
		Session.Contents.Remove("EPQ30757220")
		Session.Contents.Remove("EPQ30757230")

	end if

	if Session("EPQ30757250")<>"1" then

		Session.Contents.Remove("EPQ30757290")
		Session.Contents.Remove("EPQ30757270")
		Session.Contents.Remove("EPQ30757280")

	end if

	if Session("EPQ30757300")<>"1" then

		Session.Contents.Remove("EPQ30757340")
		Session.Contents.Remove("EPQ30757320")
		Session.Contents.Remove("EPQ30757330")

	end if

	if Session("EPQ30757350")<>"1" then

		Session.Contents.Remove("EPQ30757390")
		Session.Contents.Remove("EPQ30757370")
		Session.Contents.Remove("EPQ30757380")

	end if

	if Session("EPQ30757400")<>"1" then

		Session.Contents.Remove("EPQ30757440")
		Session.Contents.Remove("EPQ30757420")
		Session.Contents.Remove("EPQ30757430")

	end if


Session("PageCounter")=0

	if Session("EPQ30754000") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754000")= "0"
	end if
	if Session("EPQ30754050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754050")= "0"
	end if
	if Session("EPQ30754100") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754100")= "0"
	end if
	if Session("EPQ30754150") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754150")= "0"
	end if
	if Session("EPQ30754200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754200")= "0"
	end if
	if Session("EPQ30754250") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754250")= "0"
	end if
	if Session("EPQ30754300") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754300")= "0"
	end if
	if Session("EPQ30754300b") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754300b")= "0"
	end if
	if Session("EPQ30754350") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754350")= "0"
	end if
	if Session("EPQ30754400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754400")= "0"
	end if
	if Session("EPQ30754450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754450")= "0"
	end if
	if Session("EPQ30754500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754500")= "0"
	end if
	if Session("EPQ30754550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754550")= "0"
	end if
	if Session("EPQ30754600") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754600")= "0"
	end if
	if Session("EPQ30754650") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754650")= "0"
	end if
	if Session("EPQ30754700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754700")= "0"
	end if
	if Session("EPQ30754750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754750")= "0"
	end if
	if Session("EPQ30754800") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754800")= "0"
	end if
	if Session("EPQ30754850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754850")= "0"
	end if

	if Session("EPQ30754900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754900")= "0"
	end if
	if Session("EPQ30754950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754950")= "0"
	end if
	if Session("EPQ30754990") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30754990")= "0"
	end if

	if Session("EPQ30755400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755400")= "0"
	end if
	if Session("EPQ30755450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755450")= "0"
	end if
	if Session("EPQ30755500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755500")= "0"
	end if
	if Session("EPQ30755550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755550")= "0"
	end if
	if Session("EPQ30755700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755700")= "0"
	end if
	if Session("EPQ30755750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755750")= "0"
	end if
	if Session("EPQ30755850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755850")= "0"
	end if
	if Session("EPQ30755900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755900")= "0"
	end if
	if Session("EPQ30755950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30755950")= "0"
	end if
	if Session("EPQ30756000") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756000")= "0"
	end if
	if Session("EPQ30756050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756050")= "0"
	end if
	if Session("EPQ30756200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756200")= "0"
	end if
	if Session("EPQ30756200b") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756200b")= "0"
	end if

	if Session("EPQ30756250") = "1" then
	else
		Session("EPQ30756250")= "0"
	end if
	if Session("EPQ30756300") = "1" then
	else
		Session("EPQ30756300")= "0"
	end if

	if Session("EPQ30756350") = "1" then
	else
		Session("EPQ30756350")= "0"
	end if

	if Session("EPQ30756400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756400")= "0"
	end if
	if Session("EPQ30756450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756450")= "0"
	end if
	if Session("EPQ30756500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756500")= "0"
	end if
	if Session("EPQ30756550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756550")= "0"
	end if
	if Session("EPQ30756600") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756600")= "0"
	end if
	if Session("EPQ30756650") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756650")= "0"
	end if
	if Session("EPQ30756700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756700")= "0"
	end if
	if Session("EPQ30756750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756750")= "0"
	end if
	if Session("EPQ30756800") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756800")= "0"
	end if
	if Session("EPQ30756850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756850")= "0"
	end if
	if Session("EPQ30756900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756900")= "0"
	end if
	if Session("EPQ30756950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756950")= "0"
	end if
	if Session("EPQ30757000") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757000")= "0"
	end if
	if Session("EPQ30757050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757050")= "0"
	end if

	if Session("EPQ30757150") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757150")= "0"
	end if
	if Session("EPQ30757200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757200")= "0"
	end if
	if Session("EPQ30757250") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757250")= "0"
	end if
	if Session("EPQ30757300") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757300")= "0"
	end if
	if Session("EPQ30757350") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757350")= "0"
	end if
	if Session("EPQ30757400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757400")= "0"
	end if
	if Session("EPQ30757450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757450")= "0"
	end if
	if Session("EPQ30757500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757500")= "0"
	end if
	if Session("EPQ30757550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757550")= "0"
	end if
	if Session("EPQ30757600") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757600")= "0"
	end if
	if Session("EPQ30757650") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757650")= "0"
	end if
	if Session("EPQ30757700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757700")= "0"
	end if
	if Session("EPQ30757750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757750")= "0"
	end if
	if Session("EPQ30757800") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757800")= "0"
	end if
	if Session("EPQ30757850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757850")= "0"
	end if
	if Session("EPQ30757900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757900")= "0"
	end if
	if Session("EPQ30757950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30757950")= "0"
	end if

	if Session("EPQ30756800b") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30756800b")= "0"
	end if
	if Session("EPQ30758050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758050")= "0"
	end if
	if Session("EPQ30758100") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758100")= "0"
	end if
	if Session("EPQ30758150") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758150")= "0"
	end if
	if Session("EPQ30758200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758200")= "0"
	end if
	if Session("EPQ30758250") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758250")= "0"
	end if
	if Session("EPQ30758300") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758300")= "0"
	end if
	if Session("EPQ30758350") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758350")= "0"
	end if
	if Session("EPQ30758400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758400")= "0"
	end if
	if Session("EPQ30758450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758450")= "0"
	end if
	if Session("EPQ30758500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758500")= "0"
	end if
	if Session("EPQ30758550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758550")= "0"
	end if
	if Session("EPQ30758600") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758600")= "0"
	end if
	if Session("EPQ30758650") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758650")= "0"
	end if
	if Session("EPQ30758700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758700")= "0"
	end if
	if Session("EPQ30758750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758750")= "0"
	end if
	if Session("EPQ30758800") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758800")= "0"
	end if
	if Session("EPQ30758850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758850")= "0"
	end if
	if Session("EPQ30758900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758900")= "0"
	end if
	if Session("EPQ30758950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30758950")= "0"
	end if

'TEST2
	if Session("EPQ30759000") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759000")= "0"
	end if
	if Session("EPQ30759050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759050")= "0"
	end if
	if Session("EPQ30759100") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759100")= "0"
	end if
	if Session("EPQ30759150") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759150")= "0"
	end if
	if Session("EPQ30759200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759200")= "0"
	end if
	if Session("EPQ30759250") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759250")= "0"
	end if
	if Session("EPQ30759300") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759300")= "0"
	end if
	if Session("EPQ30759350") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759350")= "0"
	end if
	if Session("EPQ30759400") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759400")= "0"
	end if
	if Session("EPQ30759450") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759450")= "0"
	end if
	if Session("EPQ30759500") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759500")= "0"
	end if
	if Session("EPQ30759550") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759550")= "0"
	end if
	if Session("EPQ30759600") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759600")= "0"
	end if
	if Session("EPQ30759650") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759650")= "0"
	end if
	if Session("EPQ30759700") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759700")= "0"
	end if
	if Session("EPQ30759750") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759750")= "0"
	end if
	if Session("EPQ30759800") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759800")= "0"
	end if
	if Session("EPQ30759850") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759850")= "0"
	end if
	if Session("EPQ30759900") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759900")= "0"
	end if
	if Session("EPQ30759950") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30759950")= "0"
	end if

	if Session("EPQ30760000") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760000")= "0"
	end if
	if Session("EPQ30760050") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760050")= "0"
	end if
	if Session("EPQ30760100") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760100")= "0"
	end if
	if Session("EPQ30760150") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760150")= "0"
	end if
	if Session("EPQ30760200") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760200")= "0"
	end if
	if Session("EPQ30760250") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760250")= "0"
	end if
	if Session("EPQ30760290") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760290")= "0"
	end if

	if Session("EPQ30760300") = "1" then
	Session("PageCounter")=Session("PageCounter")+1
	else
		Session("EPQ30760300")= "0"
	end if


'NEW ONES
if Session("TEMP1EPQ30754550")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30754550")="0"
end if
if Session("TEMP1EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30755800")="0"
end if
if Session("TEMP1EPQ30756000b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756000b")="0"
end if
if Session("TEMP1EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756100b")="0"
end if
if Session("TEMP1EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756100b")="0"
end if
if Session("TEMP1EPQ30756550")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756550")="0"
end if
if Session("TEMP1EPQ30756750")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756750")="0"
end if
if Session("TEMP1EPQ30756800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756800")="0"
end if
if Session("TEMP1EPQ30756950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30756950")="0"
end if
if Session("TEMP1EPQ30757450")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30757450")="0"
end if
if Session("TEMP1EPQ30757600")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30757600")="0"
end if
if Session("TEMP1EPQ30757750")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30757750")="0"
end if
if Session("TEMP1EPQ30758150")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30758150")="0"
end if
if Session("TEMP1EPQ30758200")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30758200")="0"
end if
if Session("TEMP1EPQ30758600")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30758600")="0"
end if
if Session("TEMP1EPQ30758800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30758800")="0"
end if
if Session("TEMP1EPQ30758900")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30758900")="0"
end if
if Session("TEMP1EPQ30759700")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30759700")="0"
end if
if Session("TEMP1EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30759950")="0"
end if
if Session("TEMP1EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP1EPQ30759950")="0"
end if
if Session("TEMP2EPQ30754550")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30754550")="0"
end if
if Session("TEMP2EPQ30755400")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30755400")="0"
end if
if Session("TEMP2EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30756100b")="0"
end if
if Session("TEMP2EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30756100b")="0"
end if
if Session("TEMP2EPQ30756550")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30756550")="0"
end if
if Session("TEMP2EPQ30756750")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30756750")="0"
end if
if Session("TEMP2EPQ30756800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30756800")="0"
end if
if Session("TEMP2EPQ30757250")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30757250")="0"
end if
if Session("TEMP2EPQ30757800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30757800")="0"
end if
if Session("TEMP2EPQ30758650")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30758650")="0"
end if
if Session("TEMP2EPQ30759700")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30759700")="0"
end if
if Session("TEMP2EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30759950")="0"
end if
if Session("TEMP2EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP2EPQ30759950")="0"
end if
if Session("TEMP3EPQ30755400")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30755400")="0"
end if
if Session("TEMP3EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30755800")="0"
end if
if Session("TEMP3EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30756100b")="0"
end if
if Session("TEMP3EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30756100b")="0"
end if
if Session("TEMP3EPQ30756550")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30756550")="0"
end if
if Session("TEMP3EPQ30756750")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30756750")="0"
end if
if Session("TEMP3EPQ30756800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30756800")="0"
end if
if Session("TEMP3EPQ30757250")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30757250")="0"
end if
if Session("TEMP3EPQ30759700")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30759700")="0"
end if
if Session("TEMP3EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30759950")="0"
end if
if Session("TEMP3EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP3EPQ30759950")="0"
end if
if Session("TEMP4EPQ30755300")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30755300")="0"
end if
if Session("TEMP4EPQ30755400")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30755400")="0"
end if
if Session("TEMP4EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30755800")="0"
end if
if Session("TEMP4EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30756100b")="0"
end if
if Session("TEMP4EPQ30756100b")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30756100b")="0"
end if
if Session("TEMP4EPQ30756750")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30756750")="0"
end if
if Session("TEMP4EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30759950")="0"
end if
if Session("TEMP4EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP4EPQ30759950")="0"
end if
if Session("TEMP5EPQ30755300")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30755300")="0"
end if
if Session("TEMP5EPQ30755400")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30755400")="0"
end if
if Session("TEMP5EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30755800")="0"
end if
if Session("TEMP5EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30756100")="0"
end if
if Session("TEMP5EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30756100")="0"
end if
if Session("TEMP5EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30759950")="0"
end if
if Session("TEMP5EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP5EPQ30759950")="0"
end if
if Session("TEMP6EPQ30755300")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30755300")="0"
end if
if Session("TEMP6EPQ30755400")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30755400")="0"
end if
if Session("TEMP6EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30755800")="0"
end if
if Session("TEMP6EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30756100")="0"
end if
if Session("TEMP6EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30756100")="0"
end if
if Session("TEMP6EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP6EPQ30759950")="0"
end if
if Session("TEMP7EPQ30755650")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30755650")="0"
end if
if Session("TEMP7EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30755800")="0"
end if
if Session("TEMP7EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30756100")="0"
end if
if Session("TEMP7EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30756100")="0"
end if
if Session("TEMP7EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30759950")="0"
end if
if Session("TEMP7EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP7EPQ30759950")="0"
end if
if Session("TEMP8EPQ30755600")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP8EPQ30755600")="0"
end if
if Session("TEMP8EPQ30755800")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP8EPQ30755800")="0"
end if
if Session("TEMP8EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP8EPQ30756100")="0"
end if
if Session("TEMP8EPQ30756100")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP8EPQ30756100")="0"
end if
if Session("TEMP8EPQ30759950")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMP8EPQ30759950")="0"
end if
if Session("TEMPEPQ30754300")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30754300")="0"
end if
if Session("TEMPEPQ30754600")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30754600")="0"
end if
if Session("TEMPEPQ30754700")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30754700")="0"
end if
if Session("TEMPEPQ30754900")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30754900")="0"
end if
if Session("TEMPEPQ30758150")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30758150")="0"
end if
if Session("TEMPEPQ30759050")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30759050")="0"
end if
if Session("TEMPEPQ30759200")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30759200")="0"
end if
if Session("TEMPEPQ30759450")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30759450")="0"
end if
if Session("TEMPEPQ30759600")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30759600")="0"
end if
if Session("TEMPEPQ30760250")="1" then
Session("PageCounter")=Session("PageCounter")+1
else
Session("TEMPEPQ30760250")="0"
end if


	if len(Session("EPQ30702160")) = 0 then
		 <!--#include file="questionscomplete.asp"-->
	else
	end if


 If Session("TEMP1EPQ30756000b")="1" OR Session("TEMP3EPQ30756100b")="1"  OR Session("TEMP3EPQ30756100b")="1" then
	Session("Page")="7"
	Response.Redirect "surgicalhistorymaster.asp"
 else
 end if



If Session("Gender")="F" and Session("TEMPEPQ30756050") = "1" then
	Session("Page")="7"
else
	Session("Page")="9"
end if
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"


%>

<?xml version="1.0" encoding="iso-8859-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title><%=Session("PageHolder")%></title>

<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
		<link href="css/ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 7]>
		<link href="css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
<script src="scripts_js/surgicalhistory21.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
	 <!--#include file="functionbox.asp"-->
		-->
</script>


</head>
<body>

 </body>
</html>
