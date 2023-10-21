Profile: MolicAVC_Observation
Parent: Observation
Id: molicavc-observation-profile
Title: "Profile of Molic-AVC's Observation"
Description: "Observations are a central element in healthcare, used to support diagnosis, monitor progress, determine baselines 
and patterns and even capture demographic characteristics, as well as capture results of tests performed on products and substances. 
Most observations are simple name/value pair assertions with some metadata, but some observations group other observations together 
logically, or even are multi-component observations."

// IDENTIFIER
* identifier 0..* MS
* identifier only Identifier
* identifier ^short = "Business Identifier for Observation."
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

// INSTANTIATES[X]
* instantiates[x] 0..1
* instantiates[x] ^short = "Instantiates FHIR ObservationDefinition."
* instantiatesCanonical 0..1
* instantiatesCanonical only Canonical(ObservationDefinition)
* instantiatesReference 0..1
* instantiatesReference only Reference(ObservationDefinition)

//BASEDON
* basedOn 0..* MS
* basedOn only Reference(CarePlan or DeviceRequest or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequest)
* basedOn ^short = "Fulfills plan, proposal or order."

//TRIGGEREDBY
* triggeredBy 0..* MS
* triggeredBy only BackboneElement
* triggeredBy ^short = "Identifies the observation(s) that triggered the performance of this observation."
* triggeredBy.observation 1..1
* triggeredBy.observation only Reference(Observation)
* triggeredBy.observation ^short = "Reference to the triggering observation."
* triggeredBy.type 1..1
* triggeredBy.type from http://hl7.org/fhir/ValueSet/observation-triggeredbytype.html (required)
* triggeredBy.type ^short = "reflex | repeat | re-run"
* triggeredBy.reason 0..1
* triggeredBy.reason only string
* triggeredBy.reason ^short = "Reason that the observation was triggered."

//PARTOF
* partOf 0..* MS
* partOf only Reference(MedicationAdministration or MedicationDispense or MedicationStatement or Procedure or Immunization or ImagingStudy or GenomicStudy)
* partOf ^short = "A larger event of which this particular Observation is a component or step. For example, an observation as part of a procedure."

//STATUS
* status 1..1 MS
* status only code
* status from http://hl7.org/fhir/ValueSet/observation-status.html (required)
* status ^short = "registered | preliminary | final | amended | corrected | cancelled | entered-in-error | unknown"

//CATEGORY
* category 0..* MS
* category ^short = "A code that classifies the general type of observation being made. Codes: social-history | vital-signs | imaging |
laboratory | procedure | survey | exam | therapy | activity."
* category from https://build.fhir.org/valueset-observation-category.html (preferred)
* category only CodeableConcept

//CODE
* code 1..1 MS
* category ^short = "Describes what was observed. Sometimes this is called the observation 'name'."
* category from https://build.fhir.org/valueset-observation-codes.html (preferred)
* category only CodeableConcept

//SUBJECT
* subject 0..1 MS
* subject ^short = "The patient, or group of patients, location, device, organization, procedure or practitioner this 
observation is about and into whose or what record the observation is placed. If the actual focus of the observation is 
different from the subject (or a sample of, part, or region of the subject), the focus element or the code itself specifies 
the actual focus of the observation."
* subject only Reference(Patient or Group or Device or Location or Organization or Procedure or Practitioner or Medication or Substance or BiologicallyDerivedProduct or NutritionProduct)

//FOCUS
* focus 0..* MS
* focus ^short = "The actual focus of an observation when it is not the patient of record representing something or someone 
associated with the patient such as a spouse, parent, fetus, or donor. For example, fetus observations in a mother's record. 
The focus of an observation could also be an existing condition, an intervention, the subject's diet, another observation of 
the subject, or a body structure such as tumor or implanted device. An example use case would be using the Observation 
resource to capture whether the mother is trained to change her child's tracheostomy tube. In this example, the child is the 
patient of record and the mother is the focus."

//ENCOUNTER
* encounter 0..1 MS
* encounter ^short = "The healthcare event (e.g. a patient and healthcare provider interaction) during which this observation is made."
* encounter only Reference(Encounter)

//EFFECTIVE[X]
* effective[x] 0..1 MS
* effective[x] ^short = "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. 
human patients - this is usually called the 'physiologically relevant time'. This is usually either the time of the procedure 
or of specimen collection, but very often the source of the date/time is not known, only the date/time itself."
* effectiveDateTime only dateTime
* effectivePeriod only Period
* effectiveTiming only Timing

//ISSUED
* issued 0..1 MS
* issued ^short = "The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified."

//PERFORMER
* performer 0..* MS
* performer ^short = "Who is responsible for the observation."
* performer only Reference(Practitioner or PractitionerRole or Organization or CareTeam or Patient or RelatedPerson)

//VALUE[X]
* value[x] 0..1 MS
* value[x] ^short = "The information determined as a result of making the observation, if the information has a simple value."
* valueQuantity only Quantity
* valueCodeableConcept only CodeableConcept
* valueString only string
* valueBoolean only boolean
* valueInteger only integer
* valueRange only Range 
* valueRatio only Ratio 
* valueSampledData only SampledData 
* valueTime only time
* valueDateTime only dateTime
* valuePeriod only Period
* valueAttachment only Attachment
* valueReference only Reference(MolecularSequence)

//DATAABSENTREASON
* dataAbsentReason 0..1 MS
* dataAbsentReason ^short = "Provides a reason why the expected value in the element Observation.value[x] is missing. Codes:
unknown | asked-unknown | temp-unknown | not-asked | asked-declined | masked | not-applicable | unsupported | as-text |
error | not-a-number | negative-infinity | positive-infinity | not-performed | not-permitted"
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason.html
* dataAbsentReason ^binding.strength = #extensible
* dataAbsentReason only CodeableConcept

//INTERPRETATION
* interpretation 0..* MS
* interpretation ^short = "A categorical assessment of an observation value. For example, high, low, normal."
* interpretation from https://build.fhir.org/valueset-observation-interpretation.html
* interpretation ^binding.strength = #extensible
* interpretation only CodeableConcept

//NOTE
* note 0..* MS
* note ^short = "Comments about the observation or the results."
* note only Annotation

//BODYSITE
* bodySite 0..1 MS
* bodySite ^short = "Indicates the site on the subject's body where the observation was made (i.e. the target site)."
* bodySite from http://hl7.org/fhir/ValueSet/body-site.html (example)
* bodySite only CodeableConcept

//BODYSTRUCTURE
* bodyStructure 0..1 MS
* bodyStructure ^short = "Indicates the body structure on the subject's body where the observation was made (i.e. the target site)."

//METHOD
* method 0..1
* method ^short = "Indicates the mechanism used to perform the observation."
* method from http://hl7.org/fhir/ValueSet/observation-methods.html (example)
* method only CodeableConcept

//SPECIMEN
* specimen 0..1 MS
* specimen ^short = "The specimen that was used when this observation was made."
* specimen only Reference(Specimen or Group)

//DEVICE
* device 0..1 MS
* device ^short = "A reference to the device that generates the measurements or the device settings for the device."
* device only Reference(Device or DeviceMetric)

//REFERENCERANGE
* referenceRange 0..* MS
* referenceRange ^short = "Provides guide for interpretation. Guidance on how to interpret the value by comparison to a normal or recommended range. Multiple 
reference ranges are interpreted as an 'OR'. In other words, to represent two distinct target populations, two referenceRange 
elements would be used."

//REFERENCERANGE.LOW
* referenceRange.low 0..1 MS
* referenceRange.low ^short = "The value of the low bound of the reference range. The low bound of the reference range endpoint is 
inclusive of the value (e.g. reference range is >=5 - <=9). If the low bound is omitted, it is assumed to be meaningless 
(e.g. reference range is <=2.3)"
* referenceRange.low only SimpleQuantity

//REFERENCERANGE.HIGH
* referenceRange.high 0..1 MS
* referenceRange.high ^short = "The value of the high bound of the reference range. The high bound of the reference range endpoint 
is inclusive of the value (e.g. reference range is >=5 - <=9). If the high bound is omitted, it is assumed to be meaningless 
(e.g. reference range is >= 2.3)."
* referenceRange.high only SimpleQuantity

//REFERENCERANGE.NORMALVALUE
* referenceRange.normalValue 0..1 MS
* referenceRange.normalValue ^short = "The value of the normal value of the reference range."
* referenceRange.normalValue only CodeableConcept
* referenceRange.normalValue from http://hl7.org/fhir/ValueSet/observation-referencerange-normalvalue.html
* referenceRange.normalValue ^binding.strength = #extensible

//REFERENCERANGE.TYPE
* referenceRange.type 0..1 MS
* referenceRange.type ^short = "Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range."
* referenceRange.type only CodeableConcept
* referenceRange.type from http://hl7.org/fhir/ValueSet/referencerange-meaning.html (preferred)

//REFERENCERANGE.APPLIESTO
* referenceRange.appliesTo 0..* MS
* referenceRange.appliesTo ^short = " Codes to indicate the target population this reference range applies to. For example, 
a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an 
'AND' of the target populations. For example, to represent a target population of African American females, both a code of 
female and a code for African American would be used."
* referenceRange.appliesTo only CodeableConcept
* referenceRange.appliesTo from http://hl7.org/fhir/ValueSet/referencerange-appliesto.html (example)

//REFERENCERANGE.AGE
* referenceRange.age 0..1 MS
* referenceRange.age ^short = "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so."
* referenceRange.age only Range

//REFERENCERANGE.TEXT
* referenceRange.text 0..1 MS
* referenceRange.text ^short = "Text based reference range in an observation which may be used when a quantitative range is not 
appropriate for an observation. An example would be a reference value of 'Negative' or a list or table of 'normals'."
* referenceRange.text only markdown

//HASMEMBER
* hasMember 0..* MS
* hasMember ^short = "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements)
 that includes the target as a member of the group."
* hasMember only Reference(Observation or QuestionnaireResponse or MolecularSequence)

//DERIVEDFROM
* derivedFrom 0..* MS
* derivedFrom ^short = "The target resource that represents a measurement from which this observation value is derived."
* derivedFrom only Reference(DocumentReference or ImagingStudy or ImagingSelection or QuestionnaireResponse or Observation or MolecularSequence or GenomicStudy)

//COMPONENT
* component 0..* MS
* component ^short = "Some observations have multiple component observations. These component observations are expressed as 
separate code value pairs that share the same attributes. Examples include systolic and diastolic component observations for 
blood pressure measurement and multiple component observations for genetics observations."
* component only BackboneElement

//COMPONENT.CODE
* component.code 1..1 MS
* component.code ^short = "Describes what was observed. Sometimes this is called the observation 'code'."
* component.code from http://hl7.org/fhir/ValueSet/observation-codes.html (example)
* component.code only CodeableConcept

//COMPONENT.VALUE[X]
* component.value[x] 0..1 MS
* component.value[x] ^short = "The information determined as a result of making the observation, if the information has a simple value."
* component.valueQuantity only Quantity
* component.valueCodeableConcept only CodeableConcept
* component.valueString only string
* component.valueBoolean only boolean
* component.valueInteger only integer
* component.valueRange only Range
* component.valueRatio only Ratio
* component.valueSampledData only SampledData
* component.valueTime only time
* component.valueDateTime only dateTime
* component.valuePeriod only Period
* component.valueAttachment only Attachment
* component.valueReference only Reference(MolecularSequence)

//COMPONENT.DATAABSENTREASON
* component.dataAbsentReason 0..1 MS
* component.dataAbsentReason ^short = "Provides a reason why the expected value in the element Observation.component.value[x] is missing."
* component.dataAbsentReason only CodeableConcept
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason.html
* component.dataAbsentReason ^binding.strength = #extensible

//COMPONENT.INTERPRETATION
* component.interpretation 0..* MS
* component.interpretation ^short = "A categorical assessment of an observation value. For example, high, low, normal."
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation.html
* component.interpretation ^binding.strength = #extensible
* component.interpretation only CodeableConcept

//COMPONENT.REFERENCERANGE
* component.referenceRange 0..* MS
* component.referenceRange ^short = "Guidance on how to interpret the value by comparison to a normal or recommended range."

//COMPONENT.REFERENCERANGE.LOW
* component.referenceRange.low 0..1 MS
* component.referenceRange.low ^short = "The value of the low bound of the reference range. The low bound of the reference range endpoint is 
inclusive of the value (e.g. reference range is >=5 - <=9). If the low bound is omitted, it is assumed to be meaningless 
(e.g. reference range is <=2.3)"
* component.referenceRange.low only SimpleQuantity

//COMPONENT.REFERENCERANGE.HIGH
* component.referenceRange.high 0..1 MS
* component.referenceRange.high ^short = "The value of the high bound of the reference range. The high bound of the reference range endpoint 
is inclusive of the value (e.g. reference range is >=5 - <=9). If the high bound is omitted, it is assumed to be meaningless 
(e.g. reference range is >= 2.3)."
* component.referenceRange.high only SimpleQuantity

//COMPONENT.REFERENCERANGE.NORMALVALUE
* component.referenceRange.normalValue 0..1 MS
* component.referenceRange.normalValue ^short = "The value of the normal value of the reference range."
* component.referenceRange.normalValue only CodeableConcept
* component.referenceRange.normalValue from http://hl7.org/fhir/ValueSet/observation-referencerange-normalvalue.html
* component.referenceRange.normalValue ^binding.strength = #extensible

//COMPONENT.REFERENCERANGE.TYPE
* component.referenceRange.type 0..1 MS
* component.referenceRange.type ^short = "Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range."
* component.referenceRange.type only CodeableConcept
* component.referenceRange.type from http://hl7.org/fhir/ValueSet/referencerange-meaning.html (preferred)

//COMPONENT.REFERENCERANGE.APPLIESTO
* component.referenceRange.appliesTo 0..* MS
* component.referenceRange.appliesTo ^short = " Codes to indicate the target population this reference range applies to. For example, 
a reference range may be based on the normal population or a particular sex or race. Multiple appliesTo are interpreted as an 
'AND' of the target populations. For example, to represent a target population of African American females, both a code of 
female and a code for African American would be used."
* component.referenceRange.appliesTo only CodeableConcept
* component.referenceRange.appliesTo from http://hl7.org/fhir/ValueSet/referencerange-appliesto.html (example)

//COMPONENT.REFERENCERANGE.AGE
* component.referenceRange.age 0..1 MS
* component.referenceRange.age ^short = "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so."
* component.referenceRange.age only Range

//COMPONENT.REFERENCERANGE.TEXT
* component.referenceRange.text 0..1 MS
* component.referenceRange.text ^short = "Text based reference range in an observation which may be used when a quantitative range is not 
appropriate for an observation. An example would be a reference value of 'Negative' or a list or table of 'normals'."
* component.referenceRange.text only markdown

//EXTENSIONS

// STROKE WINDOW
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-strokewindow-extension named MolicAVC_StrokeWindowExtension 0..1 MS
* extension[MolicAVC_StrokeWindowExtension] ^short = "Brief hours post-symptom onset when prompt intervention reduces brain damage, lasting up to 4.5-12 hours."

// SYMPTOM DURANTION
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-symptomduration-extension named MolicAVC_SymptomDurationExtension 0..1 MS
* extension[MolicAVC_SymptomDurationExtension] ^short = "Duration of symptoms. Indicate the duration of the symptoms measured on hospital arrival. Codes: '0 = Less than 4.5 hours' |
'1 = More than 4.5 hours' | '999 = Unknown'"

// NIHSS
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-nihss-extension named MolicAVC_NIHSSExtension 0..1 MS
* extension[MolicAVC_NIHSSExtension] ^short = "Stroke severity score. Stroke severity as measured by the NIH Stroke Scale (NIHSS). Report the raw (uncategorized) NIHSS score."

// NIHSS CATEGORY
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-nihsscategory-extension named MolicAVC_NIHSSCategoryExtension 0..1 MS
* extension[MolicAVC_NIHSSCategoryExtension] ^short = "Estimated stroke severity: category. Indicate the estimated stroke severity category by the NIH Stroke Scale (NIHSS)."

// CONSCIOUSNESS
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-consciousness-extension named MolicAVC_ConsciousnessExtension 0..1 MS
* extension[MolicAVC_ConsciousnessExtension] ^short = "Stroke severity: consciousness. Indicate the patient’s level of consciousness measured on hospitalar arrival."

// SMOKING STATUS
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-smokingstatus-extension named MolicAVC_SmokingStatusExtension 0..1 MS
* extension[MolicAVC_SmokingStatusExtension] ^short = "A person's current and past smoking behavior."

// ALCOHOL AMOUNT
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-alcoholamount-extension named MolicAVC_AlcoholAmountExtension 0..1 MS
* extension[MolicAVC_AlcoholAmountExtension] ^short = "Alcohol intake amount. A person's self-reported usual number of alcohol-containing standard drinks on a typical week. 
How many standard alcoholic drinks do you drink per week? One standard drink is equal to 12.5ml of pure alcohol, or roughly 1 small glass of wine/25cl of regular beer (5% alcohol). "

//TOMOGRAPHY
//* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-tomography-extension named MolicAVC_TomographyExtension 0..1 MS
//* extension[MolicAVC_TomographyExtension] ^short = "Indicate whether the patient has ever been underwent to a tomography."

//ANGIOGRAPHY
//* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-angiography-extension named MolicAVC_AngiographyExtension 0..1 MS
//* extension[MolicAVC_AngiographyExtension] ^short = "Indicate whether the patient has ever been underwent to a angiography."
 
//