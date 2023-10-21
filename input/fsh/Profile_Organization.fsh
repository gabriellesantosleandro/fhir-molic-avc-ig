Profile: MolicAVC_OrganizationProfile
Id: molicavc-organization-profile
Parent: Organization
Title: "Profile of Molic-AVC's Organization"
Description: "The Organization resource in the MOLIC-AVC project encompasses all entities or groups 
involved in the healthcare process and related health services as part of their formal responsibilities. 
Examples include: Primary Care Basic Health Units, Emergency Care Units, Reference Hospital for Stroke, 
public ambulance transport (SAMU), private services, and others."

// RULES
// IDENTIFIER
* identifier 1..* MS
* identifier ^short = "Identifies this organization across multiple systems."
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required)
* identifier.use ^short = "usual | official | temp | secondary | old (If known)."
* identifier.type 0..1 MS
* identifier.type from http://hl7.org/fhir/ValueSet/identifier-type (required)
* identifier.type ^short = "Description of identifier" 
* identifier.system 0..0
* identifier.value 1..1 MS 
* identifier.value ^short = "The value that identify the Organization and it is unique."
* identifier.period 0..0 // Período --> Time períod when id is/was valid for use
* identifier.assigner 0..1 // Reference (Organization) Organization that issued id (may be just text)

//ACTIVE
* active 0..1 MS
* active ^short = "Whether the organization's record is still in active use."

//TYPE
* type 1..1 MS
* type from http://hl7.org/fhir/ValueSet/organization-type (required)
* type ^short = "Kind of organization."

//NAME
* name 1..1 MS
* name ^short = "Name used for the organization"

//ALIAS
* alias 0..0

//DESCRIPTION
* description 0..1 MS
* description ^short = "Additional details about the Organization that could be displayed as further 
information to identify the Organization beyond its name."

//CONTACT
* contact 0..0

//partOf
* partOf 0..1 MS

//endpoint
* endpoint 0..0

//QUALIFICATION
* qualification 0..1 MS
* qualification ^short = "Qualifications, certifications, accreditations, licenses, training, etc. pertaining to the provision of care."
* qualification.identifier 1..1 MS
* qualification.identifier.use 1..1 MS
* qualification.identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* qualification.identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* qualification.identifier.type 0..1 MS
* qualification.identifier.system 0..1 MS
* qualification.identifier.system ^short = "URI - The namespace for the identifier value"
* qualification.identifier.value 1..1 MS
* qualification.identifier.value ^short = "The value that is unique. Healthcare Unit Register Number."
* qualification.identifier.period 0..0
* qualification.identifier.assigner 0..1 
* qualification.identifier.assigner ^short = "Reference (Organization) - Organization that issued id (may be just text)"
* qualification.code 1..1 MS
* qualification.code from https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-code_healthunit-valueset/ (required)
* qualification.code ^short = "Coded representation of the qualification."
* qualification.period 0..1 MS
* qualification.period ^short = "Period during which the qualification is valid."
* qualification.issuer 0..1 MS
* qualification.issuer ^short = "Organization that regulates and issues the qualification"

Alias: UNITCODE = https://molic-avc.gabriellesantosleandro.com/ValueSet/molicavc-code_healthunit-valueset/

// INSTANCE
Instance: MolicAVC-OrganizationExample
InstanceOf: MolicAVC_OrganizationProfile
Usage: #example
Title: "Use case of Molic-AVC's Organization"
Description: "Example instance of an Organization in the Molic-AVC project."

// IDENTIFIER
* identifier[0].use = #official
* identifier[0].value = "ORG-12345"
* identifier[0].type = #org
* identifier[0].assigner.display = "Regulatory Authority of Health Services"

// ACTIVE
* active = true

// TYPE
* type = #prov

// NAME
* name = "Reference Hospital for Stroke"

// DESCRIPTION
* description = "A leading hospital specializing in stroke treatments and rehabilitation."

// partOf
* partOf.reference = "Organization/HospitalGroupABC"

// QUALIFICATION
* qualification.identifier.use = #official
* qualification.identifier.value = "CNES 67890"
* qualification.identifier.assigner.display = "Medical Qualification Authority"
* qualification.code.coding[0].system = UNIT
* qualification.code.coding[0].code = #STROKEHOSP
* qualification.code.coding[0].display = "Public Reference Hospital (CNES - Cadastro Nacional de Estabelecimento Único)"
* qualification.issuer.display = "Medical Qualification Authority"
