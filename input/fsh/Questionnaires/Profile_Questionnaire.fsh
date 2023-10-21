Profile: MolicAVC_Questionnaire
Parent: Questionnaire
Id: molicavc-questionnaire-profile
Title: "Profile of Molic-AVC's Questionnaire"
Description: "A structured set of questions intended to guide the collection of answers from end-users. 
Questionnaires provide detailed control over order, presentation, phraseology and grouping to allow coherent, 
consistent data collection."

//RULES
//URL
* url 0..1 MS
* url ^short = "Canonical identifier for this questionnaire, represented as an absolute URI (globally unique)."

// IDENTIFIER
* identifier 0..* MS
* identifier ^short = "A formal identifier that is used to identify this questionnaire when it is represented in 
other formats, or referenced in a specification, model, design or an instance."
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

//VERSION
* version 0..1 MS
* version ^short = "Business version of the questionnaire."

//VERSION ALGORITHM
* versionAlgorithm[x] 0..1 MS
* versionAlgorithm[x] ^short = "Indicates the mechanism used to compare versions to determine which is more current."

//NAME
* name 1..1 MS
* name ^short = "Name for this questionnaire (computer friendly)."

//TITLE
* title 1..1 MS
* title ^short = "Name for this questionnaire (human friendly)."

//DERIVED_FROM
* derivedFrom 0..* MS
* derivedFrom ^short = "The URL of a Questionnaire that this Questionnaire is based on."

//STATUS
* status 1..1 MS 
* status from http://hl7.org/fhir/ValueSet/publication-status (required)
* status ^short = "The current state of this questionnaire: draft | active | retired | unknown."

//EXPERIMENTAL
* experimental 0..1 MS
* experimental ^short = "A Boolean value to indicate that this questionnaire is authored for testing purposes (or education/evaluation/marketing) and is not intended for genuine usage."

//SUBJECTTYPE
* subjectType 0..* MS 
* subjectType from https://www.hl7.org/fhir/valueset-resource-types.html (required)
* subjectType ^short = "The types of subjects that can be the subject of responses created for the questionnaire."

//DATE
* date 0..1 MS
* date ^short = "The date (and optionally time) when the questionnaire was last significantly changed. The date 
must change when the business version changes and it must change if the status code changes. In addition, it should 
change when the substantive content of the questionnaire changes."

//PUBLISHER
* publisher 0..1 MS
* publisher ^short = "The name of the organization or individual responsible for the release and ongoing maintenance of the questionnaire."

//CONTACT
* contact 0..* MS
* contact.name 0..1
* contact.name ^short = "Name of an individual to contact."
* contact.telecom 0..*
* contact.telecom ^short = "Contact details for individual or organization."

//DESCRIPTION
* description 0..1 MS
* description ^short = "A free text natural language description of the questionnaire from a consumer's perspective."

//USECONTEXT
* useContext 0..* MS
* useContext ^short = "The context that the content is intended to support."
* useContext.code 1..1
* useContext.code ^short = "Type of context being specified."
* useContext.value[x] 1..1
* useContext.value[x] ^short = "Value that defines the context."

//JURISDICTION
* jurisdiction 0..* MS 
* jurisdiction from http://hl7.org/fhir/ValueSet/jurisdiction (required)
* jurisdiction ^short = "A legal or geographic region in which the questionnaire is intended to be used."

//PURPOSE
* purpose 0..1 MS
* purpose ^short = "Explanation of why this questionnaire is needed and why it has been designed as it has."

//COPYRIGHT
* copyright 0..1 MS
* copyright ^short = "A copyright statement relating to the questionnaire and/or its contents. Copyright statements 
are generally legal restrictions on the use and publishing of the questionnaire."

//COPYRIGHTLABEL
* copyrightLabel 0..1 MS
* copyrightLabel ^short = "A short string (<50 characters), suitable for inclusion in a page footer that identifies the 
copyright holder, effective period, and optionally whether rights are resctricted. (e.g. 'All rights reserved', 
'Some rights reserved')."

//APPROVALDATE
* approvalDate 0..1 MS
* approvalDate ^short = "The date on which the resource content was approved by the publisher. Approval happens once when 
the content is officially approved for usage."

//LASTREVIEWDATE
* lastReviewDate 0..1 MS
* lastReviewDate ^short = "When the questionnaire was last reviewed by the publisher."

//EFFECTIVEPERIOD
* effectivePeriod 0..1 MS
* effectivePeriod ^short = "The period during which the questionnaire content was or is planned to be in active use."

//CODE
* code 0..* MS 
* code from https://www.hl7.org/fhir/valueset-questionnaire-questions.html (example)
* code ^short = "An identifier for this collection of questions in a particular terminology such as LOINC."

//ITEM
* item 0..* MS
* item ^short = "A particular question, question grouping or display text that is part of the questionnaire."

//ITEM.LINKID
* item.linkId 1..1 MS
* item.linkId ^short = "An identifier that is unique within the Questionnaire allowing linkage to the equivalent 
item in a QuestionnaireResponse resource."

//ITEM.DEFINITION
* item.definition 0..1 MS
* item.definition ^short = "This element is a URI that refers to an ElementDefinition or to an ObservationDefinition 
that provides information about this item, including information that might otherwise be included in the instance of 
the Questionnaire resource."

//ITEM.CODE
* item.code 0..* MS 
* item.code from http://hl7.org/fhir/ValueSet/questionnaire-questions (example)
* item.code ^short = "Corresponding concept for this item in a terminology."

//ITEM.PREFIX
* item.prefix 0..1 MS
* item.prefix ^short = "A short label for a particular group, question or set of display text within the 
questionnaire used for reference by the individual completing the questionnaire. E.g. '1(a)', '2.5.3' "

//ITEM.TEXT
* item.text 0..1 MS
* item.text ^short = "The name of a section, the text of a question or text content for a display item."

//ITEM.TYPE
* item.type 1..1 MS 
* item.type from https://www.hl7.org/fhir/valueset-item-type.html (required)
* item.type ^short = "The type of questionnaire item this is - whether text for display, a grouping of other items 
or a particular type of data to be captured (string, integer, Coding, etc.). E.g. group | display | question | 
boolean | decimal | integer | date | dateTime | time | string | text | url | coding | attachment | reference | quantity"

//ITEM.ENABLEWHEN
* item.enableWhen 0..* MS
* item.enableWhen ^short = "A constraint indicating that this item should only be enabled (displayed/allow answers 
to be captured) when the specified condition is true."

//ITEM.ENABLEWHEN.QUESTION
* item.enableWhen.question 1..1 MS
* item.enableWhen.question ^short = "The linkId of question that determines whether item is enabled/disabled."

//ITEM.ENABLEWHEN.OPERATOR
* item.enableWhen.operator 1..1 MS 
* item.enableWhen.operator from http://hl7.org/fhir/ValueSet/questionnaire-enable-operator (required)
* item.enableWhen.operator ^short = "Specifies the criteria by which the question is enabled. E.g.: exists | = | != | > | < | >= | <= "

//ITEM.ENABLEWHEN.ANSWER[X]
* item.enableWhen.answer[x] 1..1 MS 
* item.enableWhen.answer[x] from http://hl7.org/fhir/ValueSet/questionnaire-answers (required)
* item.enableWhen.answer[x] ^short = "Value for question comparison based on operator."

//ITEM.ENABLEBEHAVIOUR
* item.enableBehavior 0..1 MS 
* item.enableBehavior from http://hl7.org/fhir/ValueSet/questionnaire-enable-behavior (required)
* item.enableBehavior ^short = "Controls how multiple enableWhen values are interpreted - whether all or any must be true."

//ITEM.REQUIRED
* item.required 0..1 MS
* item.required ^short = "An indication, if true, that the item must be present in a 'completed' QuestionnaireResponse. 
If false, the item may be skipped when answering the questionnaire."

//ITEM.REPEATS
* item.repeats 0..1 MS
* item.repeats ^short = "An indication, if true, that a QuestionnaireResponse for this item may include multiple 
answers associated with a single instance of this item (for question-type items) or multiple repetitions of the 
item (for group-type items)."

//ITEM.READONLY
* item.readOnly 0..1 MS
* item.readOnly ^short = "An indication, when true, that the value cannot be changed by a human respondent to the Questionnaire."

//ITEM.MAXLENGTH
* item.maxLength 0..1 MS
* item.maxLength ^short = "The maximum number of characters that are permitted in the answer to be considered a 'valid' QuestionnaireResponse."

//ITEM.ANSWERCONSTRAINT
* item.answerConstraint 0..1 MS 
* item.answerConstraint from http://hl7.org/fhir/ValueSet/questionnaire-answer-constraint (required)
* item.answerConstraint ^short = "For items that have a defined set of allowed answers (via answerOption or answerValueSet), 
indicates whether values other than those specified can be selected. E.g.: optionsOnly | optionsOrType | optionsOrString"

//ITEM.ANSWERVALUESET
* item.answerValueSet 0..1 MS
* item.answerValueSet ^short = "A reference to a value set containing a list of values representing permitted answers for a question."

//ITEM.ANSWEROPTION
* item.answerOption 0..* MS
* item.answerOption ^short = "One of the permitted answers for the question."

//ITEM.ANSWEROPTION.VALUE[X]
* item.answerOption.value[x] 1..1 MS 
* item.answerOption.value[x] ^short = "A potential answer that's allowed as the answer to this question. Type: 
integer | date | time | string | coding | refrence (any)."

//ITEM.ANSWEROPTION.INITIALSELECTED
* item.answerOption.initialSelected 0..1 MS
* item.answerOption.initialSelected ^short = "Indicates whether the answer value is selected when the list of possible answers is initially shown."

//ITEM.INITIAL
* item.initial 0..* MS
* item.initial ^short = "One or more values that should be pre-populated in the answer when initially rendering the questionnaire for user input."

//ITEM.INITIAL.VALUE[X]
* item.initial.value[x] 1..1 MS
* item.initial.value[x] ^short = "The actual value to for an initial answer. E.g.: boolean|decimal|integer|date|
dateTime|time|string|uri|Attachment|Coding|Quantity|Reference(Any)"

//ITEM.ITEM
* item.item 0..* MS
* item.item ^short = "Text, questions and other groups to be nested beneath a question or group."

// INSTANCE HR-HSQoL
Instance: MolicAVC-HRHSQoL
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's Health-Related Quality of Life/Self-Reported Health Status Question."
Description: "Example of Health-related Quality of Life/Self-Reported Health Status Question." 

* identifier.use = #official
* identifier.value = "hr-hsqol"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "hr-hsqol"
* title = "Health-Related Quality of Life/Self-Reported Health Status Question"
* status = #draft
* subjectType = #Patient
* date = "2023-08-01"
* publisher = "ICHOM"
* description = "This variable focuses on the assessment of an individual's health-related quality of life and self-reported 
health status. It specifically queries the tool being employed to measure health-related quality of life, aiming to gain 
insights into the instrument used to evaluate the patient's overall well-being and perceived health condition."

* item[0].linkId = "hr-hsqol"
* item[0].text = "What Health-Related Quality of Life tool are you using?"
* item[0].type = #coding
* item[0].answerValueSet = "https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-hrhsqol-valueset"
* item[0].answerOption[0].valueCoding = #1 "EuroQoL-5D-3L (EQ-5D-3L)"
* item[0].answerOption[1].valueCoding = #2 "WHODAS V2.0-12"
* item[0].answerOption[2].valueCoding = #3 "VR-12"
* item[0].answerOption[3].valueCoding = #4 "PROMIS-10"


// INSTANCE WHODAS QUESTIONNAIRE
Instance: MolicAVC-WHODASQuestionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC WHODAS Questionnaire"
Description: "Example of WHODAS Questionnaire for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "WHODAS"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "whodas20"
* title = "Use case of Molic-AVC's WHODAS Questionnaire"
* status = #draft
* publisher = "World Health Organization"
* description = "This questionnaire asks about difficulties due to health conditions. Health conditions include 
diseases or illnesses, other health problems that may be short or long lasting, injuries, mental or emotional 
problems, and problems with alcohol or drugs. Think back over the past 30 days and answer these questions, thinking 
about how much difficulty you had doing the following activities."

* item[0].linkId = "S1"
* item[0].text = "In the past 30 days, how much difficulty did you have in standing for long periods such as 30 minutes?"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[0].answerOption[0].valueCoding = #0
* item[0].answerOption[1].valueCoding = #1
* item[0].answerOption[2].valueCoding = #2
* item[0].answerOption[3].valueCoding = #3
* item[0].answerOption[4].valueCoding = #4

* item[1].linkId = "S2"
* item[1].text = "In the past 30 days, how much difficulty did you have in taking care of your household responsibilities?"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[1].answerOption[0].valueCoding = #0
* item[1].answerOption[1].valueCoding = #1
* item[1].answerOption[2].valueCoding = #2
* item[1].answerOption[3].valueCoding = #3
* item[1].answerOption[4].valueCoding = #4

* item[2].linkId = "S3"
* item[2].text = "In the past 30 days, how much difficulty did you have in learning a new task, for example, learning how to get to a new place?"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[2].answerOption[0].valueCoding = #0
* item[2].answerOption[1].valueCoding = #1
* item[2].answerOption[2].valueCoding = #2
* item[2].answerOption[3].valueCoding = #3
* item[2].answerOption[4].valueCoding = #4

* item[3].linkId = "S4"
* item[3].text = "In the past 30 days, how much of a problem did you have joining in community activities (for example, festivities, religious or other activities) in the same way as anyone else can?"
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[3].answerOption[0].valueCoding = #0
* item[3].answerOption[1].valueCoding = #1
* item[3].answerOption[2].valueCoding = #2
* item[3].answerOption[3].valueCoding = #3
* item[3].answerOption[4].valueCoding = #4

* item[4].linkId = "S5"
* item[4].text = "In the past 30 days, how much have you been emotionally affected by your health problems?"
* item[4].type = #question
* item[4].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[4].answerOption[0].valueCoding = #0
* item[4].answerOption[1].valueCoding = #1
* item[4].answerOption[2].valueCoding = #2
* item[4].answerOption[3].valueCoding = #3
* item[4].answerOption[4].valueCoding = #4

* item[5].linkId = "S6"
* item[5].text = "In the past 30 days, how much difficulty did you have in concentrating on doing something for ten minutes?"
* item[5].type = #question
* item[5].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[5].answerOption[0].valueCoding = #0
* item[5].answerOption[1].valueCoding = #1
* item[5].answerOption[2].valueCoding = #2
* item[5].answerOption[3].valueCoding = #3
* item[5].answerOption[4].valueCoding = #4

* item[6].linkId = "S7"
* item[6].text = "In the past 30 days, how much difficulty did you have in walking a long distance such as a kilometer [or equivalent]?"
* item[6].type = #question
* item[6].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[6].answerOption[0].valueCoding = #0
* item[6].answerOption[1].valueCoding = #1
* item[6].answerOption[2].valueCoding = #2
* item[6].answerOption[3].valueCoding = #3
* item[6].answerOption[4].valueCoding = #4

* item[7].linkId = "S8"
* item[7].text = "In the past 30 days, how much difficulty did you have in washing your whole body?"
* item[7].type = #question
* item[7].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[7].answerOption[0].valueCoding = #0
* item[7].answerOption[1].valueCoding = #1
* item[7].answerOption[2].valueCoding = #2
* item[7].answerOption[3].valueCoding = #3
* item[7].answerOption[4].valueCoding = #4

* item[8].linkId = "S9"
* item[8].text = "In the past 30 days, how much difficulty did you have in getting dressed?"
* item[8].type = #question
* item[8].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[8].answerOption[0].valueCoding = #0
* item[8].answerOption[1].valueCoding = #1
* item[8].answerOption[2].valueCoding = #2
* item[8].answerOption[3].valueCoding = #3
* item[8].answerOption[4].valueCoding = #4

* item[9].linkId = "S10"
* item[9].text = "In the past 30 days, how much difficulty did you have in dealing with people you do not know?"
* item[9].type = #question
* item[9].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[9].answerOption[0].valueCoding = #0
* item[9].answerOption[1].valueCoding = #1
* item[9].answerOption[2].valueCoding = #2
* item[9].answerOption[3].valueCoding = #3
* item[9].answerOption[4].valueCoding = #4

* item[10].linkId = "S11"
* item[10].text = "In the past 30 days, how much difficulty did you have in maintaining a friendship?"
* item[10].type = #question
* item[10].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[10].answerOption[0].valueCoding = #0
* item[10].answerOption[1].valueCoding = #1
* item[10].answerOption[2].valueCoding = #2
* item[10].answerOption[3].valueCoding = #3
* item[10].answerOption[4].valueCoding = #4

* item[11].linkId = "S12"
* item[11].text = "In the past 30 days, how much difficulty did you have in your day-to-day work?"
* item[11].type = #question
* item[11].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-whodas-valueset"
* item[11].answerOption[0].valueCoding = #0
* item[11].answerOption[1].valueCoding = #1
* item[11].answerOption[2].valueCoding = #2
* item[11].answerOption[3].valueCoding = #3
* item[11].answerOption[4].valueCoding = #4


// INSTANCE PROMIS-10 QUESTIONNAIRE
Instance: MolicAVC-PROMIS10Questionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's PROMIS-10 Questionnaire"
Description: "Example of PROMIS-10 Questionnaire for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "PROMIS-10"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM 5.0.1"
* name = "promis-10"
* title = "PROMIS-10 (Patient-Reported Outcomes Measurement Information System 10-item short form)"
* status = #draft
* publisher = "National Institutes of Health (NIH)"
* description = "The PROMIS-10 is a brief, 10-item version of the PROMIS (Patient-Reported Outcomes Measurement 
Information System) questionnaire, developed and maintained by the U.S. National Institutes of Health (NIH). 
It aims to provide a reliable measure of a patient's overall health, capturing physical, mental, and social 
well-being aspects. Designed for diverse conditions and populations, the PROMIS-10 offers a concise instrument 
for gauging health from the patient's perspective, facilitating a holistic understanding of their health status."

* item[0].linkId = "PROMIS-10_Q01"
* item[0].text = "In general, would you say your health is:"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[0].answerOption[0].valueCoding = #1
* item[0].answerOption[1].valueCoding = #2
* item[0].answerOption[2].valueCoding = #3
* item[0].answerOption[3].valueCoding = #4
* item[0].answerOption[4].valueCoding = #5

* item[1].linkId = "PROMIS-10_Q02"
* item[1].text = "In general, would you say your quality of life is:"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[1].answerOption[0].valueCoding = #1
* item[1].answerOption[1].valueCoding = #2
* item[1].answerOption[2].valueCoding = #3
* item[1].answerOption[3].valueCoding = #4
* item[1].answerOption[4].valueCoding = #5

* item[2].linkId = "PROMIS-10_Q03"
* item[2].text = "In general, how would you rate your physical health?"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[2].answerOption[0].valueCoding = #1
* item[2].answerOption[1].valueCoding = #2
* item[2].answerOption[2].valueCoding = #3
* item[2].answerOption[3].valueCoding = #4
* item[2].answerOption[4].valueCoding = #5

* item[3].linkId = "PROMIS-10_Q04"
* item[3].text = "In general, how would you rate your mental health, including your mood and your ability to think?"
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[3].answerOption[0].valueCoding = #1
* item[3].answerOption[1].valueCoding = #2
* item[3].answerOption[2].valueCoding = #3
* item[3].answerOption[3].valueCoding = #4
* item[3].answerOption[4].valueCoding = #5

* item[4].linkId = "PROMIS-10_Q05"
* item[4].text = "In general, how would you rate your satisfaction with your social activities and relationships?"
* item[4].type = #question
* item[4].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[4].answerOption[0].valueCoding = #1
* item[4].answerOption[1].valueCoding = #2
* item[4].answerOption[2].valueCoding = #3
* item[4].answerOption[3].valueCoding = #4
* item[4].answerOption[4].valueCoding = #5

* item[5].linkId = "PROMIS-10_Q09r"
* item[5].text = "In general, rate how well you carry out your usual social activities at home, at work and in your community, and responsibilities as a parent, child, spouse, employee, friend, etc.)"
* item[5].type = #question
* item[5].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[5].answerOption[0].valueCoding = #1
* item[5].answerOption[1].valueCoding = #2
* item[5].answerOption[2].valueCoding = #3
* item[5].answerOption[3].valueCoding = #4
* item[5].answerOption[4].valueCoding = #5

* item[6].linkId = "PROMIS-10_Q06"
* item[6].text = "To what extent are you able to carry out your everyday physical activities such as walking, climbing stairs, carrying groceries, or moving a chair?"
* item[6].type = #question
* item[6].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[6].answerOption[0].valueCoding = #6
* item[6].answerOption[1].valueCoding = #7
* item[6].answerOption[2].valueCoding = #8
* item[6].answerOption[3].valueCoding = #9
* item[6].answerOption[4].valueCoding = #10

* item[7].linkId = "PROMIS-10_Q10r"
* item[7].text = "In the past 7 days, how often have you been bothered by emotional problems such as feeling anxious, depressed or irritable?"
* item[7].type = #question
* item[7].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[7].answerOption[0].valueCoding = #11
* item[7].answerOption[1].valueCoding = #12
* item[7].answerOption[2].valueCoding = #13
* item[7].answerOption[3].valueCoding = #14
* item[7].answerOption[4].valueCoding = #15

* item[8].linkId = "PROMIS-10_Qo8r"
* item[8].text = "In the past 7 days, how would you rate your fatigue on average?"
* item[8].type = #question
* item[8].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[8].answerOption[0].valueCoding = #16
* item[8].answerOption[1].valueCoding = #17
* item[8].answerOption[2].valueCoding = #18
* item[8].answerOption[3].valueCoding = #19
* item[8].answerOption[4].valueCoding = #20

* item[9].linkId = "PROMIS-10_Qo7r"
* item[9].text = "In the past 7 days, how would you rate your pain on average?"
* item[9].type = #question
* item[9].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-promis10-valueset"
* item[9].answerOption[0].valueCoding = #21
* item[9].answerOption[1].valueCoding = #22
* item[9].answerOption[2].valueCoding = #23
* item[9].answerOption[3].valueCoding = #24
* item[9].answerOption[4].valueCoding = #25
* item[9].answerOption[5].valueCoding = #26
* item[9].answerOption[6].valueCoding = #27
* item[9].answerOption[7].valueCoding = #28
* item[9].answerOption[8].valueCoding = #29
* item[9].answerOption[9].valueCoding = #30
* item[9].answerOption[10].valueCoding = #31


// INSTANCE VR-12 QUESTIONNAIRE
Instance: MolicAVC-VR12Questionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's VR-12 Survey"
Description: "Example of VR-12 for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "VR-12"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "vr12"
* title = "VR-12 (Veterans RAND 12 Item Health Survey)"
* status = #draft
* publisher = "RAND Corporation & Department of Veterans Affairs"
* description = "The VR-12 survey inquires about one's general health status and well-being. It covers areas such 
as physical functioning, bodily pain, general health perceptions, vitality, social functioning, emotional roles, 
and mental health. Derived from the SF-36 and tailored for the veteran population, it offers insights into how 
health impacts an individual's day-to-day life. These questions are about how the patient feels and how things have 
been with you during the past 4 weeks."

* item[0].linkId = "Question 1 of VR-12 - GH1"
* item[0].text = "In general, would you say your health is:"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[0].answerOption[0].valueCoding = #1
* item[0].answerOption[1].valueCoding = #2
* item[0].answerOption[2].valueCoding = #3
* item[0].answerOption[3].valueCoding = #4
* item[0].answerOption[4].valueCoding = #5

* item[1].linkId = "Question 6a of VR-12 - MH3"
* item[1].text = "Have you felt calm and peaceful?"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[1].answerOption[0].valueCoding = #6
* item[1].answerOption[1].valueCoding = #7
* item[1].answerOption[2].valueCoding = #8
* item[1].answerOption[3].valueCoding = #9
* item[1].answerOption[4].valueCoding = #10
* item[1].answerOption[5].valueCoding = #11

* item[2].linkId = "Question 6c of VR-12 - MH4"
* item[2].text = "Have you felt downhearted and blue?"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[2].answerOption[0].valueCoding = #6
* item[2].answerOption[1].valueCoding = #7
* item[2].answerOption[2].valueCoding = #8
* item[2].answerOption[3].valueCoding = #9
* item[2].answerOption[4].valueCoding = #10
* item[2].answerOption[5].valueCoding = #11

* item[3].linkId = "Question 2a of VR-12 - PF2"
* item[3].text = "The following items are about activities you might do during a typical day. Does our health
now limit you in these activities? If so, how much? a. Moderate activities, such as moving a table, pushing a 
vacuum cleaner, bowling, or playing golf."
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[3].answerOption[0].valueCoding = #12
* item[3].answerOption[1].valueCoding = #13
* item[3].answerOption[2].valueCoding = #14

* item[4].linkId = "Question 2b of VR-12 - PF4"
* item[4].text = "b. Climbing several flights of stairs"
* item[4].type = #question
* item[4].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[4].answerOption[0].valueCoding = #12
* item[4].answerOption[1].valueCoding = #13
* item[4].answerOption[2].valueCoding = #14

* item[5].linkId = "Question 7 of VR-12 - SF2"
* item[5].text = "During the past 4 weeks, how much of the time has your physical health or emotional
problems interfered with your social activities (like visiting with friends, relatives, etc.)?"
* item[5].type = #question
* item[5].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[5].answerOption[0].valueCoding = #6
* item[5].answerOption[1].valueCoding = #7
* item[5].answerOption[2].valueCoding = #9
* item[5].answerOption[3].valueCoding = #10
* item[5].answerOption[4].valueCoding = #11

* item[6].linkId = "Question 8 of VR-12 - VR12_Qo8"
* item[6].text = "Now, we'd like to ask you some questions about how your health may have changed.
Compared to one year ago, how would you rate your physical health in general now?"
* item[6].type = #question
* item[6].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[6].answerOption[0].valueCoding = #15
* item[6].answerOption[1].valueCoding = #16
* item[6].answerOption[2].valueCoding = #17
* item[6].answerOption[3].valueCoding = #18
* item[6].answerOption[4].valueCoding = #19

* item[7].linkId = "Question 9 of VR-12 - VR12_Q09"
* item[7].text = "Compared to one year ago, how would you rate your emotional health (such as feeling
anxious, depressed, or irritable) in general now?"
* item[7].type = #question
* item[7].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[7].answerOption[0].valueCoding = #15
* item[7].answerOption[1].valueCoding = #16
* item[7].answerOption[2].valueCoding = #17
* item[7].answerOption[3].valueCoding = #18
* item[7].answerOption[4].valueCoding = #19

* item[8].linkId = "Question 4a of VR-12 - VRE2"
* item[8].text = "During the past 4 weeks, have you had any of the following problems with your work or
other regular daily activities as a result of any emotional problems (such as feeling depressed or anxious)? 
a. Accomplished less than you would like"
* item[8].type = #question
* item[8].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[8].answerOption[0].valueCoding = #20
* item[8].answerOption[1].valueCoding = #21
* item[8].answerOption[2].valueCoding = #22
* item[8].answerOption[3].valueCoding = #23
* item[8].answerOption[4].valueCoding = #24

* item[9].linkId = "Question 4b of VR-12 - VRE3"
* item[9].text = "b. Didn't do work or other activities as carefully as usual"
* item[9].type = #question
* item[9].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[9].answerOption[0].valueCoding = #20
* item[9].answerOption[1].valueCoding = #21
* item[9].answerOption[2].valueCoding = #22
* item[9].answerOption[3].valueCoding = #23
* item[9].answerOption[4].valueCoding = #24

* item[10].linkId = "Question 3a of VR-12 - VRP2"
* item[10].text = "During the past 4 weeks, have you had any of the following problems with your work or
other regular daily activities as a result of your physical health? a. Accomplished less than you would like."
* item[10].type = #question
* item[10].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[10].answerOption[0].valueCoding = #20
* item[10].answerOption[1].valueCoding = #21
* item[10].answerOption[2].valueCoding = #22
* item[10].answerOption[3].valueCoding = #23
* item[10].answerOption[4].valueCoding = #24

* item[11].linkId = "Question 3b of VR-12 - VRP3"
* item[11].text = "b. Were limited in the kind of work or other activities."
* item[11].type = #question
* item[11].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[11].answerOption[0].valueCoding = #20
* item[11].answerOption[1].valueCoding = #21
* item[11].answerOption[2].valueCoding = #22
* item[11].answerOption[3].valueCoding = #23
* item[11].answerOption[4].valueCoding = #24

* item[12].linkId = "Question 6b of VR-12 - VT2"
* item[12].text = "b. Did you have a lot of energy?"
* item[12].type = #question
* item[12].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-vr12-valueset"
* item[12].answerOption[0].valueCoding = #6
* item[12].answerOption[1].valueCoding = #7
* item[12].answerOption[2].valueCoding = #8
* item[12].answerOption[3].valueCoding = #9
* item[12].answerOption[4].valueCoding = #10
* item[12].answerOption[5].valueCoding = #11

// INSTANCE EQ-5D-3L QUESTIONNAIRE
// Link: https://euroqol.org/eq-5d-instruments/sample-demo/
Instance: MolicAVC-EQ5D3LQuestionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's EQ-5D-3L Questionnaire"
Description: "Example of EQ-5D-3L Questionnaire for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "EQ-5D-3L"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "eq5d3l"
* title = "EQ-5D-3L Questionnaire"
* status = #draft
* publisher = "EuroQol Research Foundation"
* description = "The EQ-5D-3L is a widely used health assessment questionnaire that measures health-related 
quality of life. It assesses five major dimensions: mobility, self-care, usual activities, pain/discomfort, 
and anxiety/depression. Each dimension has three severity levels: no problems, moderate problems, and severe problems. 
The EQ-5D-3L is often used to evaluate the impact of health conditions on daily activities and individuals' quality of life. 
It's a concise and effective tool that provides valuable insights into an individual's health status and well-being."

* item[0].linkId = "eq5d3l_Q01"
* item[0].text = "Mobility"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[0].answerOption[0].valueCoding = #1
* item[0].answerOption[1].valueCoding = #2
* item[0].answerOption[2].valueCoding = #3

* item[1].linkId = "eq5d3l_Q02"
* item[1].text = "Self-Care"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[1].answerOption[0].valueCoding = #4
* item[1].answerOption[1].valueCoding = #5
* item[1].answerOption[2].valueCoding = #6

* item[2].linkId = "eq5d3l_Q03"
* item[2].text = "Usual Activities (e.g. work, study, housework, family or leisure activities)"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[2].answerOption[0].valueCoding = #7
* item[2].answerOption[1].valueCoding = #8
* item[2].answerOption[2].valueCoding = #9

* item[3].linkId = "eq5d3l_Q04"
* item[3].text = "Pain / Discomfort"
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[3].answerOption[0].valueCoding = #10
* item[3].answerOption[1].valueCoding = #11
* item[3].answerOption[2].valueCoding = #12

* item[4].linkId = "eq5d3l_Q05"
* item[4].text = "Anxiety / Depression"
* item[4].type = #question
* item[4].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[4].answerOption[0].valueCoding = #13
* item[4].answerOption[1].valueCoding = #14
* item[4].answerOption[2].valueCoding = #15

* item[5].linkId = "eq5d3l_Q06"
* item[5].text = "We would like to know how good or bad your health is TODAY. 100 means the best health you can imagine. 0 means the worst health you can imagine."
* item[5].type = #question
* item[5].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-eq5d3l-valueset"
* item[5].answerOption[0].valueCoding = #16
* item[5].answerOption[1].valueCoding = #17
* item[5].answerOption[2].valueCoding = #18
* item[5].answerOption[3].valueCoding = #19
* item[5].answerOption[4].valueCoding = #20
* item[5].answerOption[5].valueCoding = #21
* item[5].answerOption[6].valueCoding = #22
* item[5].answerOption[7].valueCoding = #23
* item[5].answerOption[8].valueCoding = #24
* item[5].answerOption[9].valueCoding = #25


// INSTANCE smRSq 
Instance: MolicAVC-smRSqQuestionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's simplified modified Rankin Scale Questionnaire (smRSq)"
Description: "Example of simplified modified Rankin Scale Questionnaire for a patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "smRSq"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "smRSq"
* title = "simplified modified Rankin Scale Questionnaire"
* status = #draft
* publisher = "None"
* description = "The Simplified Modified Rankin Scale Questionnaire (smRSq) is a tool designed to assess an individual's level 
of disability or dependence following a medical event, particularly strokes. The smRSq aims to quickly and effectively capture 
the individual's functional status and level of independence in daily activities. By using a concise set of questions, it helps 
healthcare professionals evaluate the impact of the medical event on the patient's quality of life and guide treatment decisions."

* item[0].linkId = "smRSq"
* item[0].text = "simplified modified Rankin Scale questionnaire"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-smrsq-valueset"
* item[0].answerOption[0].valueCoding = #0
* item[0].answerOption[1].valueCoding = #1
* item[0].answerOption[2].valueCoding = #2
* item[0].answerOption[3].valueCoding = #3
* item[0].answerOption[4].valueCoding = #4
* item[0].answerOption[5].valueCoding = #5
* item[0].answerOption[6].valueCoding = #6


// INSTANCE PRÉ & PRÓ STROKE FUNCTIONAL STATUS
Instance: MolicAVC-FunctionalStatus-Questionnaire
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's Prestroke and Poststroke Functional Status"
Description: "Example of Prestroke and Poststroke Functional Status Questionnaire for the patient admitted due to a stroke." 

* identifier.use = #official
* identifier.value = "functional-status"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "functional-status"
* title = "Prestroke and Poststroke Functional Status Questionnaire"
* status = #draft
* publisher = "ICHOM"
* description = "These questions inquire about the individual's functional status before and after a stroke or transient 
ischemic attack (TIA). The questions cover different aspects of daily living, such as ambulation (walking), toileting, 
and dressing. They assess whether the person required assistance in these activities before the stroke/TIA and whether 
they need assistance now. By comparing pre- and post-stroke functional abilities, these questions provide insight into the 
impact of the stroke on the individual's independence and daily activities."

* item[0].linkId = "prestroke-ambulation"
* item[0].text = "Prestroke functional status: Ambulation. Were you able to walk before your stroke or transient ischaemic attack?"
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[0].answerOption[0].valueCoding = #1
* item[0].answerOption[1].valueCoding = #2
* item[0].answerOption[2].valueCoding = #3

* item[1].linkId = "prestroke-toileting"
* item[1].text = "Prestroke functional status: Toileting. Did you need help from anybody to go to the toilet before your stroke or transient ischaemic attack?"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[1].answerOption[0].valueCoding = #4
* item[1].answerOption[1].valueCoding = #5

* item[2].linkId = "prestroke-dressing"
* item[2].text = "Prestroke functional status: Dressing. Did you need help with dressing/undressing before your stroke or transient ischaemic attack?"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[2].answerOption[0].valueCoding = #6
* item[2].answerOption[1].valueCoding = #7

* item[3].linkId = "poststroke-ambulation"
* item[3].text = "Poststroke functional status: Ambulation. Are you able to walk?"
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[3].answerOption[0].valueCoding = #1
* item[3].answerOption[1].valueCoding = #2
* item[3].answerOption[2].valueCoding = #3

* item[4].linkId = "poststroke-toileting"
* item[4].text = "Poststroke functional status: Toileting. Do you need help from anybody to go to the toilet?"
* item[4].type = #question
* item[4].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[4].answerOption[0].valueCoding = #4
* item[4].answerOption[1].valueCoding = #5

* item[5].linkId = "poststroke-dressing"
* item[5].text = "Poststroke functional status: Dressing. Do you need help with dressing/undressing?"
* item[5].type = #question
* item[5].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalstatus-valueset"
* item[5].answerOption[0].valueCoding = #6
* item[5].answerOption[1].valueCoding = #7

// INSTANCE FUNCTIONAL ASPECTS AND REHABILITATION
Instance: MolicAVC-FunctionalAspectsRehabilitation
InstanceOf: MolicAVC_Questionnaire
Usage: #example
Title: "Use case of Molic-AVC's Functional Aspects and Rehabilitation: Feeding, Communication, and Stroke Rehabilitation"
Description: "Example of Functional Aspects and Rehabilitation: Feeding, Communication, and Stroke Rehabilitation." 

* identifier.use = #official
* identifier.value = "fa-rehabilitation"
* identifier.assigner.reference = "ICHOM"

* version = "Available by ICHOM V 5.0.1"
* name = "fa-rehabilitation"
* title = "Functional Aspects and Rehabilitation: Feeding, Communication, and Stroke Rehabilitation"
* status = #draft
* publisher = "ICHOM"
* description = "This instance captures key functional aspects and rehabilitation considerations for stroke patients. 
It addresses feeding needs, including the requirement for feeding tubes such as nasogastric or gastrostomy tubes. 
It also evaluates the ability to communicate effectively and understand information. Furthermore, it investigates the 
inclusion of dedicated stroke rehabilitation during both acute inpatient care and post-acute care, encompassing hospital-based 
and outpatient/home-based settings."

* item[0].linkId = "feeding"
* item[0].text = "Do you need a tube for feeding? For example: a nasogastric tube or a gastrostomy tube."
* item[0].type = #question
* item[0].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalaspectsrehabilitation-valueset"
* item[0].answerOption[0].valueCoding = #0
* item[0].answerOption[1].valueCoding = #1

* item[1].linkId = "communicate"
* item[1].text = "Do you have problems with communication or understanding?"
* item[1].type = #question
* item[1].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalaspectsrehabilitation-valueset"
* item[1].answerOption[0].valueCoding = #0
* item[1].answerOption[1].valueCoding = #1

* item[2].linkId = "rehabilitation_Q01"
* item[2].text = "Rehabilitation inpatient acute care. Did the acute inpatient care include dedicated stroke rehabilitation?"
* item[2].type = #question
* item[2].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalaspectsrehabilitation-valueset"
* item[2].answerOption[0].valueCoding = #0
* item[2].answerOption[1].valueCoding = #1
* item[2].answerOption[2].valueCoding = #999

* item[3].linkId = "rehabilitation_Q02"
* item[3].text = "Rehabilitation post-acute care. Did the post-acute care include dedicated stroke rehabilitation? Dedicated stroke rehabilitation during post-acute care, either hospital-based or out patient/home based."
* item[3].type = #question
* item[3].answerValueSet = "http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-functionalaspectsrehabilitation-valueset"
* item[3].answerOption[0].valueCoding = #0
* item[3].answerOption[1].valueCoding = #1
* item[3].answerOption[2].valueCoding = #999
