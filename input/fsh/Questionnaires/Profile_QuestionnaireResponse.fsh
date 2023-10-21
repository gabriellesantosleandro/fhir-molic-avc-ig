Profile: MolicAVC_QuestionnaireResponse
Parent: QuestionnaireResponse
Id: molicavc-questionnaireresponse-profile
Title: "Profile of Molic-AVC's QuestionnaireResponse"
Description: "QuestionnaireResponse provides a complete or partial list of answers to a set of questions filled when responding
 to a questionnaire."

//RULES

// IDENTIFIER
* identifier 0..* MS
* identifier ^short = "A formal identifier that is used to identify this QuestionnaireResponse."
* identifier.use 0..1 
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* identifier.use ^short = "usual | official | temp | secondary | old (If known)."
* identifier.type 0..1
* identifier.type ^short = "Description of identifier."  
* identifier.system 0..1
* identifier.system ^short = "The namespace for the identifier value."
* identifier.value 0..1
* identifier.value ^short = "The value that is unique."
* identifier.period 0..1 // Período --> Time períod when id is/was valid for use
* identifier.period ^short = "Time period when id is/was valid for use."
* identifier.assigner 0..1 // Reference (Organization) Organization that issued id (may be just text)
* identifier.assigner ^short = "Organization that issued id (may be just text)."

//BASEDON
* basedOn 0..* MS
* basedOn ^short = "Request fulfilled by this QuestionnaireResponse. Reference (CarePlan | ServiceRequest)."
* basedOn.reference 0..1 //Tipo string
* basedOn.reference ^short = "Literal reference, Relative, internal or absolute URL."
* basedOn.type 0..1 // Tipo URI
* basedOn.type from https://build.fhir.org/valueset-resource-types.html
* basedOn.type ^short = "Type the reference refers to (e.g. CarePlan) - must be a resource in resources."
* basedOn.identifier 0..1
* basedOn.identifier ^short = "Logical reference, when literal reference is not known."
* basedOn.display 0..1 //string
* basedOn.display ^short = "Text alternative for the resource."

//PARTOF
* partOf 0..* MS
* partOf ^short = "Part of referenced event. Reference (Observation | Procedure)."
* partOf.reference 0..1 //Tipo string
* partOf.reference ^short = "Literal reference, Relative, internal or absolute URL."
* partOf.type 0..1 // Tipo URI
* partOf.type from https://build.fhir.org/valueset-resource-types.html
* partOf.type ^short = "Type the reference refers to (e.g. Patient) - must be a resource in resources."
* partOf.identifier 0..1
* partOf.identifier ^short = "Logical reference, when literal reference is not known."
* partOf.display 0..1 //string
* partOf.display ^short = "Text alternative for the resource."

//QUESTIONNAIRE
* questionnaire 1..1 MS
* questionnaire ^short = "Canonical URL of Questionnaire being answered."

//STATUS
* status 1..1 MS //CODE
* status from https://build.fhir.org/valueset-questionnaire-answers-status.html (required)
* status ^short = "The current state of this QuestionnaireResponse: in-progress | completed | amended | entered-in-error | stopped."

//SUBJECT
* subject 0..1 MS
* subject ^short = "The subject of the questions. Reference (Any)."
* subject.reference 0..1 //Tipo string
* subject.reference ^short = "Literal reference, Relative, internal or absolute URL."
* subject.type 0..1 // Tipo URI
* subject.type from https://build.fhir.org/valueset-resource-types.html
* subject.type ^short = "Type the reference refers to (e.g. Patient) - must be a resource in resources."
* subject.identifier 0..1
* subject.identifier ^short = "Logical reference, when literal reference is not known."
* subject.display 0..1 //string
* subject.display ^short = "Text alternative for the resource."

//ENCOUNTER
* encounter 0..1 MS
* encounter ^short = "Encounter the questionnaire response is part of. Reference (Encounter)."
* encounter.reference 0..1 //Tipo string
* encounter.reference ^short = "Literal reference, Relative, internal or absolute URL."
* encounter.type 0..1 // Tipo URI
* encounter.type from https://build.fhir.org/valueset-resource-types.html
* encounter.type ^short = "Type the reference refers to (e.g. Patient) - must be a resource in resources."
* encounter.identifier 0..1
* encounter.identifier ^short = "Logical reference, when literal reference is not known."
* encounter.display 0..1 //string
* encounter.display ^short = "Text alternative for the resource."

//AUTHORED
* authored 0..1 MS //TYPE: DATETIME
* authored ^short = "Date the answers were gathered."

//AUTHOR
* author 0..1 MS
* author ^short = "The individual or device that received and recorded the answers. Reference (Device |
Practitioner | PractitionerRole | Patient | RelatedPerson | Organization)."
* author.reference 0..1 //Tipo string
* author.reference ^short = "Literal reference, Relative, internal or absolute URL."
* author.type 0..1 // Tipo URI
* author.type from https://build.fhir.org/valueset-resource-types.html
* author.type ^short = "Type the reference refers to (e.g. Patient) - must be a resource in resources."
* author.identifier 0..1
* author.identifier ^short = "Logical reference, when literal reference is not known."
* author.display 0..1 //string
* author.display ^short = "Text alternative for the resource."

//SOURCE
* source 0..1 MS
* source ^short = "The individual or device that answered the questions. Reference (Device | Organization
Patient | Practitioner | PractitionerRole | RelatedPerson)."
* source.reference 0..1 //Tipo string
* source.reference ^short = "Literal reference, Relative, internal or absolute URL."
* source.type 0..1 // Tipo URI
* source.type from https://build.fhir.org/valueset-resource-types.html
* source.type ^short = "Type the reference refers to (e.g. Patient) - must be a resource in resources."
* source.identifier 0..1
* source.identifier ^short = "Logical reference, when literal reference is not known."
* source.display 0..1 //string
* source.display ^short = "Text alternative for the resource."

// ITEM
* item 0..* MS
* item ^short = "Groups and questions.
+ Rule: Item cannot contain both item and answer.
+ Rule: Repeated answers are combined in the answers array of a single item."

//ITEM.LINKID
* item.linkId 1..1 MS
* item.linkId ^short = "Pointer to specific item from Questionnaire"

//ITEM.DEFINITION
* item.definition 0..1 MS
* item.definition ^short = "This element is a URI that refers to an ElementDefinition - details for the item."

//ITEM.TEXT
* item.text 0..1 MS
* item.text ^short = "Name for group or question text."

//ITEM.ANSWER
* item.answer 0..* MS
* item.answer ^short = "The response(s) to the question."

//ITEM.ANSWER.VALUE[X]
* item.answer.value[x] 1..1 MS
* item.answer.value[x] from http://hl7.org/fhir/ValueSet/questionnaire-answers (example)
* item.answer.value[x] ^short = "Single-valued answer to the question."

//ITEM.ANSWER.ITEM
* item.answer.item 0..* MS
* item.answer.item ^short = "Child items of group item."


// INSTANCE WHODAS QUESTIONNAIRE
Instance: MolicAVC-WHODAS-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC WHODAS questionnaire"
Description: "Example of WHODAS QuestionnaireResponse for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "whodas-qr"
* partOf.type = #Questionnaire
* partOf.display = "MolicAVC Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-WHODASQuestionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "S1"
* item[0].text = "In the past 30 days, how much difficulty did you have in standing for long periods such as 30 minutes?"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[0].answer.valueCoding.code = #2 
* item[0].answer.valueCoding.display = "Moderate"
* item[1].linkId = "S2"
* item[1].text = "In the past 30 days, how much difficulty did you have in taking care of your household responsibilities?"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[1].answer.valueCoding.code = #1 
* item[1].answer.valueCoding.display = "Mild"
* item[2].linkId = "S3"
* item[2].text = "In the past 30 days, how much difficulty did you have in learning a new task, for example, learning how to get to a new place?"
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[2].answer.valueCoding.code = #3
* item[2].answer.valueCoding.display = "Severe"
* item[3].linkId = "S4"
* item[3].text = "In the past 30 days, how much of a problem did you have joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?"
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[3].answer.valueCoding.code = #2
* item[3].answer.valueCoding.display = "Moderate"
* item[4].linkId = "S5"
* item[4].text = "In the past 30 days, how much have you been emotionally affected by your health problems?"
* item[4].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[4].answer.valueCoding.code = #2
* item[4].answer.valueCoding.display = "Moderate"
* item[5].linkId = "S6"
* item[5].text = "In the past 30 days, how much difficulty did you have in concentrating on doing something for ten minutes?"
* item[5].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[5].answer.valueCoding.code = #1
* item[5].answer.valueCoding.display = "Mild"
* item[6].linkId = "S7"
* item[6].text = "In the past 30 days, how much difficulty did you have in walking a long distance such as a kilometer [or equivalent]?"
* item[6].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[6].answer.valueCoding.code = #3
* item[6].answer.valueCoding.display = "Severe"
* item[7].linkId = "S8"
* item[7].text = "In the past 30 days, how much difficulty did you have in washing your whole body?"
* item[7].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[7].answer.valueCoding.code = #1
* item[7].answer.valueCoding.display = "Mild"
* item[8].linkId = "S9"
* item[8].text = "In the past 30 days, how much difficulty did you have in getting dressed?"
* item[8].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[8].answer.valueCoding.code = #1
* item[8].answer.valueCoding.display = "Mild"
* item[9].linkId = "S10"
* item[9].text = "In the past 30 days, how much difficulty did you have in dealing with people you do not know?"
* item[9].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[9].answer.valueCoding.code = #1
* item[9].answer.valueCoding.display = "Mild"
* item[10].linkId = "S11"
* item[10].text = "In the past 30 days, how much difficulty did you have in maintaining a friendship?"
* item[10].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[10].answer.valueCoding.code = #0
* item[10].answer.valueCoding.display = "None"
* item[11].linkId = "S12"
* item[11].text = "In the past 30 days, how much difficulty did you have in your day-to-day work?"
* item[11].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[11].answer.valueCoding.code = #1
* item[11].answer.valueCoding.display = "Mild"

// INSTANCE HR-HSQoL
Instance: MolicAVC-HRHSQoL-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's Health-Related Quality of Life/Self-Reported Health Status Question."
Description: "Example of Health-related Quality of Life/Self-Reported Health Status QuestionnaireResponse." 

* identifier.use = #official
* identifier.value = "hrhsqol-qr"
* partOf.type = #Questionnaire
* partOf.display = "MolicAVC Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-HRHSQoL.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "hr-hsqol"
* item[0].text = "What Health-Related Quality of Life tool are you using?"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-hrhsqol-valueset"
* item[0].answer.valueCoding.code = #1 
* item[0].answer.valueCoding.display = "EuroQoL-5D-3L (EQ-5D-3L)"


// INSTANCE PROMIS-10 QUESTIONNAIRERESPONSE
Instance: MolicAVC-PROMIS10-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's PROMIS-10"
Description: "Example of PROMIS-10 QuestionnaireResponse for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "promis10-qr"
* partOf.type = #Questionnaire
* partOf.display = "MolicAVC Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-PROMIS10Questionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "PROMIS-10_Q01"
* item[0].text = "In general, would you say your health is:"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[0].answer.valueCoding.code = #2 
* item[0].answer.valueCoding.display = "Fair"
* item[1].linkId = "PROMIS-10_Q02"
* item[1].text = "In general, would you say your quality of life is:"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[1].answer.valueCoding.code = #3
* item[1].answer.valueCoding.display = "Good"
* item[2].linkId = "PROMIS-10_Q03"
* item[2].text = "In general, how would you rate your physical health?"
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[2].answer.valueCoding.code = #2
* item[2].answer.valueCoding.display = "Fair"
* item[3].linkId = "PROMIS-10_Q04"
* item[3].text = "In general, how would you rate your mental health, including your mood and your ability to think?"
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[3].answer.valueCoding.code = #3
* item[3].answer.valueCoding.display = "Good"
* item[4].linkId = "PROMIS-10_Q05"
* item[4].text = "In general, how would you rate your satisfaction with your social activities and relationships?"
* item[4].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[4].answer.valueCoding.code = #4
* item[4].answer.valueCoding.display = "Very Good"
* item[5].linkId = "PROMIS-10_Q09r"
* item[5].text = "In general, rate how well you carry out your usual social activities at home, at work and in your community, and responsibilities as a parent, child, spouse, employee, friend, etc.)"
* item[5].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[5].answer.valueCoding.code = #3
* item[5].answer.valueCoding.display = "Good"
* item[6].linkId = "PROMIS-10_Q06"
* item[6].text = "To what extent are you able to carry out your everyday physical activities such as walking, climbing stairs, carrying groceries, or moving a chair?"
* item[6].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[6].answer.valueCoding.code = #8
* item[6].answer.valueCoding.display = "Moderately"
* item[7].linkId = "PROMIS-10_Q10r"
* item[7].text = "In the past 7 days, how often have you been bothered by emotional problems such as feeling anxious, depressed or irritable?"
* item[7].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[7].answer.valueCoding.code = #13
* item[7].answer.valueCoding.display = "Sometimes"
* item[8].linkId = "PROMIS-10_Qo8r"
* item[8].text = "In the past 7 days, how would you rate your fatigue on average?"
* item[8].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[8].answer.valueCoding.code = #18
* item[8].answer.valueCoding.display = "Moderate"
* item[9].linkId = "PROMIS-10_Qo7r"
* item[9].text = "In the past 7 days, how would you rate your pain on average?"
* item[9].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[9].answer.valueCoding.code = #23
* item[9].answer.valueCoding.display = "2: Discomforting"


// INSTANCE VR-12 QUESTIONNAIRERESPONSE
Instance: MolicAVC-VR12-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's VR-12 Survey"
Description: "Example of VR-12 QuestionnaireResponse for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "vr12-qr"
* partOf.type = #Questionnaire
* partOf.display = "Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-V12Questionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "Question 1 of VR-12 - GH1"
* item[0].text = "In general, would you say your health is:"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[0].answer.valueCoding.code = #3
* item[0].answer.valueCoding.display = "Good"
* item[1].linkId = "Question 6a of VR-12 - MH3"
* item[1].text = "Have you felt calm and peaceful?"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[1].answer.valueCoding.code = #7
* item[1].answer.valueCoding.display = "Most of the time"
* item[2].linkId = "Question 6c of VR-12 - MH4"
* item[2].text = "Have you felt downhearted and blue?"
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[2].answer.valueCoding.code = #10
* item[2].answer.valueCoding.display = "A little of the time"
* item[3].linkId = "Question 2a of VR-12 - PF2"
* item[3].text = "The following items are about activities you might do during a typical day. Does our health
now limit you in these activities? If so, how much? a. Moderate activities, such as moving a table, pushing a 
vacuum cleaner, bowling, or playing golf."
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[3].answer.valueCoding.code = #13
* item[3].answer.valueCoding.display = "Yes, limited a little"
* item[4].linkId = "Question 2b of VR-12 - PF4"
* item[4].text = "b. Climbing several flights of stairs"
* item[4].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[4].answer.valueCoding.code = #13
* item[4].answer.valueCoding.display = "Yes, limited a little"
* item[5].linkId = "Question 7 of VR-12 - SF2"
* item[5].text = "During the past 4 weeks, how much of the time has your physical health or emotional
problems interfered with your social activities (like visiting with friends, relatives, etc.)?"
* item[5].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[5].answer.valueCoding.code = #10
* item[5].answer.valueCoding.display = "A little of the time"
* item[6].linkId = "Question 8 of VR-12 - VR12_Qo8"
* item[6].text = "Now, we'd like to ask you some questions about how your health may have changed.
Compared to one year ago, how would you rate your physical health in general now?"
* item[6].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[6].answer.valueCoding.code = #18
* item[6].answer.valueCoding.display = "Slightly worse"
* item[7].linkId = "Question 9 of VR-12 - VR12_Q09"
* item[7].text = "Compared to one year ago, how would you rate your emotional health (such as feeling
anxious depressed, or irritable) in general now?"
* item[7].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[7].answer.valueCoding.code = #17
* item[7].answer.valueCoding.display = "About the same"
* item[8].linkId = "Question 4a of VR-12 - VRE2"
* item[8].text = "During the past 4 weeks, have you had any of the following problems with your work or
other regular daily activities as a result of any emotional problems (such as feeling depressed or anxious)? 
a. Accomplished less than you would like."
* item[8].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[8].answer.valueCoding.code = #22
* item[8].answer.valueCoding.display = "Yes, some of the time"
* item[9].linkId = "Question 4b of VR-12 - VRE3"
* item[9].text = "b. Didn't do work or other activities as carefully as usual."
* item[9].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[9].answer.valueCoding.code = #21
* item[9].answer.valueCoding.display = "Yes, a little of the time"
* item[10].linkId = "Question 3a of VR-12 - VRP2"
* item[10].text = "During the past 4 weeks, have you had any of the following problems with your work or
other regular daily activities as a result of your physical health? a. Accomplished less than you would like."
* item[10].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[10].answer.valueCoding.code = #21
* item[10].answer.valueCoding.display = "Yes, a little of the time"
* item[11].linkId = "Question 3b of VR-12 - VRP3"
* item[11].text = "b. Were limited in the kind of work or other activities."
* item[11].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[11].answer.valueCoding.code = #21
* item[11].answer.valueCoding.display = "Yes, a little of the time"
* item[12].linkId = "Question 6b of VR-12 - VT2"
* item[12].text = "b. Did you have a lot of energy?"
* item[12].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[12].answer.valueCoding.code = #22
* item[12].answer.valueCoding.display = "Yes, some of the time"


// INSTANCE EQ-5D-3L QUESTIONNAIRERESPONSE
// Link: https://euroqol.org/eq-5d-instruments/sample-demo/
Instance: MolicAVC-EQ5D3L-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's EQ-5D-3L questionnaire"
Description: "Example of EQ-5D-3L QuestionnaireResponse for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "eq5d3l-qr"
* partOf.type = #Questionnaire
* partOf.display = "Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-EQ5D3LQuestionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "eq5d3l_Q01"
* item[0].text = "Mobility"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[0].answer.valueCoding.code = #2
* item[0].answer.valueCoding.display = "I have some problems in walking about."
* item[1].linkId = "eq5d3l_Q02"
* item[1].text = "Self-Care"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[1].answer.valueCoding.code = #5
* item[1].answer.valueCoding.display = "I have some problems washing or dressing myself."
* item[2].linkId = "eq5d3l_Q03"
* item[2].text = "Usual Activities (e.g. work, study, housework, family or leisure activities)."
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[2].answer.valueCoding.code = #8
* item[2].answer.valueCoding.display = "I have some problems with performing my usual activities."
* item[3].linkId = "eq5d3l_Q04"
* item[3].text = "Pain / Discomfort"
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[3].answer.valueCoding.code = #11
* item[3].answer.valueCoding.display = "I have moderate pain or discomfort."
* item[4].linkId = "eq5d3l_Q05"
* item[4].text = "Anxiety / Depression"
* item[4].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[4].answer.valueCoding.code = #13
* item[4].answer.valueCoding.display = "I am not anxious or depressed."
* item[5].linkId = "eq5d3l_Q06"
* item[5].text = "We would like to know how good or bad your health is TODAY. 100 means the best health you can imagine. 0 means the worst health you can imagine."
* item[5].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[5].answer.valueCoding.code = #23
* item[5].answer.valueCoding.display = "From 71 to 80."


// INSTANCE smRSq QuestionnaireResponse
Instance: MolicAVC-smRSq-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's simplified modified Rankin Scale questionnaire"
Description: "Example of simplified modified Rankin Scale QuestionnaireResponse for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "smRSq-rq"
* partOf.type = #Questionnaire
* partOf.display = "Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-smRSqQuestionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "smRSq"
* item[0].text = "simplified modified Rankin Scale questionnaire"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-smrsq-valueset"
* item[0].answer.valueCoding.code = #5
* item[0].answer.valueCoding.display = "5 = Severe disability; bedridden, incontinent and requiring constant nursing care and attention."


// INSTANCE PRÉ & PRÓ STROKE FUNCTIONAL STATUS QUESTIONNAIRERESPONSE
Instance: MolicAVC-FunctionalStatus-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's Prestroke and Poststroke Functional Status"
Description: "Example of Prestroke and Poststroke Functional Status QuestionnaireResponse for the patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "ppsfs-qr"
* partOf.type = #Questionnaire
* partOf.display = "Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-FunctionalStatus-Questionnaire.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "prestroke-ambulation"
* item[0].text = "Prestroke functional status: Ambulation. Were you able to walk before your stroke or transient ischaemic attack?"
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[0].answer.valueCoding.code = #1
* item[0].answer.valueCoding.display = "1 = Able to walk without help from another person with or without a device."
* item[1].linkId = "prestroke-toileting"
* item[1].text = "Prestroke functional status: Toileting. Did you need help from anybody to go to the toilet before your stroke or transient ischaemic attack?"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[1].answer.valueCoding.code = #4
* item[1].answer.valueCoding.display = "1 = I could manage going to the toilet without assistance."
* item[2].linkId = "prestroke-dressing"
* item[2].text = "Prestroke functional status: Dressing. Did you need help with dressing/undressing before your stroke or transient ischaemic attack?"
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[2].answer.valueCoding.code = #6
* item[2].answer.valueCoding.display = "1 = I could manage dressing/undressing without help."
* item[3].linkId = "poststroke-ambulation"
* item[3].text = "Poststroke functional status: Ambulation. Are you able to walk?"
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[3].answer.valueCoding.code = #2
* item[3].answer.valueCoding.display = "2 = Able to walk with help from another person."
* item[4].linkId = "poststroke-toileting"
* item[4].text = "Poststroke functional status: Toileting. Do you need help from anybody to go to the toilet?"
* item[4].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[4].answer.valueCoding.code = #4
* item[4].answer.valueCoding.display = "1 = I could manage going to the toilet without assistance."
* item[5].linkId = "poststroke-dressing"
* item[5].text = "Poststroke functional status: Dressing. Do you need help with dressing/undressing?"
* item[5].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[5].answer.valueCoding.code = #7
* item[5].answer.valueCoding.display = "2 = I needed help dressing/undressing."


// INSTANCE FUNCTIONAL ASPECTS AND REHABILITATION QUESTIONNAIRERESPONSE
Instance: MolicAVC-FunctionalAspectsRehabilitation-QuestionnaireResponse
InstanceOf: MolicAVC_QuestionnaireResponse
Usage: #example
Title: "Use case of QuestionnaireResponse of Molic-AVC's Functional Aspects and Rehabilitation: Feeding, Communication, and Stroke Rehabilitation."
Description: "Example of QuestionnaireResponse of Functional Aspects and Rehabilitation: Feeding, Communication, and Stroke Rehabilitation." 

* identifier.use = #official
* identifier.value = "far-rq"
* partOf.type = #Questionnaire
* partOf.display = "Questionnaire"
* questionnaire = "https://molic-avc.gabriellesantosleandro.com/Questionnaire/MolicAVC-FunctionalAspectsRehabilitation.html"
* status = #completed
* subject.reference = "Patient/123.456.789-00"
* subject.type = #Patient
* subject.display = "João da Silva"
* encounter.reference = "Encounter/123.456.789-00_20230830_1154"
* encounter.type = #Encounter
* encounter.display = "João da Silva. Date: 30/08/2023 11:54"
* authored = "2023-08-30T11:54:00+01:00"
* author.reference = "Practitioner/CRM-SC12345"
* author.type = #Practitioner
* author.display = "Dra. Maria Betânia"
* source.reference = "Patient/123.456.789-00"
* source.type = #Patient
* source.display = "João da Silva"

* item[0].linkId = "feeding"
* item[0].text = "Do you need a tube for feeding? For example: a nasogastric tube or a gastrostomy tube."
* item[0].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[0].answer.valueCoding.code = #0
* item[0].answer.valueCoding.display = "0 = No."
* item[1].linkId = "communicate"
* item[1].text = "Do you have problems with communication or understanding?"
* item[1].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[1].answer.valueCoding.code = #1
* item[1].answer.valueCoding.display = "1 = Yes."
* item[2].linkId = "rehabilitation_Q01"
* item[2].text = "Rehabilitation inpatient acute care. Did the acute inpatient care include dedicated stroke rehabilitation?"
* item[2].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[2].answer.valueCoding.code = #1
* item[2].answer.valueCoding.display = "1 = Yes."
* item[3].linkId = "rehabilitation_Q02"
* item[3].text = "Rehabilitation post-acute care. Did the post-acute care include dedicated stroke rehabilitation? Dedicated stroke rehabilitation during post-acute care, either hospital-based or out patient/home based."
* item[3].answer.valueCoding.system = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[3].answer.valueCoding.code = #999
* item[3].answer.valueCoding.display = "999 = Unknown."
