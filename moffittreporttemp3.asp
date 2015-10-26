<%
	strPayload=strPayload&"\ulnone\b\fs24 Non-Cancer Diagnoses2 \ulnone\b0\fs20\ \par "

	strPayload=strPayload&"\ulnone\b\fs24 TRANSITION \ulnone\b0\fs20\ \par "
	if Session("CUTA10401000") = "1" then
		strPayload=strPayload&" \tab Diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10401000") = "2" then
		strPayload=strPayload&" \tab Not diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10401000") = "3" then
		strPayload=strPayload&" \tab Unknown if diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10402000") = "1" then
		strPayload=strPayload&" \tab Photosensitive"&" \par "
	end if
	if Session("CUTA10402000") = "2" then
		strPayload=strPayload&" \tab Not photosensitive"&" \par "
	end if
	if Session("CUTA10402000") = "3" then
		strPayload=strPayload&" \tab Unknown if photosensitive"&" \par "
	end if
	if Session("CUTA10403000") = "1" then

		strPayload=strPayload&" \tab Had an organ transplant"&" \par "
	end if
	if Session("CUTA10403000") = "2" then
		strPayload=strPayload&" \tab Did not have an organ transplant"&" \par "
	end if


	if Session("EPQ30401002") = "1" then
		strPayload=strPayload&" \tab AIDS/HIV"&" \par "
	end if


	if Session("EPQ30401003") = "1" then
		strPayload=strPayload&" \tab Hepatitis"&" \par "
	end if

	if Session("GI10401010") = "1" then
		strPayload=strPayload&" \tab Hepatitis A"&" \par "
	end if
	if Session("GI10401020") = "1" then
		strPayload=strPayload&" \tab Hepatitis B"&" \par "
	end if
	if Session("GI10401030") = "1" then
		strPayload=strPayload&" \tab Hepatitis C"&" \par "
	end if

	if Session("GI10401040") = "1" then
		strPayload=strPayload&" \tab Hepatitis, "&Session("GI10401060_TXT")&" \par "
	end if



	if Session("EPQ30401001") = "1" then
		strPayload=strPayload&" \tab H. pylori"&" \par "
	end if
	if Session("EPQ30401004") = "1" then
		strPayload=strPayload&" \tab "&	Session("EPQ30401000")&" \par "
	end if

	if Session("EPQ30401005") = "1" and Session("EPQ30402160")= "1" then
		strPayload=strPayload&" \tab None reported"&" \par "
	end if

	if Session("EPQ30401006") = "77" then
		strPayload=strPayload&" \tab PT needs help answering previous infections"&" \par "
	end if


'if Session("EPQ30402010")="1" then
'	strPayload=strPayload&"  \tab Stomach, colon, bowels, liver, gallbladder or other part of digestive tract  \par "
'	end if


	if Session("GI10408000") = "1" then
		strPayload=strPayload&" \tab Hemochromatosis \par "
	end if


if Session("EPQ30403010")="1" then
strPayload=strPayload&"  \tab Ulcerative colitis  \par "
end if
if Session("EPQ30403020")="1" then
strPayload=strPayload&"  \tab Ulcer  \par "
end if
if Session("EPQ30403030")="1" then
strPayload=strPayload&"  \tab Reflux  \par "
end if
if Session("EPQ30403040")="1" then
strPayload=strPayload&"  \tab Pancreatitis  \par "
end if

	if Session("GI10402000") = "1" then
		strPayload=strPayload&" \tab Acute Pancreatitis at age "&Session("GI10402010")&"\par "
	end if
	if Session("GI10403000") = "1" then
		strPayload=strPayload&" \tab Chronic Pancreatitis at age "&Session("GI10403010")&"\par "
	end if

	if Session("GI10404000") = "1" then
		strPayload=strPayload&" \tab Pancreatic cyst, lesion, or mass at age "&Session("GI10404010")&"\par "
	end if

	if Session("GI10405000") = "1" then
		strPayload=strPayload&" \tab "&Session("GI10406000_TXT")&" at age "&Session("GI10405010")&"\par "
	end if

if Session("EPQ30403050")="1" then
strPayload=strPayload&"  \tab Adrenal Tumor  \par "
end if
if Session("EPQ30403060")="1" then
strPayload=strPayload&"  \tab Gallbladder disease/gallstones  \par "
end if
if Session("EPQ30403090")="1" then
strPayload=strPayload&"  \tab FAP  \par "
end if
if Session("EPQ30403120")="1" then
strPayload=strPayload&"  \tab Cirrhosis  \par "
end if
if Session("EPQ30403110")="1" then
strPayload=strPayload&"  \tab Juvenile polyposis syndrome  \par "
end if
if Session("EPQ30403130")="1" then
strPayload=strPayload&"  \tab Colon polyps (Age:"&Session("EPQ30404000")&", Total polyps found:"&Session("EPQ30405000")&") \par "
end if
if Session("EPQ30403070")="1" then
strPayload=strPayload&"  \tab IBS  \par "
end if
if Session("EPQ30403080")="1" then
strPayload=strPayload&"  \tab Barrett's esophagus  \par "
end if
if Session("EPQ30403100")="1" then
strPayload=strPayload&"  \tab Diverticulitis/diverticulosis  \par "
end if
if Session("EPQ30403160")="1" then
strPayload=strPayload&"  \tab Hemorrhoids  \par "
end if
if Session("EPQ30403170")="1" then
strPayload=strPayload&"  \tab Hiatal hernia  \par "
end if
if Session("EPQ30403180")="1" then
strPayload=strPayload&"  \tab Fatty liver  \par "
end if

if Session("EPQ30403140")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30406000")&" \par "
end if


if Session("EPQ30407100")="1" then
strPayload=strPayload&"  \tab Diabetes "
if Session("SurveyVersion")="Thoracic" OR Session("SurveyVersion")="GI" then
if len(Session("EPQ30407120") ) >0 then 
strPayload=strPayload&" (Age at onset "&Session("EPQ30407120")&"Y);"
end if
if len(Session("EPQ30407130") ) >0 then 
strPayload=strPayload&" (Onset in "&Session("EPQ30407130")&");"
end if

if Session("EPQ30407150") ="1" then 
strPayload=strPayload&"\par\tab\tab Insulin"
end if
if Session("EPQ30407220") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407270") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407270")&"Y"
end if
if len(Session("EPQ30407230") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407230")&" years"
end if

if Session("EPQ30407140") ="1" then 
strPayload=strPayload&"\par\tab\tab Metformin"
end if
if Session("EPQ30407190") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407280") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407280")&"Y"
end if
if len(Session("EPQ30407200") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407200")&" years"
end if

if Session("EPQ30407160") ="1" then 
strPayload=strPayload&"\par\tab\tab "&Session("EPQ30407170")
end if
if Session("EPQ30407250") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407240") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407240")&"Y"
end if
if len(Session("EPQ30407260") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407260")&" years"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30407110")="1" then
strPayload=strPayload&"  \tab Hashimoto’s thyroiditis  \par "
end if

if Session("EPQ30407030")="1" then
strPayload=strPayload&"  \tab Gestational diabetes  \par "
end if
if Session("EPQ30407040")="1" then
strPayload=strPayload&"  \tab Graves Disease/hyperthyroidism  \par "
end if
if Session("EPQ30407050")="1" then
strPayload=strPayload&"  \tab Hypothyroidism  \par "
end if
if Session("EPQ30407060")="1" then
strPayload=strPayload&"  \tab Goiter  \par "
end if
if Session("EPQ30407070")="1" then
strPayload=strPayload&"  \tab Thyroid mass  \par "
end if
if Session("EPQ30407080")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30407000")&" \par "
end if

'if Session("EPQ30402030")="1" then
'	strPayload=strPayload&"  \tab Gynecological or female part, including uterus, ovaries, vagina, vulva and  cervix  \par "
'	end if

if Session("EPQ30408010")="1" then
strPayload=strPayload&"  \tab Polycystic ovaries or Stein-Leventhal syndrome  \par "
end if
if Session("EPQ30408030")="1" then
strPayload=strPayload&"  \tab Endometriosis  \par "
end if
if Session("EPQ30408050")="1" then
strPayload=strPayload&"  \tab Irregular menstrual bleeding  \par "
end if
if Session("EPQ30408020")="1" then
strPayload=strPayload&"  \tab Ovarian cysts  \par "
end if
if Session("EPQ30408070")="1" then
strPayload=strPayload&"  \tab PID  \par "
end if
if Session("EPQ30408060")="1" then
strPayload=strPayload&"  \tab Benign uterine tumor  \par "
end if
if Session("EPQ30408090")="1" then
strPayload=strPayload&"  \tab Abnormal Pap  \par "
end if
if Session("EPQ30408080")="1" then
strPayload=strPayload&"  \tab Uterine fibroids  \par "
end if
if Session("EPQ30408130")="1" then
strPayload=strPayload&"  \tab Uterine prolapse \par "
end if

if Session("EPQ30408110")="1" then
strPayload=strPayload&"  \tab HPV  \par "
end if
if Session("EPQ30408040")="1" then
strPayload=strPayload&"  \tab Infertility  \par "
end if
if Session("EPQ30408100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30408000") &" \par "
end if
if Session("EPQ30408120")="77" then
strPayload=strPayload&"  \tab PT needs help answering gynecological PMH  \par "
end if

if Session("EPQ30409010")="1" then
strPayload=strPayload&"  \tab Bladder/kidney stones  \par "
end if
if Session("EPQ30409020")="1" then
strPayload=strPayload&"  \tab Abnormal kidney function (creatinine level)  \par "
end if
if Session("EPQ30409030")="1" then
strPayload=strPayload&"  \tab Kidney failure  \par "
end if
if Session("EPQ30409040")="1" then
strPayload=strPayload&"  \tab Hematuria  \par "
end if

if Session("EPQ30409080")="1" then
strPayload=strPayload&"  \tab UTI  \par "
end if
if Session("EPQ30409050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30409000")&" \par "
end if
if Session("EPQ30409090")="1" then
strPayload=strPayload&"  \tab Urinary incontinence \par "
end if
if Session("EPQ30409100")="1" then
strPayload=strPayload&"  \tab Kidney infection (includes pyelonephritis)  \par "
end if

'if Session("EPQ30402060")="1" then
'	strPayload=strPayload&"  \tab Breast or nipple problems  \par "
'	end if
if Session("EPQ30410010")="1" then
strPayload=strPayload&"  \tab Abnormal mammogram, sonogram, ultrasound or breast MRI  \par "
end if
if Session("EPQ30410020")="1" then
strPayload=strPayload&"  \tab Benign breast lump or cyst  \par "
end if
if Session("EPQ30410030")="1" then
strPayload=strPayload&"  \tab Benign fibrocystic breasts or breast changes  \par "
end if
if Session("EPQ30410040")="1" then
strPayload=strPayload&"  \tab DCIS  \par "
end if
if Session("EPQ30410050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30410000")&" \par "
end if
if Session("EPQ30410060")="77" then
strPayload=strPayload&"  \tab PT needs help answering breast PMH  \par "
end if

'if Session("EPQ30402070")="1" then
'	strPayload=strPayload&"  \tab STD  \par "
'	end if
if Session("EPQ30411010")="1" then
strPayload=strPayload&"  \tab HPV  \par "
end if
if Session("EPQ30411020")="1" then
strPayload=strPayload&"  \tab Chlamydia  \par "
end if
if Session("EPQ30411030")="1" then
strPayload=strPayload&"  \tab Herpes  \par "
end if
if Session("EPQ30411040")="1" then
strPayload=strPayload&"  \tab Trichomoniasis  \par "
end if
if Session("EPQ30411050")="1" then
strPayload=strPayload&"  \tab Genital Warts  \par "
end if
if Session("EPQ30411060")="1" then
strPayload=strPayload&"  \tab Gonorrhea  \par "
end if
if Session("EPQ30411070")="1" then
strPayload=strPayload&"  \tab Syphilis  \par "
end if
if Session("EPQ30411100")="1" then
strPayload=strPayload&"  \tab HIV/AIDS \par "
end if

if Session("EPQ30411080")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30411000")&" \par "
end if
if Session("EPQ30411090")="77" then
strPayload=strPayload&"  \tab PT needs help with answering STD PMH  \par "
end if

'if Session("EPQ30402050")="1" then
'	strPayload=strPayload&"  \tab Stroke, migraine headaches, seizures or other problem with your brain or nervous system  \par "
'	end if
if Session("EPQ30412010")="1" then
strPayload=strPayload&"  \tab Migraines   \par "
end if
if Session("EPQ30412020")="1" then
strPayload=strPayload&"  \tab MS   \par "
end if
if Session("EPQ30412030")="1" then
strPayload=strPayload&"  \tab Epilepsy or seizure disorder   \par "
end if
if Session("EPQ30412040")="1" then
strPayload=strPayload&"  \tab Peripheral neuropathy   \par "
end if
if Session("EPQ30412050")="1" then
strPayload=strPayload&"  \tab TIA   \par "
end if
if Session("EPQ30412060")="1" then
strPayload=strPayload&"  \tab Parkinson's   \par "
end if
if Session("EPQ30412070")="1" then
strPayload=strPayload&"  \tab CVA/brain hemorrhage   \par "
end if

dim DementiaSeverity2
if Session("HM10401000")="1" then
DementiaSeverity2="Mild "
end if
if Session("HM10401000")="2" then
DementiaSeverity2="Moderate "
end if
if Session("HM10401000")="3" then
DementiaSeverity2="Severe "
end if


if Session("EPQ30412090")="1" then
strPayload=strPayload&"  \tab "&DementiaSeverity2&"Dementia including Alzheimer's   \par "
end if
if Session("EPQ30412120")="1" then
strPayload=strPayload&"  \tab Headaches other than migraine   \par "
end if
if Session("EPQ30412130")="1" then
strPayload=strPayload&"  \tab Benign brain tumor   \par "
end if

if Session("EPQ30412100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30412000")&"  \par "
end if


'if Session("EPQ30402040")="1" then
'	strPayload=strPayload&"  \tab Arthritis or immune system  \par "
'	end if
if Session("EPQ30413010")="1" then
strPayload=strPayload&"  \tab Osteoarthritis   \par "
end if
if Session("EPQ30413020")="1" then
strPayload=strPayload&"  \tab SLE   \par "
end if
if Session("EPQ30413030")="1" then
strPayload=strPayload&"  \tab Scleroderma   \par "
end if
if Session("EPQ30413040")="1" then
strPayload=strPayload&"  \tab JRA   \par "
end if
if Session("EPQ30413050")="1" then
strPayload=strPayload&"  \tab Ankylosing Spondylitis   \par "
end if
if Session("EPQ30413060")="1" then
strPayload=strPayload&"  \tab Polymyalgia rheumatica   \par "
end if
if Session("EPQ30413080")="1" then
strPayload=strPayload&"  \tab Fibromyalgia   \par "
end if
if Session("EPQ30413090")="1" then
strPayload=strPayload&"  \tab Rheumatoid arthritis   \par "
end if
if Session("EPQ30413120")="1" then
strPayload=strPayload&"  \tab Gout   \par "
end if
if Session("EPQ30413130")="1" then
strPayload=strPayload&"  \tab Arthritis, Other or unknown   \par "
end if

if Session("EPQ30413070")="1" then
strPayload=strPayload&"  \tab Hip/joint replacement   \par "
end if
if Session("EPQ30413100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30413000")&"  \par "
end if

if Session("EPQ304130010")="1" then
strPayload=strPayload&"  \tab Prostatitis   \par "
end if
if Session("EPQ304130020")="1" then
strPayload=strPayload&"  \tab Enlarged prostate or BPH  \par "
end if
if Session("EPQ304130030")="1" then
strPayload=strPayload&"  \tab Needed prostate biopsy  \par "
end if
if Session("EPQ304130040")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ304130000")&" \par "
end if
if Session("EPQ304140000")="1" then
strPayload=strPayload&"  \tab Normal PSA \par "
end if
if Session("EPQ304140000")="2" then
strPayload=strPayload&"  \tab Abnormal PSA \par "
end if
if Session("EPQ304140000")="3" then
strPayload=strPayload&"  \tab PT unsure about PSA results \par "
end if



if Session("EPQ30414010")="1" then
strPayload=strPayload&"  \tab Depression   \par "
end if
if Session("EPQ30414020")="1" then
strPayload=strPayload&"  \tab Bipolar   \par "
end if
if Session("EPQ30414050")="1" then
strPayload=strPayload&"  \tab "&DementiaSeverity&"Dementia   \par "
end if
if Session("EPQ30414040")="1" then
strPayload=strPayload&"  \tab OCD   \par "
end if
if Session("EPQ30414070")="1" then
strPayload=strPayload&"  \tab ADD/ADHD   \par "
end if
if Session("EPQ30414090")="1" then
strPayload=strPayload&"  \tab Schizophrenia   \par "
end if
if Session("EPQ30414100")="1" then
strPayload=strPayload&"  \tab Post-Traumatic Stress Disorder \par "
end if

if Session("EPQ30414030")="1" then
strPayload=strPayload&"  \tab Anxiety   \par "
end if
if Session("EPQ30414060")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30414000")&" \par "
end if
if Session("EPQ30414080")="77" then
strPayload=strPayload&"  \tab PT needs help answering psychological PMH   \par "
end if

'if Session("EPQ30402130")="1" then
'	strPayload=strPayload&"  \tab Lungs or other breathing problems  \par "
'	end if
if Session("EPQ30415010")="1" then
strPayload=strPayload&"  \tab Pulmonary embolism   \par "
end if
if Session("EPQ30415120")="1" then
strPayload=strPayload&"  \tab COPD "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30119000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30119000")&"Y)"
end if
if len(Session("THRC30120000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30120000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415130")="1" then
strPayload=strPayload&"  \tab Asbestosis   \par "
end if
if Session("EPQ30415140")="1" then
strPayload=strPayload&"  \tab Plural Effusion   \par "
end if

if Session("EPQ30415020")="1" then
strPayload=strPayload&"  \tab TB   \par "
end if

if Session("EPQ30415080")="1" then
strPayload=strPayload&"  \tab Asthma "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30117000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30117000")&"Y)"
end if
if len(Session("THRC30118000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30118000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415070")="1" then
strPayload=strPayload&"  \tab Emphysema "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30121000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30121000")&"Y)"
end if

if len(Session("THRC30122000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30122000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415100")="1" then
strPayload=strPayload&"  \tab Chronic bronchitis "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30123000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30123000")&"Y)"
end if
if len(Session("THRC30124000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30124000")&")"
end if
end if
strPayload=strPayload&" \par "

end if
if Session("EPQ30415030")="1" then
strPayload=strPayload&"  \tab Pleurisy   \par "
end if



if Session("EPQ30415040")="1" then
strPayload=strPayload&"  \tab Pneumonia "
if Session("SurveyVersion")<> "Thoracic" then
strPayload=strPayload&" \par "
end if
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30125000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30125000")&"Y)"
end if
if len(Session("THRC30126000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30126000")&")"
end if
if Session("THRC30127000") ="1" then 
strPayload=strPayload&"; 1 time"
end if
if Session("THRC30127000") ="2" then 
strPayload=strPayload&"; 2 times"
end if
if Session("THRC30127000") ="3" then 
strPayload=strPayload&"; 3 times"
end if
if Session("THRC30127000") ="4" then 
strPayload=strPayload&"; 4 times"
end if
if Session("THRC30127000") ="5" then 
strPayload=strPayload&"; 5 or more times"
end if
if Session("THRC30127000") ="6" then 
strPayload=strPayload&"; unknown times"
end if
strPayload=strPayload&" \par "
end if
end if




if Session("EPQ30415050")="1" then
strPayload=strPayload&"  \tab Sleep apnea   \par "
end if
if Session("EPQ30415060")="1" then
strPayload=strPayload&"  \tab Sarcoidosis   \par "
end if
if Session("EPQ30415090")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30415000")&" \par "
end if
if Session("EPQ30415110")="1" then
strPayload=strPayload&"  \tab PT needs help answering pulmonary PMH   \par "
end if

if Session("EPQ30416010")="1" then
strPayload=strPayload&"  \tab Angina   \par "
end if
if Session("EPQ30416020")="1" then
strPayload=strPayload&"  \tab Elevated cholesterol/triglycerides   \par "
end if
if Session("EPQ30416030")="1" then
strPayload=strPayload&"  \tab HTN   \par "
end if
if Session("EPQ30416040")="1" then
strPayload=strPayload&"  \tab Deep vein thrombosis   \par "
end if
if Session("EPQ30416050")="1" then
strPayload=strPayload&"  \tab Arrhythmia   \par "
end if
if Session("EPQ30416060")="1" then
strPayload=strPayload&"  \tab MI   \par "
end if
if Session("EPQ30416090")="1" then
strPayload=strPayload&"  \tab Heart murmur   \par "
end if
if Session("EPQ30416070")="1" then
strPayload=strPayload&"  \tab Atrial fibrillation  \par "
end if
if Session("EPQ30416080")="1" then
strPayload=strPayload&"  \tab MVP   \par "
end if
if Session("EPQ30416110")="1" then
strPayload=strPayload&"  \tab Hypotension   \par "
end if
if Session("EPQ30416100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30416000")&" \par "
end if
'PLURAL EFFUSION
if Session("EPQ30416130")="1" then
strPayload=strPayload&"  \tab Coronary Artery Disease or athersclerosis \par "
end if

'if Session("EPQ30402140")="1" then
'	strPayload=strPayload&"  \tab Bleeding, clotting or other blood problems  \par "
'	end if
if Session("EPQ30417010")="1" then
strPayload=strPayload&"  \tab Polycythemia vera   \par "
end if
if Session("EPQ30417020")="1" then
strPayload=strPayload&"  \tab Blood transfusion   \par "
end if
if Session("EPQ30417030")="1" then
strPayload=strPayload&"  \tab Anemia   \par "
end if
if Session("EPQ30417050")="1" then
strPayload=strPayload&"  \tab Sickle cell   \par "
end if
if Session("EPQ30417070")="1" then
strPayload=strPayload&"  \tab Varicose Veins   \par "
end if
if Session("EPQ30417080")="1" then
strPayload=strPayload&"  \tab Low platelets or any thrombocytopenia  \par "
end if
if Session("EPQ30417090")="1" then
strPayload=strPayload&"  \tab Blood clots (includes PE or DVT)  \par "
end if

if Session("EPQ30417040")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30417000")&" \par "
end if
if Session("EPQ30417060")="77" then
strPayload=strPayload&"  \tab PT needs help answering circulatory PMH   \par "
end if


'if Session("EPQ30402080")="1" then
'	strPayload=strPayload&"  \tab Skin or mole related problems  \par "
'	end if
if Session("EPQ30418010")="1" then
strPayload=strPayload&"  \tab Vitiligo   \par "
end if
if Session("EPQ30418020")="1" then
strPayload=strPayload&"  \tab Dysplastic nevus syndrome   \par "
end if
if Session("EPQ30418030")="1" then
strPayload=strPayload&"  \tab Psoriasis   \par "
end if
if Session("EPQ30418040")="1" then
strPayload=strPayload&"  \tab Chronic or recurring skin condition   \par "
end if
if Session("EPQ30418050")="1" then
strPayload=strPayload&"  \tab Eczema "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30128000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30128000")&"Y)"
end if
if len(Session("THRC30129000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30129000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30418080")="1" then
strPayload=strPayload&"  \tab Precancerous mole  \par "
end if
if Session("EPQ30418090")="1" then
strPayload=strPayload&"  \tab Actinic keratosis (AK) \par "
end if
if Session("EPQ30418100")="1" then
strPayload=strPayload&"  \tab Basal or Squamous skin cancer \par "
end if
if Session("EPQ30418110")="1" then
strPayload=strPayload&"  \tab Acne or rosacea \par "
end if

if Session("EPQ30418060")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30418000")&" \par "
end if
if Session("EPQ30418070")="77" then
strPayload=strPayload&"  \tab PT needs help answering skin PMH   \par "
end if

if Session("EPQ30422010")="1" then
strPayload=strPayload&"  \tab Chronic or recurring sinusitis (longer than 8 weeks or more than 4 times per year)  \par "
end if
if Session("EPQ30422020")="1" then
strPayload=strPayload&"  \tab Environmental allergies (such as to pollen, mold or animals)  \par "
end if
if Session("EPQ30422070")="1" then
strPayload=strPayload&"  \tab Food or medical allergies  \par "
end if
if Session("EPQ30422040")="1" then
strPayload=strPayload&"  \tab Nasal polyps   \par "
end if
if Session("EPQ30422030")="1" then
strPayload=strPayload&"  \tab Hay fever or allergic rhinitis "

if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30130000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30130000")&"Y)"
end if
if len(Session("THRC30131000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30131000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30422050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30422060")&" \par "
end if


if Session("EPQ30419000")="1" then
strPayload=strPayload&"  \tab Mole or freckle removed   \par "
end if


'if Session("EPQ30402090")="1" then
'	strPayload=strPayload&"  \tab Kidneys, bladder or urinary tract  \par "
'	end if

'if Session("EPQ30402100")="1" then
'	strPayload=strPayload&"  \tab Psychiatric (mental health) problems, anxiety  \par "
'	end if
'if Session("EPQ30402110")="1" then
'	strPayload=strPayload&"  \tab Prostate problems  \par "
'	end if
'if Session("EPQ30402120")="1" then
'	strPayload=strPayload&"  \tab Heart problems or high blood pressure  \par "
'	end if


if Session("EPQ30402150")="1" then
	strPayload=strPayload&"  \tab Other PMH Problems  \par "

	if len(Session("EPQ30421000"))>0 then
	strPayloadbuild=Session("EPQ30421000")
	FormatStringforSummary4 (strPayloadbuild)
	strPayload=strPayload&"  \tab "&strpayload2&" \par "
	strPayloadbuild=""
	end if
end if


'TRANSITION POINT
'Review of Systems
strPayload=strPayload&" \ul\b\fs24\par Review of Systems (ROS) - past 3 months \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab General \tab\tab "
strpayload2=""
if Session("EPQ30501000")="1" then
strPayload2=strPayload2&", Gain of 10 or more pounds"
end if
if Session("EPQ30501000")="2" then
strPayload2=strPayload2&", Loss of 10 or more pounds"
end if
if Session("EPQ30501000")="3" then
strPayload2=strPayload2&", Denies gain or loss of weight"
end if
if Session("EPQ30502010")="1" then
strPayload2=strPayload2&", Intentional"
end if
if Session("EPQ30502020")="1" then
strPayload2=strPayload2&", Intentional"
end if
if Session("EPQ30502010")="2" then
strPayload2=strPayload2&", Unexplained"
end if

if Session("EPQ30502020")="2" then
strPayload2=strPayload2&", Unexplained"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Constitutional \tab\tab "
strpayload2=""
if Session("EPQ30506010") = "1" then
strPayload2=strPayload2&", Fever"
end if
if Session("EPQ30506020") = "1" then
strPayload2=strPayload2&", Poor appetite"
end if
if Session("EPQ30506030") = "1" then
strPayload2=strPayload2&", Increased appetite"
end if
if Session("EPQ30506040") = "1" then
strPayload2=strPayload2&", Sleeps poorly"
end if
if Session("EPQ30506050") = "1" then
strPayload2=strPayload2&", Excessive night sweats"
end if
if Session("EPQ30506060") = "1" then
strPayload2=strPayload2&", Unusual fatigue"
end if
if Session("EPQ30506070") = "1" then
strPayload2=strPayload2&", Chills"
end if
if Session("EPQ30506090") = "1" then
strPayload2=strPayload2&", Pain"
strPayload2=strPayload2&" ("
end if

strPayload3=""
if Session("EPQ30506510") = "1" then
strPayload3=strPayload3&", Cancer"
end if
if Session("EPQ30506520") = "1" then
strPayload3=strPayload3&", Injury"
end if
if Session("EPQ30506530") = "1" then
strPayload3=strPayload3&", Something Else"
end if
strpayload3 = Right(strpayload3, Len(strpayload3)-2)


strpayload2=strpayload2&strpayload3&""

if Session("EPQ30506090") = "1" then
strPayload2=strPayload2&")"
end if

if Session("EPQ30506080") = "1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

'MARKER
'MARKER

strPayload=strPayload&" \ulnone\b0\fs20\tab Eye \tab\tab\tab "
strpayload2=""
if Session("EPQ30505000") = "1" then
strPayload2=strPayload2&", Uses glasses/contacts"
end if
if Session("EPQ30505000") = "0" then
strPayload2=strPayload2&", No glasses/contacts"
end if
if Session("EPQ30517010")="1" then
strPayload2=strPayload2&", Change in vision"
end if
if Session("EPQ30517020")="1" then
strPayload2=strPayload2&", Pain in eyes"
end if
if Session("EPQ30517030")="1" then
strPayload2=strPayload2&", Eye injury"
end if
if Session("EPQ30517040")="1" then
strPayload2=strPayload2&", Double vision"
end if
if Session("EPQ30517050")="1" then
strPayload2=strPayload2&", Blurred vision"
end if
if Session("EPQ30517060")="1" then
strPayload2=strPayload2&", Redness"
end if
if Session("EPQ30517070")="1" then
strPayload2=strPayload2&", Excessive tearing/watery eyes"
end if
if Session("EPQ30517080")="1" then
strPayload2=strPayload2&", Dry eyes"
end if
if Session("EPQ30517090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30517000")
end if
if Session("EPQ30517100")="1" then
strPayload2=strPayload2&", Denies "
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Skin \tab\tab\tab "
strpayload2=""

if Session("EPQ30507010")="1" then
strPayload2=strPayload2&", Change in skin color"
end if
if Session("EPQ30507020")="1" then
strPayload2=strPayload2&", A sore that does not heal"
end if
if Session("EPQ30507030")="1" then
strPayload2=strPayload2&", Mole that looks different than others"
end if
if Session("EPQ30507040")="1" then
strPayload2=strPayload2&", New mole after age 40"
end if
if Session("EPQ30507050")="1" then
strPayload2=strPayload2&", Mole/ freckle that burns/itches"
end if
if Session("EPQ30507060")="1" then
strPayload2=strPayload2&", Change in mole or freckle"
end if
if Session("EPQ30507070")="1" then
strPayload2=strPayload2&", Lump/ growth on skin"
end if
if Session("EPQ30507080")="1" then
strPayload2=strPayload2&", Easy bruising"
end if
if Session("EPQ30507090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30507000")
end if
if Session("EPQ30507100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Breast \tab\tab\tab "
strpayload2=""
if Session("EPQ30508010")="1" then
strPayload2=strPayload2&", A new lump/breast mass"
end if
if Session("EPQ30508020")="1" then
strPayload2=strPayload2&", Changes in existing lump or breast mass"
end if
if Session("EPQ30508030")="1" then
strPayload2=strPayload2&", Lump in armpit or under arm"
end if
if Session("EPQ30508040")="1" then
strPayload2=strPayload2&", Fibrocystic changes"
end if
if Session("EPQ30508050")="1" then
strPayload2=strPayload2&", Nipple inversion"
end if
if Session("EPQ30508060")="1" then
strPayload2=strPayload2&", Skin redness"
end if
if Session("EPQ30508070")="1" then
strPayload2=strPayload2&", Skin dimpling"
end if
if Session("EPQ30508080")="1" then
strPayload2=strPayload2&", Breast pain/discomfort"
end if
if Session("EPQ30508090")="1" then
strPayload2=strPayload2&", Nipple discharge"
end if
if Session("EPQ30511000")="1" then
strPayload2=strPayload2&", ( > 1x per day"
end if
if Session("EPQ30511000")="2" then
strPayload2=strPayload2&", (1x per day"
end if
if Session("EPQ30511000")="3" then
strPayload2=strPayload2&", (Several X per day"
end if
if Session("EPQ30511000")="4" then
strPayload2=strPayload2&", (Constant discharge"
end if
if Session("EPQ30511000")="77" then
strPayload2=strPayload2&", (PT needs help with nipple discharge Hx"
end if
if Session("EPQ30512000")="1" then
strPayload2=strPayload2&", Upon compression"
end if
if Session("EPQ30512000")="2" then
strPayload2=strPayload2&", Spontaneously"
end if
if Session("EPQ30512000")="3" then
strPayload2=strPayload2&", Upon compression and spontaneously"
end if
if Session("EPQ30512000")="77" then
strPayload2=strPayload2&", PT needs help with nipple discharge Hx"
end if
if Session("EPQ30513000")="1" then
strPayload2=strPayload2&", Clear)"
end if
if Session("EPQ30513000")="2" then
strPayload2=strPayload2&", Milky)"
end if
if Session("EPQ30513000")="3" then
strPayload2=strPayload2&", Bloody)"
end if
if Session("EPQ30513000")="4" then
strPayload2=strPayload2&", "&Session("EPQ30513000specify")&")"
end if
if Session("EPQ30513000")="77" then
strPayload2=strPayload2&", PT needs help with nipple discharge Hx)"
end if
if Session("EPQ30508100")="1" then
strPayload2=strPayload2&", Abnormal mammogram"
end if
if Session("EPQ30508110")="1" then
strPayload2=strPayload2&", "&Session("EPQ30508000")
end if


if Session("EPQ30509000")="1" then
strPayload2=strPayload2&", Breast pain (1/10) "
end if
if Session("EPQ30509000")="2" then
strPayload2=strPayload2&", Breast pain (2/10) "
end if
if Session("EPQ30509000")="3" then
strPayload2=strPayload2&", Breast pain (3/10) "
end if
if Session("EPQ30509000")="4" then
strPayload2=strPayload2&", Breast pain (4/10) "
end if
if Session("EPQ30509000")="5" then
strPayload2=strPayload2&", Breast pain (5/10) "
end if
if Session("EPQ30509000")="6" then
strPayload2=strPayload2&", Breast pain (6/10) "
end if
if Session("EPQ30509000")="7" then
strPayload2=strPayload2&", Breast pain (7/10) "
end if
if Session("EPQ30509000")="8" then
strPayload2=strPayload2&", Breast pain (8/10) "
end if
if Session("EPQ30509000")="9" then
strPayload2=strPayload2&", Breast pain (9/10) "
end if
if Session("EPQ30509000")="10" then
strPayload2=strPayload2&", Breast pain (10/10) "
end if
if Session("EPQ30510000")="1" then
strPayload2=strPayload2&", 3 - 7 days before my period starts"
end if
if Session("EPQ30510000")="2" then
strPayload2=strPayload2&", On the same day period starts"
end if
if Session("EPQ30510000")="3" then
strPayload2=strPayload2&", Constant breast pain"
end if
if Session("EPQ30510000")="4" then
strPayload2=strPayload2&", Pain occurs with no pattern"
end if
if Session("EPQ30510000")="5" then
strPayload2=strPayload2&", "&Session("EPQ30510000specify")
end if
if Session("EPQ30510000")="77" then
strPayload2=strPayload2&", PT needs help with breast pain symptoms "
end if

if Session("EPQ30508120")="1" then
strPayload2=strPayload2&", Denies "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Ear \tab\tab\tab "
strpayload2=""

if Session("EPQ30514010")="1" then
strPayload2=strPayload2&", Difficulty hearing"
end if
if Session("EPQ30514020")="1" then
strPayload2=strPayload2&", Discharge from ears"
end if
if Session("EPQ30514030")="1" then
strPayload2=strPayload2&", Vertigo"
end if
if Session("EPQ30514040")="1" then
strPayload2=strPayload2&", Earaches"
end if
if Session("EPQ30514050")="1" then
strPayload2=strPayload2&", Tinnitus"
end if
if Session("EPQ30514060")="1" then
strPayload2=strPayload2&", Light headedness/dizziness"
end if
if Session("EPQ30514070")="1" then
strPayload2=strPayload2&", Requires use of hearing aid"
end if
if Session("EPQ30514080")="1" then
strPayload2=strPayload2&", Difficulty maintaining balance"
end if
if Session("EPQ30514090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30514000")
end if
if Session("EPQ30514100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)

FormatStringforSummary (strpayload2)

strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Nervous System \tab "
strpayload2=""
if Session("EPQ30515010")="1" then
strPayload2=strPayload2&", Frequent or severe headaches"
end if
if Session("EPQ30515020")="1" then
strPayload2=strPayload2&", Dizziness or faintness"
end if
if Session("EPQ30515030")="1" then
strPayload2=strPayload2&", Loss of consciousness"
end if
if Session("EPQ30515040")="1" then
strPayload2=strPayload2&", Numbness or tingling of hands/feet"
end if

'RIGHTHERE
if Session("HM10508000")="1" OR Session("HM10508000")="2" then
dim NumbnessSpecifics2
NumbnessSpecifics2=" ("
if Session("HM10509000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&"Mild symptoms"
end if
if Session("HM10509000")="2" then
NumbnessSpecifics2=NumbnessSpecifics2&"Moderate symptoms"
end if
if Session("HM10509000")="3" then
NumbnessSpecifics2=NumbnessSpecifics2&"Severe symptoms"
end if

if Session("HM10508000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&" before cancer diagnosis due to"
end if
if Session("HM10508000")="2" then
NumbnessSpecifics2=NumbnessSpecifics2&" since cancer diagnosis due to"
end if

if Session("HM10510000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&" Amyloidosis,"
end if
if Session("HM10511000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&" Diabetes,"
end if
if Session("HM10512000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&" My cancer treatment,"
end if
if Session("HM10514000")="88" then
NumbnessSpecifics2=NumbnessSpecifics2&" unknown reason,"
end if
if Session("HM10513000")="1" then
NumbnessSpecifics2=NumbnessSpecifics2&" "&Session("HM10515000")&","
end if
NumbnessSpecifics2 = left(NumbnessSpecifics2, Len(NumbnessSpecifics2) - 1)
NumbnessSpecifics2=NumbnessSpecifics2&")"
strPayload2=strPayload2&NumbnessSpecifics2
end if

if Session("EPQ30515050")="1" then
strPayload2=strPayload2&", Memory loss"
end if

if Session("HM10502000")="1" OR Session("HM10503000")="1"  OR Session("HM10504000")="1"  OR Session("HM10505000")="1"  OR Session("HM10506000")="1"  OR Session("HM10516000")="1" then
dim MemoryLossSpecifics2
MemoryLossSpecifics2=" ("
if Session("HM10502000")="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&"Difficulty concentrating, "
end if
if Session("HM10503000")="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&"Difficulty remembering, "
end if
if Session("HM10504000")="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&"Difficulty finding words, "
end if
if Session("HM10505000")="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&"Difficulty in recognizing people, "
end if
if Session("HM10506000")="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&"Difficulty with sense of direction, "
end if
if len(Session("HM10516000"))>="1" then
MemoryLossSpecifics2=MemoryLossSpecifics2&""&Session("HM10517000")&", "
end if
MemoryLossSpecifics2 = left(MemoryLossSpecifics2, Len(MemoryLossSpecifics2) - 2)
MemoryLossSpecifics2=MemoryLossSpecifics2&")"
strPayload2=strPayload2&MemoryLossSpecifics2
end if



if Session("EPQ30515060")="1" then
strPayload2=strPayload2&", Weakness or change in sensation in arm/leg"
end if
if Session("EPQ30515070")="1" then
strPayload2=strPayload2&", Clumsiness of hands or feet"
end if
if Session("EPQ30515080")="1" then
strPayload2=strPayload2&", Tremors/seizures/convulsions"
end if
if Session("EPQ30515090")="1" then
strPayload2=strPayload2&", Difficulty talking"
end if
if Session("EPQ30515100")="1" then
strPayload2=strPayload2&", "&Session("EPQ30515000")
end if
if Session("EPQ30515110")="1" then
strPayload2=strPayload2&", Denies "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)

FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Psychiatric \tab\tab "
strpayload2=""
if Session("EPQ30516010")="1" then
strPayload2=strPayload2&", Mood swings"
end if
if Session("EPQ30516020")="1" then
strPayload2=strPayload2&", Sad, low, down or depressed mood"
end if
if Session("EPQ30516030")="1" then
strPayload2=strPayload2&", Anxiety"
end if
if Session("EPQ30516040")="1" then
strPayload2=strPayload2&", "&Session("EPQ30516000")
end if
if Session("EPQ30516050")="1" then
strPayload2=strPayload2&", Confusion"
end if
if Session("EPQ30516070")="1" then
strPayload2=strPayload2&", Sleeping difficulties/Insomnia"
end if
if Session("EPQ30516100")="1" then
strPayload2=strPayload2&", Receiving Therapy"
end if
if Session("EPQ30516100")="2" then
strPayload2=strPayload2&", Not Receiving Therapy"
end if
if Session("EPQ30516060")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Mouth/Nose/Throat \tab "
strpayload2=""

if Session("EPQ30518010")="1" then
strPayload2=strPayload2&", Mouth sore that doesn't heal"
end if
if Session("EPQ30518020")="1" then
strPayload2=strPayload2&", Lump or thickening in mouth"
end if
if Session("EPQ30518030")="1" then
strPayload2=strPayload2&", Red or white patch in mouth"
end if
if Session("EPQ30518040")="1" then
strPayload2=strPayload2&", Dysphagia"
end if
if Session("EPQ30518050")="1" then
strPayload2=strPayload2&", Frequent sneezing"
end if
if Session("EPQ30518060")="1" then
strPayload2=strPayload2&", Frequent sore throats"
end if
if Session("EPQ30518070")="1" then
strPayload2=strPayload2&", Persistent hoarseness"
end if
if Session("EPQ30518080")="1" then
strPayload2=strPayload2&", Sinus problems"
end if
if Session("EPQ30518090")="1" then
strPayload2=strPayload2&", Dental problems"
end if
if Session("EPQ30518100")="1" then
strPayload2=strPayload2&", Nose continually stuffy/runny"
end if
if Session("EPQ30518110")="1" then
strPayload2=strPayload2&", Cold sores"
end if
if Session("EPQ30518140")="1" then
strPayload2=strPayload2&", Dry mouth"
end if

if Session("EPQ30518120")="1" then
strPayload2=strPayload2&", "&Session("EPQ30518000")
end if
if Session("EPQ30518130")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Cardiovascular \tab\tab "
strpayload2=""

if Session("EPQ30519010")="1" then
strPayload2=strPayload2&", Angina"
end if
if Session("EPQ30519020")="1" then
strPayload2=strPayload2&", Heart murmurs"
end if
if Session("EPQ30519030")="1" then
strPayload2=strPayload2&", Arrhythmia"
end if
if Session("EPQ30519040")="1" then
strPayload2=strPayload2&", Swelling of feet/legs/ankles"
end if
if Session("EPQ30519050")="1" then
strPayload2=strPayload2&", Fainting"
end if
if Session("EPQ30519060")="1" then
strPayload2=strPayload2&", Phlebitis"
end if
if Session("EPQ30519070")="1" then
strPayload2=strPayload2&", Dyspnea at night/in bed"
end if
if Session("EPQ30519080")="1" then
strPayload2=strPayload2&", Calf cramps after walking a short distance"
end if
if Session("EPQ30519090")="1" then
strPayload2=strPayload2&", Rheumatic fever"
end if
if Session("EPQ30519100")="1" then
strPayload2=strPayload2&", History of blood clots"
end if
if Session("EPQ30519110")="1" then
strPayload2=strPayload2&", HTN"
end if
if Session("EPQ30519120")="1" then
strPayload2=strPayload2&", Heart disease"
end if
if Session("EPQ30519130")="1" then
strPayload2=strPayload2&", Tachycardia"
end if
if Session("EPQ30519140")="1" then
strPayload2=strPayload2&", "&Session("EPQ30519000")
end if
if Session("EPQ30519150")="1" then
strPayload2=strPayload2&", Hypotension"
end if
if Session("EPQ30519160")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Respiratory \tab\tab "
strpayload2=""
if Session("EPQ30520010")="1" then
strPayload2=strPayload2&", Cough"
end if
if Session("EPQ30520020")="1" then
strPayload2=strPayload2&", Dyspnea"
end if
if Session("EPQ30520030")="1" then
strPayload2=strPayload2&", Blood in sputum"
end if
if Session("EPQ30520040")="1" then
strPayload2=strPayload2&", Wheezing/Asthma"
end if
if Session("EPQ30520050")="1" then
strPayload2=strPayload2&", Respiratory infection or pneumonia"
end if
if Session("EPQ30520060")="1" then
strPayload2=strPayload2&", TB or exposure to someone with TB"
end if
if Session("EPQ30520070")="1" then
strPayload2=strPayload2&", "&Session("EPQ30520000")
end if
if Session("EPQ30520080")="1" then
strPayload2=strPayload2&", Use of oxygen"
end if
if Session("EPQ30520090")="1" then
strPayload2=strPayload2&", Denies"
end if
if Session("EPQ30520100")="1" then
strPayload2=strPayload2&", Chest pain/discomfort upon breathing"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Genitourinary \tab\tab "
strpayload2=""

if Session("EPQ30521010")="1" then
strPayload2=strPayload2&", Kidney stones"
end if
if Session("EPQ30521020")="1" then
strPayload2=strPayload2&", Hematuria"
end if
if Session("EPQ30521030")="1" then
strPayload2=strPayload2&", Dysuria"
end if
if Session("EPQ30521040")="1" then
strPayload2=strPayload2&", Incontinence"
end if
if Session("EPQ30521050")="1" then
strPayload2=strPayload2&", Sensation of not emptying bladder completely"
end if
if Session("EPQ30521060")="1" then
strPayload2=strPayload2&", UTI"
end if
if Session("EPQ30521070")="1" then
strPayload2=strPayload2&", Testicular pain"
end if
if Session("EPQ30521080")="1" then
strPayload2=strPayload2&", Mass or bulge inside scrotum"
end if
if Session("EPQ30521090")="1" then
strPayload2=strPayload2&", Darkening of urine"
end if
if Session("EPQ30521100")="1" then
strPayload2=strPayload2&", Frequent urination"
end if
if Session("EPQ30521110")="1" then
strPayload2=strPayload2&", Getting up more than once a night to urinate"
end if
if Session("EPQ30521120")="1" then
strPayload2=strPayload2&", Difficulty starting urine stream"
end if
if Session("EPQ30521130")="1" then
strPayload2=strPayload2&", Impotence"
end if
if Session("EPQ30521140")="1" then
strPayload2=strPayload2&" , Loss of libido"
end if
if Session("EPQ30521150")="1" then
strPayload2=strPayload2&", Discharge from the penis"
end if
if Session("EPQ30521160")="1" then
strPayload2=strPayload2&", Blood clots in urine"
end if
if Session("EPQ30521170")="1" then
strPayload2=strPayload2&", Foul smelling urine"
end if
if Session("EPQ30521180")="1" then
strPayload2=strPayload2&", Difficulty emptying bladder"
end if
if Session("EPQ30521190")="1" then
strPayload2=strPayload2&", "&Session("EPQ30521000")
end if
if Session("EPQ30521200")="1" then
strPayload2=strPayload2&", Denies "
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Gastrointestinal \tab\tab "
strpayload2=""

if Session("EPQ30522010")="1" then
strPayload2=strPayload2&", Nausea"
end if
if Session("EPQ30523000")="1" then
strPayload2=strPayload2&", (Rarely nauseous"
end if
if Session("EPQ30523000")="2" then
strPayload2=strPayload2&", (Occasionally nauseous"
end if
if Session("EPQ30523000")="3" then
strPayload2=strPayload2&", (Frequent nausea"
end if
if Session("EPQ30523000")="4" then
strPayload2=strPayload2&", (Almost constantly nauseous"
end if
if Session("EPQ30524000")="1" then
strPayload2=strPayload2&", Slight severity)"
end if
if Session("EPQ30524000")="2" then
strPayload2=strPayload2&", Moderate severity)"
end if
if Session("EPQ30524000")="3" then
strPayload2=strPayload2&", Severe severity)"
end if
if Session("EPQ30524000")="4" then
strPayload2=strPayload2&" , Very severe severity)"
end if
if Session("EPQ30522020")="1" then
strPayload2=strPayload2&", Jaundice"
end if
if Session("EPQ30522030")="1" then
strPayload2=strPayload2&", Vomiting"
end if
if Session("EPQ30522040")="1" then
strPayload2=strPayload2&", Change in bowel habits"
end if
if Session("EPQ30522050")="1" then
strPayload2=strPayload2&", Vomiting blood"
end if
if Session("EPQ30522060")="1" then

end if
if Session("EPQ30522070")="1" then
strPayload2=strPayload2&", Pain during bowel movement"
end if
if Session("EPQ30522080")="1" then
strPayload2=strPayload2&", Ulcers"
end if
if Session("EPQ30522090")="1" then
strPayload2=strPayload2&", Abdominal pain or pressure"
end if
if Session("EPQ30522100")="1" then
strPayload2=strPayload2&", Frequent heartburn and indigestion"
end if
if Session("EPQ30522110")="1" then
strPayload2=strPayload2&", Rectal pain"
end if
if Session("EPQ30522120")="1" then
strPayload2=strPayload2&", Early satiety"
end if
if Session("EPQ30522130")="1" then
strPayload2=strPayload2&", Itching or burning in rectal area"
end if
if Session("EPQ30522140")="1" then
strPayload2=strPayload2&", Bloating of stomach/increased abdominal size"
end if
if Session("EPQ30522150")="1" then
strPayload2=strPayload2&", Hemorrhoids"
end if
if Session("EPQ30522160")="1" then
strPayload2=strPayload2&", Bad reaction to some foods"
end if

if Session("EPQ30522180")="1" then
strPayload2=strPayload2&", Denies"
end if

if Session("EPQ30525010")="1" then
strPayload2=strPayload2&" , Difficulty swallowing liquids"
end if
if Session("EPQ30525020")="1" then
strPayload2=strPayload2&", Difficulty swallowing solids"
end if
if Session("EPQ30525050")="1" then
strPayload2=strPayload2&", Difficulty swallowing pills or tablets"
end if
if Session("EPQ30525030")="1" then
strPayload2=strPayload2&", "&Session("EPQ30525000")
end if
if Session("EPQ30526010")="1" then
strPayload2=strPayload2&", Diarrhea (loose/runny stools)"
end if
if Session("EPQ30526020")="1" then
strPayload2=strPayload2&", Mucus or pus in stool"
end if
if Session("EPQ30526030")="1" then
strPayload2=strPayload2&", Increased frequency of bowel movements"
end if
if Session("EPQ30526040")="1" then
strPayload2=strPayload2&", Black or tarry stools"
end if
if Session("EPQ30526050")="1" then
strPayload2=strPayload2&", Trouble holding stools"
end if
if Session("EPQ30526060")="1" then
strPayload2=strPayload2&", Light colored stools"
end if
if Session("EPQ30526070")="1" then
strPayload2=strPayload2&", Constipation"
end if
if Session("EPQ30526080")="1" then
strPayload2=strPayload2&", Stools having offensive odor"
end if
if Session("EPQ30526090")="1" then
strPayload2=strPayload2&", Rectal tenesmus"
end if
if Session("EPQ30526100")="1" then
strPayload2=strPayload2&", Narrow stools"
end if
if Session("EPQ30526110")="1" then
strPayload2=strPayload2&", Blood in stool"
end if
if Session("EPQ30526120")="1" then
strPayload2=strPayload2&", Stools that float"
end if
if Session("EPQ30526130")="1" then
strPayload2=strPayload2&", Blood on toilet tissue"
end if
if Session("EPQ30526140")="1" then
strPayload2=strPayload2&", "&Session("EPQ30526000")
end if
if len(Session("EPQ30527000")) > 0 then
strPayload2=strPayload2&", "&Session("EPQ30527000")
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Endocrine \tab\tab "
strpayload2=""

if Session("EPQ30528010")="1" then
strPayload2=strPayload2&", Enlarged thyroid (goiter)"
end if
if Session("EPQ30528020")="1" then
strPayload2=strPayload2&", Hot or cold intolerance"
end if
if Session("EPQ30528030")="1" then
strPayload2=strPayload2&", Dry skin/hair"
end if
if Session("EPQ30528040")="1" then
strPayload2=strPayload2&", Increased thirst"
end if
if Session("EPQ30528050")="1" then
strPayload2=strPayload2&", "&Session("EPQ30528000")
end if
if Session("EPQ30528060")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Hematologic/Lymphatic \tab "
strpayload2=""
if Session("EPQ30529010")="1" then
strPayload2=strPayload2&", Prominent leg veins"
end if
if Session("EPQ30529020")="1" then
strPayload2=strPayload2&", Frequent epistaxis"
end if
if Session("EPQ30529030")="1" then
strPayload2=strPayload2&", Frequent bleeding gums"
end if
if Session("EPQ30529040")="1" then
strPayload2=strPayload2&", Easy bruising/bleeding"
end if
if Session("EPQ30529050")="1" then
strPayload2=strPayload2&", Blood transfusions"
end if
if Session("EPQ30529060")="1" then
strPayload2=strPayload2&", Lymphedema"
end if
if Session("EPQ30529070")="1" then
strPayload2=strPayload2&", Swollen glands"
end if
if Session("EPQ30529080")="1" then
strPayload2=strPayload2&", "&Session("EPQ30529000")
end if
if Session("EPQ30529090")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


if Session("Gender")="F" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Gynecological \tab\tab "
strpayload2=""

if Session("EPQ30530010")="1" then
strPayload2=strPayload2&", Vaginal bleeding/spotting between periods"
end if
if Session("EPQ30530020")="1" then
strPayload2=strPayload2&", Vaginal bleeding after menopause"
end if
if Session("EPQ30530030")="1" then
strPayload2=strPayload2&", Unusual vaginal discharge"
end if
if Session("EPQ30530040")="1" then
strPayload2=strPayload2&", Painful intercourse"
end if
if Session("EPQ30530050")="1" then
strPayload2=strPayload2&", Painful periods"
end if
if Session("EPQ30530060")="1" then
strPayload2=strPayload2&", Vaginal itching/discomfort"
end if
if Session("EPQ30530070")="1" then
strPayload2=strPayload2&", Hot flashes"
end if
if Session("EPQ30530080")="1" then
strPayload2=strPayload2&", Vaginal dryness"
end if
if Session("EPQ30530090")="1" then
strPayload2=strPayload2&", Decreased libido"
end if
if Session("EPQ30530100")="1" then
strPayload2=strPayload2&", "&Session("EPQ30530000")
end if
if Session("EPQ30530110")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

end if

strPayload=strPayload&" \ulnone\b0\fs20\tab Musculoskeletal \tab "
strpayload2=""

if Session("EPQ30531010")="1" then
strPayload2=strPayload2&", Painful joints"
end if
if Session("EPQ30531020")="1" then
strPayload2=strPayload2&", Sore muscles"
end if
if Session("EPQ30531030")="1" then
strPayload2=strPayload2&", Back pain"
end if
if Session("EPQ30531040")="1" then
strPayload2=strPayload2&", Osteoporosis or osteopenia"
end if
if Session("EPQ30531050")="1" then
strPayload2=strPayload2&", Use of wheelchair"
end if
if Session("EPQ30531060")="1" then
strPayload2=strPayload2&", Muscle weakness"
end if
if Session("EPQ30531070")="1" then
strPayload2=strPayload2&", Neck pain"
end if
if Session("EPQ30531080")="1" then
strPayload2=strPayload2&", Use of cane or crutches"
end if
if Session("EPQ30531090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30531000")
end if
if Session("EPQ30531100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Other Symptoms \tab "

strpayload2=""
if Session("EPQ30532000")="1" then
strpayload2=""
strPayload2=strPayload2&", "&Session("EPQ30532000specify")
end if

if Session("EPQ30532000")="0" then
strpayload2=""
strPayload2=strPayload2&", No "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



%>
