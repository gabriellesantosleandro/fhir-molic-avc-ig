Instance: ClinicalResponseBaseline
InstanceOf: Questionnaire
Usage: #example
Title: "Questionário de coleta de dados no Primeiro Atendimento ao AVC pelo Médico ou Profissional de Saúde"
Description: "Questionário aplicado pelo profissional médico ou profissional de saúde no Primeiro atendimento ao AVC"
* insert PublicationInstanceRuleset

* identifier.use = #official
* identifier.value = "ClinicalResponseBaseline"
* identifier.assigner.reference = "ICHOM"

//Define o nome da Instância como ClinicalResponseBaseline
* version = "Available by ICHOM 5.0.1"
* name = "ClinicalResponseBaseline"
* title = "Questionário Inicial aplicado pelo Médico ou Profissional de Saúde"
* status = #draft
// Inicia a definição de uma extensão. No FHIR, extensões são usadas para adicionar informações adicionais que não são cobertas pela especificação padrão.
* extension[0]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  //
  // Launch Context: always patient
  //
  * extension[0]
    * url = "name"
    * valueCoding
      * code = #patient
      * system = "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext"
      * display = "Patient"
  * extension[1]
    * url = "type"
    * valueCode = #Patient
  * extension[2]
    * url = "description"
    * valueString = "Informações do paciente a serem preenchidas previamente no formulário."

// GRUPO 1 - INFORMAÇÕES GERAIS (TODOS OS FORMULÁRIOS)
// * item[+] Indica o início da definição de um novo item ou questão no questionário
* item[0]
    //linkId Fornece um identificador único para este item
* item[0].linkId = "General-Information-Clinical"
    // type Indica que este item é do tipo "grupo", que significa que podem conter outros itens dentro dele.
* item[0].type = #group
    // text Este é o texto que será exibido para este ítem.
* item[0].text = "Informações Gerais"
    // required true indica que este item é obrigatório
* item[0].required = true

    //Esta é a definição de uma subquestão dentro do grupo de informações gerais.
* item[0].item[0]
        // O identificador único para esta subquestão.
* item[0].item[0].linkId = "CPF"
        // Indica que a resposta para esta questão será uma string (texto).
* item[0].item[0].type = #string 
        // O texto da questão que será mostrado.
* item[0].item[0].text = "Qual o CPF do paciente? No formato: 000.000.000-00"
        // Indica que esta questão é obrigatória.
* item[0].item[0].required = true
        // Inicia uma extensão para esta questão.
        // Define o tipo ou propósito desta extensão.
* item[0].item[0].extension[+].url = InitialExpressionEx
        // Define uma expressão de valor.
        // Indica a linguagem da expressão.
* item[0].item[0].extension[0].valueExpression.language = #text/fhirpath
        // Indica a linguagem da expressão.
* item[0].item[0].extension[0].valueExpression.expression = "%patient.id"

* item[0].item[1]
* item[0].item[1].linkId = "FullName-Clinical"
* item[0].item[1].type = #string
* item[0].item[1].text = "Qual é o nome completo do paciente?"
* item[0].item[1].required = true
* item[0].item[1].extension[+].url = InitialExpressionEx
* item[0].item[1].extension[0].valueExpression.language = #text/fhirpath
* item[0].item[1].extension[0].valueExpression.expression = "%patient.name.first().given.join(' ') + ' ' + %patient.name.first().family"

// GRUPO 2 - INFORMAÇÕES DEMOGRÁFICAS
* item[1]
* item[1].linkId = "Demographics"
* item[1].type = #group
* item[1].text = "Fatores Demográficos"
* item[1].required = true

* item[1].item[0]
* item[1].item[0].linkId = "Sex"
* item[1].item[0].type = #question
* item[1].item[0].text = "Indica o sexo do paciente no nascimento:"
* item[1].item[0].answerValueSet = Canonical(AdministrativeGenderVS)
* item[1].item[0].required = true
* item[1].item[0].extension[+].url = VariableEx
//* item[2].item[1].extension[0].valueExpression.name = "expandedGender"
* item[1].item[0].extension[0].valueExpression.language = #application/x-fhir-query
* item[1].item[0].extension[0].valueExpression.expression = "ValueSet/$expand?url=http://hl7.org/fhir/ValueSet/administrative-gender"
* item[1].item[0].extension[+].url = InitialExpressionEx
* item[1].item[0].extension[1].valueExpression.language = #text/fhirpath
* item[1].item[0].extension[1].valueExpression.expression = "%expandedGender.expansion.contains.where(code=%patient.gender)"

* item[1].item[1]
* item[1].item[1].linkId = "YearOfBirth"
* item[1].item[1].type = #integer
* item[1].item[1].text = "Em qual ano o paciente nasceu?"
* item[1].item[1].required = true
* item[1].item[1].maxLength = 4
* item[1].item[1].extension[+].url = InitialExpressionEx
* item[1].item[1].extension[0].valueExpression.language = #text/fhirpath
* item[1].item[1].extension[0].valueExpression.expression = "%patient.birthDate.substring(0,4)"

// GRUPO 3 - TIPO DO AVC
* item[2]
* item[2].linkId = "Stroke-Type-Clinical"
* item[2].type = #group
* item[2].text = "Tipo do AVC"
* item[2].required = true

* item[2].item[0]
* item[2].item[0].linkId = "StrokeType"
* item[2].item[0].type = #question
* item[2].item[0].text = "Indique o tipo do AVC"
* item[2].item[0].answerValueSet = Canonical(StrokeTypeVS)
* item[2].item[0].required = true

* item[2].item[1]
* item[2].item[1].linkId = "StrokeSev-NIHSS"
* item[2].item[1].type = #integer
* item[2].item[1].text = "Indique a gravidade do AVC de acordo com a Escala para AVC NIHSS (valor numérico entre 1 e 42)"
* item[2].item[1].required = true
* item[2].item[1].maxLength = 2

* item[2].item[2]
* item[2].item[2].linkId = "Est-StrokeSev-NIHSS-Cat"
* item[2].item[2].type = #question
* item[2].item[2].text = "Indique a categoria de gravidade estimada do AVC de acordo com a NIHSS"
* item[2].item[2].answerValueSet = Canonical(EstStrokeSevNIHSSCatVS)
* item[2].item[2].required = true
    
* item[2].item[3]
* item[2].item[3].linkId = "StrokeSev-Loc"
* item[2].item[3].type = #question
* item[2].item[3].text = "Indique o nível de consciência do paciente aferido na chegada do hospital"
* item[2].item[3].answerValueSet = Canonical(StrokeSevLocVS)
* item[2].item[3].required = true
    
* item[2].item[4]
* item[2].item[4].linkId = "Symtdur"
* item[2].item[4].type = #question
* item[2].item[4].text = "Classifique o tempo de duração do início dos sintomas de AVC até a chegada do hospital"
* item[2].item[4].answerValueSet = Canonical(SymtDurVS)
* item[2].item[4].required = true
    

// GRUPO 4 - VASCULAR E SISTÊMICO
* item[3]
* item[3].linkId = "Vascular-Systemic"
* item[3].type = #group
* item[3].text = "Vascular e Sistêmico"
* item[3].required = true

* item[3].item[0]
* item[3].item[0].linkId = "PriorStrokeExclTIA"
* item[3].item[0].type = #question
* item[3].item[0].text = "Indique se o paciente já teve um AVC anteriormente diagnosticado por um médico. Observação: Exclui ataque isquêmico transitório"
* item[3].item[0].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[0].required = true

* item[3].item[1]
* item[3].item[1].linkId = "PriorTIA"
* item[3].item[1].type = #question
* item[3].item[1].text = "Indique se o paciente já foi anteriormente diagnosticado com um Ataque Isquêmico Transitório"
* item[3].item[1].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[1].required = true
    
* item[3].item[2]
* item[3].item[2].linkId = "MyocardialInfarction"
* item[3].item[2].type = #question
* item[3].item[2].text = "Indique se o paciente já foi diagnosticado com Infarto do Miocárdio"
* item[3].item[2].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[2].required = true

* item[3].item[3]
* item[3].item[3].linkId = "IschemicHeartDisease"
* item[3].item[3].type = #question
* item[3].item[3].text = "Indique se o paciente já foi anteriormente diagnosticado com Doença Isquêmica do Coração"
* item[3].item[3].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[3].required = true

* item[3].item[4]
* item[3].item[4].linkId = "AtrialFibFlut"
* item[3].item[4].type = #question
* item[3].item[4].text = "Indique se o paciente já foi anteriormente diagnosticado com Fibrilação ou Flutter Atrial"
* item[3].item[4].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[4].required = true

* item[3].item[5]
* item[3].item[5].linkId = "DiabetesMellitus"
* item[3].item[5].type = #question
* item[3].item[5].text = "Indique se o paciente tem histórico documentado de diabetes mellitus (independentemente da duração da doença ou da necessidade de medicação)"
* item[3].item[5].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[5].required = true

* item[3].item[6]
* item[3].item[6].linkId = "HypertensiveDisease"
* item[3].item[6].type = #question
* item[3].item[6].text = "Indique se o paciente tem histórico documentado de hipertensão, diagnosticado e tratado com medicação e/ou dieta e/ou exercício físico"
* item[3].item[6].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[6].required = true

* item[3].item[7]
* item[3].item[7].linkId = "HyperLip"
* item[3].item[7].type = #question
* item[3].item[7].text = "Indique se o paciente já foi diagnosticado com hiperlipidemia"
* item[3].item[7].answerValueSet = Canonical(NoYesUnknownVS)
* item[3].item[7].required = true

// GRUPO 5 - TRATAMENTO/ CUIDADO REFERIDO
* item[4]
* item[4].linkId = "Treatment-related"
* item[4].type = #group
* item[4].text = "Tratamento/ Cuidados relatados"
* item[4].required = true

* item[4].item[0]
* item[4].item[0].linkId = "Diagnosis"
* item[4].item[0].type = #question
* item[4].item[0].text = "Indique como o diagnóstico foi feito"
* item[4].item[0].answerValueSet = Canonical(DiagnosisVS)
* item[4].item[0].required = true
    
* item[4].item[1]
* item[4].item[1].linkId = "AdmDate"
* item[4].item[1].type = #date
* item[4].item[1].text = "Indique a data de admissão hospitalar"
* item[4].item[1].required = true