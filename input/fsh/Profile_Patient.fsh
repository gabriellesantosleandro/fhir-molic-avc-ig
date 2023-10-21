Profile: MolicAVC_PatientProfile
// Nome do perfil
Id: molicavc-patient-profile
Title: "Profile of Molic-AVC's Patient"
// The `Title` keyword defines the human-readable title on the profile's page in the built
Description: "The Patient Resource of the Molic-AVC Project stores demographics and other administrative information about an individual or animal receiving care or other health-related services."
// Fornece uma descrição detalhada do propósito e uso do perfil
Parent: Patient 
//Especifica que este perfil é baseado no Recurso Patient

//IDENTIFIER
//Slicing
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains officialIdentifier 0..1
//Details for identifier
* identifier 1..*
* identifier.use 1..1 MS
* identifier.use from http://hl7.org/fhir/ValueSet/identifier-use (required) //CODE: usual | official | temp | secondary | old (if dnown)
* identifier.type.coding.system 0..1
* identifier.type.coding.code 0..1
* identifier.system 1..1
* identifier.value 1..1 //Deve ter um número de CPF
* identifier.period 0..1 //Time period when id is/was valid for use
* identifier.assigner 0..1 // REFERENCE ORGANIZATION - Organization that issued id (may be just text)
//Fixing the values
* identifier[officialIdentifier].use = #official
* identifier[officialIdentifier].system = "https://rnds-fhir.saude.gov.br/NamingSystem/cpf"
// Mark elements as MustSupport
* identifier MS

//ACTIVE --> Whether this patient record is in active use.
//Details for active and Must Support
* active 1..1 MS
//Fixing the values
* active = true

//NAME --> A name associated with the individual.
//Details for the name
* name 1..1
* name.use 1..1 //Type: code (usual | official | temp | nickname | anonymous | old | maiden)
* name.text 1..1 // Type: string --> Text representation of the full name
//Fixing the values
* name.use = #official
//Mark elements as MustSupport
* name and name.use and name.text MS

//Elemento que não há necessidade de inserir na BD
* telecom 0..0

//GENDER --> male | female | other | unknown
//Details for the gender and Must Support
* gender 0..0 

//BIRTHDATE --> YYYY-MM-DD
* birthDate 1..1 MS

//ÓBITO DECEASED --> Indicates if the individual is deceased or not
* deceasedDateTime 0..1 MS

//ADDRESS --> An address for the individual
* address 0..1
* address.use 0..1 // Type: code (home | work | temp | old | billing - purpose of this address) Binding: AddressUse (Required)
* address.type 0..1 // Type: code (postal | physical | both) Binding: AddressType (Required)
* address.text 0..1 // Type: string Text representation of the address
* address.city 0..1 // Type: string
* address.district 0..1 // Type: string
* address.state 0..1 // Type: string
* address.postalCode 0..1 // Type: string
* address.country 0..1 // Type: string
* address.period 0..1 // Type: period Time period when address was/is in use
* address.period.start 0..1 // Type: dateTime	Starting time with inclusive boundary
* address.period.end 0..1 // Type: dateTime End time with inclusive boundary, if not ongoing.

//Elemento que não há necessidade de inserir na BD
* maritalStatus 0..0 //Marital (civil) status of a patient / Binding: Marital Status Codes (Extensible)

//Elementos que não há necessidade de inserir na BD
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0

// EXTENÇÕES
// GENDER
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-genderidentity-extension named MolicAVC_GenderIdentityExtension 1..1 MS

// SEX
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-sex-extension named MolicAVC_SexExtension 1..1 MS

// ETHNICITY
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-ethnicity-extension named MolicAVC_EthnicityExtension 0..1 MS

// RACE
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/molicavc-race-extension named MolicAVC_RaceExtension 0..1 MS

// PATIENT'S RESIDENCE PRIOR TO A STROKE
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/living-location-pre-stroke-extension named MolicAVC_LivingLocationPreStrokeExtension 0..1 MS

// PATIENT LIVES ALONE PRIOR TO A STROKE
* extension contains https://molic-avc.gabriellesantosleandro.com/StructureDefinition/live-alone-pre-stroke-extension named MolicAVC_LiveAlonePreStrokeExtension 0..1 MS

Instance: MolicAVC-PatientExample
InstanceOf: MolicAVC_PatientProfile
Usage: #example
Title: "Use case of Molic-AVC's Patient"
Description: "This case study presents a patient profile tailored for the Molic-AVC project, an initiative 
focused on optimizing care for Acute Ischemic Stroke patients. The profile extends the FHIR Patient 
resource with specialized extensions to capture essential data."

* id = "123.456.789-00"
* identifier[officialIdentifier].use = #official
* identifier[officialIdentifier].system = "https://rnds-fhir.saude.gov.br/NamingSystem/cpf"
* identifier[officialIdentifier].value = "123.456.789-00"
* active = true
* name[0].use = #official
* name[0].text = "João da Silva"
* birthDate = "1960-01-01"
* address[0].use = #home
* address[0].type = #physical
* address[0].text = "Rua das Flores, 123, Bairro Jardim, Cidade Maravilhosa, Estado, 12345-678"
* address[0].city = "Joinville"
* address[0].state = "Santa Catarina"
* address[0].postalCode = "89.200-000"
* address[0].country = "Brasil"
* extension[molicavc-genderidentity-extension].valueCodeableConcept = #LA22878-5 "Identifies as male"
* extension[molicavc-sex-extension].valueCodeableConcept = #1 "Male"
* extension[molicavc-ethnicity-extension].valueCodeableConcept = #21028-6 "Hispanic or Latino Ethnicity"
* extension[molicavc-race-extension].valueCodeableConcept = #32697-1 "White or Caucasian Race"
* extension[living-location-pre-stroke-extension].valueCodeableConcept = #1 "At home, with no community support"
* extension[live-alone-pre-stroke-extension].valueCodeableConcept = #2 "No, I shared my household with a spouse/partner or another person (e.g. sibling, children, parents)"

// IMPORTANTE
//* identifier.assigner 1..1 // REFERENCE ORGANIZATION - Organization that issued id (may be just text)