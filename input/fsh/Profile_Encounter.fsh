Profile: MolicAVC_EncounterProfile
Id: molicavc-encounter-profile
Parent: Encounter
Title: "Profile of Molic-AVC's Encounter"
Description: "The Encounter Resource in the MOLIC-AVC project represents the actual interaction between 
a patient and their healthcare provider(s). It's designed to document delivered health services or assess
the patient's health status."

// RULES
// IDENTIFIER
* identifier 1..* MS
* identifier ^short = "Identifier(s) by which this encounter is known."
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* identifier.use ^short = "usual | official | temp | secondary | old (If known)."
* identifier.type 0..0
* identifier.type ^short = "Description of identifier."
* identifier.system 0..0
* identifier.system ^short = "The namespace for the identifier value."
* identifier.value 1..1 MS 
* identifier.value ^short = "Identification registration number."
* identifier.period 0..0
* identifier.period ^short = "Time period when id is/was valid for use."
* identifier.assigner 0..1 
* identifier.assigner ^short = "Organization that issued id (may be just text)."

//STATUS
* status 1..1 MS
* status ^short = "planned | in-progress | on-hold | discharged | completed | cancelled | discontinued |
entered-in-error | unknown "
* status from https://build.fhir.org/valueset-encounter-status.html (required)

//CLASS
* class 1..1 MS
* class ^short = "Classification of patient encounter context - e.g. Inpatient, outpatient."
* class from https://terminology.hl7.org/5.2.0/ValueSet-encounter-class.html (required)

//PRIORITY
* priority 1..1 MS
* priority ^short = "Indicates the urgency of the encounter."
* priority from https://terminology.hl7.org/5.2.0/ValueSet-v3-ActPriority.html (required)

//TYPE
* type 0..1 MS
* type ^short = "Specific type of Encounter (e.g. e-mail consultation, surgical day-care, ...)."
// Fazer um próprio do AVC

//SERVICETYPE
* serviceType 0..* MS
* serviceType ^short = "Specific type of service."
* serviceType from https://terminology.hl7.org/5.2.0/CodeSystem-service-type.html (required)

//SUBJECT
* subject 1..1 MS
* subject ^short = "The patient or group related to this encounter."

//SUBJECT STATUS
* subjectStatus 0..1 MS
* subjectStatus ^short = "The current status of the subject in relation to the Encounter.
arrived | triaged | receiving-care | on-leave | departed "
* subjectStatus from https://build.fhir.org/valueset-encounter-subject-status.html (required)

//EPISOD OF CARE
* episodeOfCare 0..* MS
* episodeOfCare ^short = "Episode(s) of care that this encounter should be recorded against."

//BASEDON
* basedOn 0..* MS
* basedOn ^short = "The request that initiated this encounter."
// Reference (CarePlan | DeviceRequest | MedicationRequest | ServiceRequest | RequestOrchestration 
// | NutritionOrder | VisionPrescription | ImmunizationRecommendation) 

//CARETEAM
* careTeam 0..* MS
* careTeam ^short = "The group(s) that are allocated to participate in this encounter"
// Reference careTeam

//PARTOF
* partOf 0..1 MS
* partOf ^short = "Another Encounter this encounter is part of."

// SERVICEPROVIDER
* serviceProvider 1..1 MS
* serviceProvider ^short = "The organization (facility) responsible for this encounter."

// PARTICIPANT
* participant 1..* MS
* participant ^short = "List of participants involved in the encounter, e.g., receptionist, 
healthcare professionals, among others."
* participant.type 1..1 MS
* participant.type ^short = "Role of participant in encounter."
* participant.type from https://build.fhir.org/valueset-encounter-participant-type.html (required)
* participant.period 1..1 MS
* participant.period ^short = "Period of time during the encounter that the participant participated."
* participant.actor 1..1 MS
* participant.actor ^short = "The individual, device, or service participating in the encounter. Reference:
Patient | Group | RelatedPerson | Practitioner | PractitionerRole | Device | Healthcare Service."

//APPOINTMENT
* appointment 0..1 MS
* appointment ^short = "The appointment that scheduled this encounter. Reference: Appointment."

//VIRTUAL SERVICE
* virtualService 0..* 
* virtualService ^short = "Connection details of a virtual service (e.g. conference call)."

//ACTUAL PERIOD
* actualPeriod 0..1 MS
* actualPeriod ^short = "The actual start and end time of the encounter."

//PLANNED START DATE
* plannedStartDate 0..1
* plannedStartDate ^short = "The planned start date/time (or admission date) of the encounter."

//PLANNED END DATE
* plannedEndDate 0..1
* plannedEndDate ^short = "The planned end date/time (or discharge date) of the encounter."

//LENGTH
* length 0..1
* length ^short = "Actual quantity of time the encounter lasted (less time absent)."

//REASON
* reason 0..* MS
* reason ^short = "The list of medical reasons that are expected to be addressed during the episode of care"
* reason.use 0..*
* reason.use ^short = "What the reason value should be used as e.g. Chief Complaint, Health Concern, Health Maintenance (including screening)."
* reason.use from https://build.fhir.org/valueset-encounter-reason-use.html (required)
* reason.value 0..*
* reason.value ^short = "Reason the encounter takes place, expressed as a code or a reference to another resource. 
For admissions, this can be used for a coded admission diagnosis."
* reason.value from https://build.fhir.org/valueset-encounter-reason.html (required)
//observação: verificar se vale a pena fazer uma extenção e um valueset para os CID'S

//DIAGNOSIS
* diagnosis 0..* MS
* diagnosis ^short = "The list of diagnosis relevant to this encounter."
* diagnosis.condition 0..*  
* diagnosis.condition ^short = "The diagnosis relevant to the encounter"
* diagnosis.condition from https://build.fhir.org/valueset-condition-code.html (required)
* diagnosis.use 0..*
* diagnosis.use ^short = "Role that this diagnosis has within the encounter (e.g. admission, billing, discharge …)."
* diagnosis.use from https://build.fhir.org/valueset-encounter-diagnosis-use.html (required)

//ACCOUNT
* account 0..0
* account ^short = "The set of accounts that may be used for billing for this Encounter."

//DIETPREFERENCE
* dietPreference 0..0
* dietPreference ^short = "Diet preferences reported by the patient."

//SPECIALARRANGEMENT
* specialArrangement 0..0
* specialArrangement ^short = "Wheelchair, translator, stretcher, etc. Binding: Special Arrangements."

//SPECIALCOURTESY
* specialCourtesy 0..0
* specialCourtesy ^short = "Special courtesies (VIP, board member). Binding: Special Courtesy."

//ADMISSION
* admission 0..1 MS
* admission ^short = "Details about the admission to a healthcare service."
* admission.preAdmissionIdentifier 0..1
* admission.preAdmissionIdentifier ^short = "Pre-admission identifier."
* admission.origin 0..1
* admission.origin ^short = "The location/organization from which the patient came before admission."
* admission.admitSource 0..1
* admission.admitSource ^short = "From where patient was admitted (physician referral, transfer)."
* admission.admitSource from https://build.fhir.org/valueset-encounter-admit-source.html (required)
* admission.reAdmission 0..1
* admission.reAdmission ^short = "Indicates that the patient is being re-admitted."
* admission.reAdmission from https://terminology.hl7.org/5.2.0/ValueSet-v2-0092.html (required)
* admission.destination 0..1
* admission.destination ^short = "Location/organization to which the patient is discharged. Reference (Organization)."
* admission.dischargeDisposition 0..1
* admission.dischargeDisposition ^short = "Category or kind of location after discharge."
* admission.dischargeDisposition from https://build.fhir.org/valueset-encounter-discharge-disposition.html (required)

//LOCATION
* location 0..* MS
* location ^short = "List of locations where the patient has been."
* location.location 1..1 
* location.location ^short = "Location the encounter takes place."
* location.status 0..1
* location.status ^short = "planned | active | reserved | completed"
* location.status from https://build.fhir.org/valueset-encounter-location-status.html (required)
* location.form 0..1
* location.form ^short = "The physical type of the location (usually the level in the location hierarchy - bed, room, ward, virtual etc.)"
* location.period 0..1
* location.period ^short = "Time period during which the patient was present at the location."

// INSTANCE
Instance: MolicAVC-EncouterExample
InstanceOf: MolicAVC_EncounterProfile
Usage: #example
Title: "Use case of Molic-AVC's Encounter"
Description: "Example instance of an encounter for a patient admitted due to a stroke."

* status = #in-progress
* class = #inpatient

// Identifier
* identifier[0].use = #usual
* identifier[0].value = "AVC2023-123456"

// Subject
* subject = Reference(Patient/JohnDoeStrokePatient)

// Participant
* participant.type = #doctor
* participant.period.start = "2023-08-15T09:00:00Z"
* participant.period.end = "2023-08-15T11:00:00Z"
* participant.actor = Reference(Practitioner/StrokeSpecialistDrSmith)

// ServiceProvider
* serviceProvider = Reference(Organization/StrokeCenterHospital)

// Priority
* priority.coding[0].system = "https://terminology.hl7.org/5.2.0/ValueSet-v3-ActPriority.html"
* priority.coding[0].code = #EM

// SubjectStatus
* subjectStatus = #receiving-care

// EpisodeOfCare
* episodeOfCare = Reference(EpisodeOfCare/JohnDoeStrokeEpisode)

// CareTeam
* careTeam = Reference(CareTeam/StrokeCareTeam)

// Location
* location[0].location = Reference(Location/neurologyWard)
* location[0].status = #active
* location[0].period.start = "2023-08-15T09:00:00Z"
* location[0].period.end = "2023-08-25T11:00:00Z"  // Supondo que o paciente ficou 10 dias internado

// Admission details
* admission.preAdmissionIdentifier.system = "http://example.org/hospital-admission-system"
* admission.preAdmissionIdentifier.value = "EMERG-2023-56789"
* admission.origin = Reference(Organization/LocalClinic)
* admission.admitSource.coding[0].system = "http://hl7.org/fhir/admit-source"
* admission.admitSource.coding[0].code = #emd
* admission.reAdmission.coding[0].system = "http://hl7.org/fhir/re-admission"
* admission.reAdmission.coding[0].code = #R
* admission.destination = Reference(Organization/RehabilitationCenter)
* admission.dischargeDisposition.coding[0].system = "http://hl7.org/fhir/discharge-disposition"
* admission.dischargeDisposition.coding[0].code = #rehab

// Reason for the encounter
// * reasonCode[0].coding[0].system = "https://build.fhir.org/valueset-encounter-reason.html"
// * reasonCode[0].coding[0].code = "stroke"

// Diagnosis
// * diagnosis[0].condition = Reference("Condition/JohnDoeStrokeCondition")
* diagnosis[0].use.coding[0].system = "https://build.fhir.org/valueset-encounter-diagnosis-use.html"
* diagnosis[0].use.coding[0].code = #working
