
// GRUPO 2 - INFORMAÇÕES DEMOGRÁFICAS

ValueSet: StrokeTypeVS
Id: StrokeTypeVS
Title: "ValueSet que categoriza o tipo de AVC"
Description: "Este ValueSet tem por finalidade categorizar o tipo do AVC"
* StrokeTypeCS#IS "Ischemic stroke (IS)" 
* StrokeTypeCS#ICH "Intracerebral hemorrhage (ICH)"
* StrokeTypeCS#TIA "Transient ischemic attack (TIA)" 
* StrokeTypeCS#UNK "Stroke of unknown type"

ValueSet: EstStrokeSevNIHSSCatVS
Id: EstStrokeSevNIHSSCatVS
Title: "ValueSet que categoriza a gravidade estimada do AVC por meio do NIHSS"
Description: "Este ValueSet tem por finalidade categorizar a gravidade do AVC baseando-se no National Institute of Health Stroke Scale (NIHSS)"
* EstStrokeSevNIHSSCatCS#1 "Sem sintomas de AVC | No stroke symptoms (NIHSS score = 0)"
* EstStrokeSevNIHSSCatCS#2 "Menor | Minor (NIHSS score 1-4)"
* EstStrokeSevNIHSSCatCS#3 "Moderado | Moderate (NIHSS score 5 – 15)"
* EstStrokeSevNIHSSCatCS#4 "Moderado a Severo | Moderate to severe (NIHSS score 16 – 20)"
* EstStrokeSevNIHSSCatCS#5 "Severo | Severe (NIHSS score 21 – 42)"
* EstStrokeSevNIHSSCatCS#999 "Desconhecido | Unknown"

ValueSet: StrokeSevLocVS
Id: StrokeSevLocVS
Title: "ValueSet que Categoriza o Estado de Consciência"
Description: "Este ValueSet indica o estado de consciência do paciente aferido na chegada ao Hospital de Referência."
* StrokeSevLocCS#0 "Completamente acordado | Fully awake"
* StrokeSevLocCS#1 "Sonolento | Somnolent"
* StrokeSevLocCS#2 "Coma | Coma"
* StrokeSevLocCS#999 "Desconhecido | Unknown"

ValueSet: SymtDurVS
Id: SymtDurVS
Title: "ValueSet que categoriza a Duração dos Sintomas do AVC"
Description: "ValueSet que categoriza a duração dos sintomas do AVC considerando o início dos sintomas até a admissão no hospital de referência"
* SymtDurCS#0 "Menor que 4:30h. | Less than 4.5 hours"
* SymtDurCS#1 "Maior que 4:30h. | More than 4.5 hours"
* SymtDurCS#999 "Desconhecido | Unknown"


// GRUPO 4 - VASCULAR E SISTÊMICO
ValueSet: NoYesUnknownVS
Id: NoYesUnknownVS
Title: "ValueSet Sim, Não e Desconhecido"
Description: "Valueset com respostas Sim, Não e Desconhecido (yes, no and unknown)"
* insert HL7CopyrightForVS
* insert ValuesetRuleset
* YesNoUnkCS#Y "Sim | Yes" 
* YesNoUnkCS#N "Não | No"
* YesNoUnkCS#UNK "Desconhecido | Unknown"


// GRUPO 5 - TRATAMENTO/ CUIDADO REFERIDO
ValueSet: DiagnosisVS
Id: DiagnosisVS
Title: "ValueSet da Base de Evidência Diagnóstica"
Description: "Este ValueSet indica qual base de evidência diagnóstica foi utilizada para sua realização."
* DiagnosisCS#0 "Clinical symptoms alone"
* DiagnosisCS#1 "Clinical and Tomography"
* DiagnosisCS#2 "Clinical and Magnetic Resonance Imaging"
