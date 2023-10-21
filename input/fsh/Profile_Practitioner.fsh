Profile: MolicAVC_PractitionerProfile
Id: molicavc-practitioner-profile
Parent: Practitioner
Title: "Profile of Molic-AVC's Practitioner"
Description: "The Practitioner Resource in the MOLIC-AVC project encompasses all individuals involved in the healthcare process and related health services as part of their formal responsibilities. This Resource is utilized to assign activities and responsibilities to these individuals. Examples include: doctors, nurses, therapists, receptionists, and so on."

// RULES
// IDENTIFIER
* identifier 1..1 MS
* identifier ^short = "An identifier for the person as this agent. This is a business identifier, not a resource identifier."
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* identifier.use ^short = "usual | official | temp | secondary | old (If known)."
* identifier.type 0..0 
* identifier.system 0..0
* identifier.value 1..1 MS 
* identifier.value ^short = "Identification registration number."
* identifier.period 0..0 // Período --> Time períod when id is/was valid for use
* identifier.assigner 0..1 // Reference (Organization) Organization that issued id (may be just text)

//ACTIVE
* active 0..1 MS
* active ^short = "Whether this practitioner's record is in active use."

//NAME
* name 0..1 MS
* name ^short = "The name(s) associated with the practitioner"
* name.use 0..0
* name.text 1..1 MS 
* name.text ^short = "Text representation of the full name"
* name.family 0..0
* name.given 0..0
* name.prefix 0..0
* name.suffix 0..0
* name.period 0..0

//TELECOM --> Não inserir
* telecom 0..0

//GENDER --> Não inserir
* gender 0..0

//BIRTHDATE --> Não inserir
* birthDate 0..0

//DECEASED --> Opcional
* deceasedBoolean 0..1 MS

//ADDRESS --> Não inserir
* address 0..0

//PHOTO --> Não inserir
* photo 0..0

//QUALIFICATION --> Analisar
* qualification.identifier 1..1 MS
* qualification.identifier ^short = "An identifier for this qualification for the practitioner"
* qualification.identifier.use 1..1 MS
* qualification.identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* qualification.identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* qualification.identifier.type 0..1 MS
* qualification.identifier.system 0..1 MS
* qualification.identifier.system ^short = "URI - The namespace for the identifier value"
* qualification.identifier.value 1..1 MS
* qualification.identifier.value ^short = "The value that is unique. Profissional Register Number."
* qualification.identifier.period 0..0
* qualification.identifier.assigner 0..1 
* qualification.identifier.assigner ^short = "Reference (Organization) - Organization that issued id (may be just text)"
* qualification.code 1..1 MS
* qualification.code 1..1 
* qualification.code from http://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-professionalcode-valueset (required) 
* qualification.code ^short = "Coded representation of the qualification"
* qualification.period 0..0 // Period during which the qualification is valid
* qualification.issuer 0..1 MS
* qualification.issuer ^short = "Reference (Organization) - Organização that regulates and issues the qualification."

// COMMUNICATION
* communication 0..0 // The language code used to communicate with the pactitioner.

// INSTANCE
Instance: MolicAVC-DoctorExample
InstanceOf: MolicAVC_PractitionerProfile
Usage: #example
Title: "Use case of Molic-AVC's Practitioner"
Description: "Example instance of a doctor in the Molic-AVC project."

* identifier.use = #official
* identifier.value = "CRM-SC12345"
* active = true
* name.text = "Dra. Maria Betânia"
* deceasedBoolean = false
* qualification.identifier.value = "CRM-SC 12345"
* qualification.identifier.use = #official
* qualification.code = #Doctor
