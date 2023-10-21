### Introdução

O 'Consórcio Internacional para Mensuração de Resultados em Saúde - [ICHOM](https://www.ichom.org/)' (International Consortium for Health Outcomes Measurement - [ICHOM](https://www.ichom.org/)) tem como objetivo potencializar a assistência à saúde baseada em valor por meio da definição, em âmbito global, de um Conjunto de Medidas de Resultados de Saúde Centrados no Paciente' (Patient-Centered Outcome Measure Sets)- que envolvem considerações dos resultados relatados pelos profissionais de saúde, bem como pelos pacientes, a fim de fomentar a adoção, relatórios e benchmarking dessas medidas em escala mundial, com o intuito de gerar melhores desfechos clínicos de saúde para todos os envolvidos.

Até o momento foram definidos Conjuntos de Medidas de Resultados de Saúde Centrados no Paciente para 45 diferentes condições clínicas e populações específicas de pacientes por meio da reunião de equipes globais de defensores dos pacientes, profissionais de saúde e pesquisadores, representando mais de 50% da carga global de doenças, conforme descrito nesta [página](https://www.ichom.org/patient-centered-outcome-measures).

Para facilitar a adoção e implementação destes Conjuntos de Medidas de Resultados de Saúde Centrados no Paciente do ICHOM na assistência à saúde, os sistemas de tecnologia de informação em saúde precisam que eles sejam publicados em uma forma interoperável, e em um formato legível por máquina baseado em padrões abertos. Isso facilitará a coleta semanticamente interoperável das medições necessárias ao longo do percurso de cuidados do paciente, bem como o subsequente relato de resultados baseado nessas medições. Com esse objetivo, o ICHOM criou o Conjunto de Medidas de Resultados em Saúde Centrados no Paciente para o Acidente Vascular Cerebral. Acredita-se que o alcance internacional dos conjuntos de padrões do ICHOM permitirá o uso, adoção e implementação globais na prática clínica.

Este 'Guia de Implementação' (IG - Implementation Guide) utiliza a versão 5 do padrão FHIR (Fast Healthcare Interoperability Resource).


### Contextualização

Existe a necessidade crescente de representar os Conjuntos de Medidas de Resultados de Saúde Centrados no Paciente do ICHOM através das APIs HL7 FHIR para a comunidade internacional. Os elementos clínicos das Medidas de Resultados de Saúde Centrados no Paciente do ICHOM já foram criados e aceitos, de acordo com pesquisas clínicas internacionais, processos representativos dos pacientes e revisados por especialistas, sendo mapeados para ontologias padrão tais como a SNOMED-CT.

O objetivo deste IG é desenvolver e publicar a representação HL7 FHIR do Conjunto de Medidas de Resultados de Saúde Centrados no Paciente do ICHOM para o Acidente Vascular Cerebral, já validado internacionalmente e revisado por pares. Isso proporcionará suporte para interoperabilidade na troca de dados relacionados à medição de assistência à saúde baseada em valor, conforme definido pela comunidade internacional de especialistas da ICHOM que elaboraram este conjunto de dados.


### Conjuntos de Medidas de Resultados de Saúde Centrados no Paciente para o Acidente Vascular Cerebral do ICHOM 

Este Guia de Implementação (IG) no domínio do conhecimento concentra-se em representar as mesmas variáveis do Conjunto de Medidas de Resultados de Saúde Centrados no Paciente para o Acidente Vascular Cerebral de duas maneiras diferentes:
 - 1) como ['Questionários FHIR' - FHIR Questionnaires](artifacts.html#structures-questionnaires) para resultados relatados pelo paciente e resultados relatados clinicamente, e 
 - 2) como ['Recursos FHIR Pessoais' - discrete FHIR resources](artifacts.html#structures-resource-profiles) para resultados relatados clinicamente. 
 Os implementadores têm a liberdade de escolher se desejam implementar os questionários, os perfis ou ambos.


### Questionários (Questionnaires)
Os [Questionários (Questionnaires)](artifacts.html#structures-questionnaires) neste IG possuem uma organização diferente em comparação ao Guia de Referência e ao Dicionário de Dados do ICHOM, e isso se deve às diferentes ênfases ou usos pretendidos. O Guia de Referência e o Dicionário de Dados têm o propósito de descrever todos os elementos de dados incluídos no conjunto, por isso são organizados por tipo de dado ou variável (por exemplo, Demografia, 'Condições Clínicas Iniciais' (Baseline Clinical Factors)). Em contraste, este IG tem a finalidade de facilitar a coleta dos elementos de dados. Portanto, ele é organizado com base no momento da coleta de dados em saúde do paciente considerando sua jornada de atendimento; por exemplo, no 'início' (baseline), no 'Seguimento de 1 ano' (1 year follow-up) e na fonte dos dados (clínicos ou relatados pelo paciente). Apesar dessa diferença na organização, os elementos de dados no IG FHIR e no Guia de Referência e Dicionário de Dados do ICHOM estão completamente alinhados.


### 'Perfis' (Profiles)

Os ['Perfis' - Profiles](artifacts.html#structures-resource-profiles) seguem a organização do Guia de Referência e do Dicionário de Dados do ICHOM, como descrito na tabela abaixo. Cada variável é mapeada para um único recurso FHIR, ou várias variáveis são mapeadas para o mesmo recurso FHIR. Os mapeamentos em si são comunicados por meio de um ['Perfil FHIR' - FHIR profile](https://www.hl7.org/fhir/profiling.html). 

A tabela abaixo apresenta os mapeamentos das variáveis do Conjunto de Medidas de Resultados de Saúde Centrados no Paciente para o Câncer de Mama para os Perfis FHIR. Um mapeamento reverso de FHIR para ICHOM está disponível na aba 'Mapeamentos' - `Mappings` de cada Perfil.

| ID da Variável                      | ITEM                                     | Perfil FHIR                                                     |
|:---------------------------------|:-----------------------------------------|:-----------------------------------------------------------------|
| **Demographic factors - 'Fatores Demográficos'**          |                                          |                                                                  |
| yearofbirth                              | Year of birth - 'Ano do nascimento'                                     | [BreastCancerPatient]                                            |
| sex                              | Sex - 'Sexo'                                     | [BreastCancerPatient]                                            |
| gender                      | Gender identity - 'Identidade de Gênero'                            | [BreastCancerPatient]                                            |
| ethnicity                      | Ethnicity - 'Etnia'                            | [BreastCancerPatient]                                            |
| race                      | Race - 'Raçã'                            | [BreastCancerPatient]                                            |
| livinglocpre                             | Living location pre index event - 'Local de Moradia antes do AVC'                                    | [BreastCancerPatient]                                            |
| livinglocpost                             | Living location post index event - 'Local de Moradia depois do AVC'                                    | [BreastCancerPatient]                                            |
| livealonepre                   | Living alone pre-index event - 'Morava sozinho antes do AVC'                      | [BreastCancerPatient]                                            |
| livealonepost                   | Living alone post-index event - 'Mora sozinho depois do AVC'                      | [BreastCancerPatient]                                            |
| prestrokeamb                   | Prestroke functional status - Ambulation - 'Status funcional antes do AVC - Deambulação'                      | [BreastCancerPatient]                                            |
| prestroketoilet                   | Prestroke functional status - Toileting - 'Status funcional antes do AVC - Higienização'                      | [BreastCancerPatient]                                            |
| prestrokedress                   | Prestroke functional status - Dressing - 'Status funcional antes do AVC - Vestir-se'                      | [BreastCancerPatient]                                            |
| **Stroke type and severity - 'Tipo do AVC e gravidade'**    |                                          |                                                                  |
| stroketype                      | Stroke type - 'Tipo do AVC'                             | [BodyHeight]                                                     |
| strokesev-nihss                       | Stroke severity: score - 'Gravidade do AVC (NIHSS)'                       | [BodyHeight]                                                     |
| est-strokesev-nihss-cat                      | Estimated stroke severity: category - 'Gravidade estimada do AVC: categoria'                              | [BodyWeight]                                                     |
| strokesev-loc                      | Stroke severity: consciousness - 'Gravidade do AVC: estado de consciência'                              | [BodyWeight]                                                     |
| symtdur                      | Duration of symptoms - 'Duração dos sintomas'                              | [BodyWeight]                                                     |
| **Vascular and systemic - 'Vascular e Sistêmico'**    |                                          |                                                                  |
| priorstrokeexcltia                       | Prior stroke excluding transient ischemic attacks - 'AVC anterior excluindo Ataque Isquêmico Transitório'                        | [BodyWeight]                                                     |
| priortia                          | Prior TIA - 'Ataque Isquêmico Transitório anterior'                               | [PrimaryBreastCancerCondition]                                   |
| myocardialinfarction                          | Myocardial infarction - 'Infarto do Miocárdio'                     | [PrimaryBreastCancerCondition]                                   |
| ischemicheartdisease                         | Ischemic Heart Disease - 'Doença Isquêmica Cardíaca'                    | [SecondaryBreastCancerCondition]                                 |
| atrialfibflut                         | Atrial fibrillation or flutter - 'Fibrilação ou flutter atrial'                    | [SecondaryBreastCancerCondition]                                 |
| diabetesmellitus                         | Diabetes Mellitus  - 'Diabetes Mellitus'                    | [SecondaryBreastCancerCondition]                                 |
| hypertensivedisease                         | Hypertension - 'Hipertensão'                    | [SecondaryBreastCancerCondition]                                 |
| hyperlip                         | Hyperlipidemia - 'Hiperlipidemia'                    | [SecondaryBreastCancerCondition]                                 |
| smokingstatus                         | Smoking status - 'Status do uso de tabaco'                    | [SecondaryBreastCancerCondition]                                 |
| alcoholamount                         | Alcohol intake amount - 'Quantidade de ingestão de álcool'                    | [SecondaryBreastCancerCondition]                                 |
| **Treatment/care related - 'Tratamento/ cuidados relacionados'**       |                                          |                                                                  |
| diagnosis        | Diagnostic evidence base - 'Base de evidência diagnóstica'           | [Histotype]                                                      |
| admdate                        | Date of index admission - 'Data da admissão hospitalar devido ao AVC'                        | [Histotype]                                                      |
| disdate-acute                            | Date of discharge from acute care hospital - 'Data da alta do hospital de cuidados intensivos'                        | [GermlineMutation]                                               |
| rehab-in                         | Rehabilitation inpatient acute care - 'Reabilitação incluida durante a internação'                          | [InvasionGrade]                                                  |
| rehab-out                        | Rehabilitation post acute care - 'Reabilitação após os cuidados agudos hospitalares'                            | [TumorGrade]                                                     |
| dischdest                    | Discharge destination following acute care hospitalization - 'Destino de alta após hospitalização de cuidados agudos'                    | [TNMPrimaryTumorStage] and [TNMStageGroup]                       |
| **Treatment variables - 'Variáveis de Tratamento'**          |                                          |                                                                  |
| thrombolytictx                | Thrombolytic therapy - 'Terapia trombolítica endovenosa'                               | All the procedures                                               |
| thrombolytictxdate                  | Date of thrombolytic therapy - 'Data da terapia trombolítica'                                  | [BreastCancerSurgery]                                            |
| thrombecttx                      | Thrombectomy - 'Trombectomia'                            | [BreastCancerSurgery]                                            |
| thrombecttxdate                        | Date of thrombectomy - 'Data da trombectomia'                          | [AxillaSurgery]                                                  |
| hemicranitx                    | Hemicraniectomy - 'Hemicraniectomia'                     | [AxillaSurgery]                                                  |
| hemicranitxdate                      | Date of hemocraniectomy - 'Data da hemicraniectomia'                      | [AxillaryClearance]                                              |
| procoagreversaltx                   | Procoagulant reversal therapy - Terapia de reversão procoagulante'                  | [AxillaryClearance]                                              |
| procoagreversaltxdate            | Date of procoagulant reversal therapy - 'Data da terapia de reversão procoagulante'                          | [ReconstructionSurgery]                                          |
| sympich          | Symptomatic intracranial hemorrhage - 'Hemorragia intracraniana sintomática'                      | [ReconstructionSurgery]                                          |
| **Survival and disease control - 'Sobrevida e Monitoramento da doença'**           |                                          |                                                                  |
|vitalstatus                    | Vital status - 'Estado vital'            | [ReoperationSurgery]                                             |
| deceaseddate             | Date of death - 'Data do óbito'              | [ReconstructionSurgery]                                          |
| strokerecur                 | Report of new stroke within 90 days after discharge for stroke - 'Relato de recorrência de AVC dentro de 90 dias após alta do AVC'       | [ReoperationSurgery]                                             |
| smokecess-stroke              | Smoking cessation - 'Parar de fumar'                    | 
| **Patient-reported health status - 'Estado de saúde relatado pelo paciente'** |                                          |                                                                  |
| postsrokeamb                   | Poststroke functional status - Ambulation - 'Status funcional depois do AVC - Deambulação'                      | [BreastCancerPatient]                                            |
| poststroketoilet                   | Poststroke functional status - Toileting - 'Status funcional depois do AVC - Higienização'                      | [BreastCancerPatient]                                            |
| poststrokedress                   | Poststroke functional status - Dressing - 'Status funcional depois do AVC - Vestir-se'                      | [BreastCancerPatient]                                            |
| feeding                  | Feeding - 'Alimentação'                              | [PrimaryBreastCancerCondition]                                   |
| communic                      | Ability to communicate - 'Comunicação'                       | [RecurrenceMethod]                                               |
| promis-10-q01                  | Global01               | [PrimaryBreastCancerCondition]                                   |
| promis-10-q02                      | Global02                            | [BreastCancerPatient]                                            |
| promis-10-q03                     | Global03                           | [BreastCancerPatient]                                            |
| promis-10-q04                          | Global04     | [DeathAttributableBC]                                            |
| promis-10-q05                  | Global05               | [PrimaryBreastCancerCondition]                                   |
| promis-10-q09r                      | Global09r                            | [BreastCancerPatient]                                            |
| promis-10-q06                     | Global06                           | [BreastCancerPatient]                                            |
| promis-10-q10r                          | Global10r     | [DeathAttributableBC]                                            |
| promis-10-q08r                  | Global08r               | [PrimaryBreastCancerCondition]                                   |
| promis-10-q07r                      | Global07r                            | [BreastCancerPatient]                                            |
| **Clinician reported health status - 'Estado de saúde relatado pelo médico'** |                                          |                                                                  |
| smrsq                     | Simplified modified Rankin Scale Questionnaire (smRSq) - 'Questionário da Escala de Ranking Modificada'                           | [BreastCancerPatient]                                            |
{: .grid }


### Definições
* PROM ('Medidas de Resultados Relatados pelo Paciente' - Patient reported outcome measure): Um questionário cientificamente validado que avalia aspectos específicos da experiência de saúde de um paciente. As respostas a cada pergunta recebem uma pontuação e as pontuações são totalizadas com base em um algoritmo publicado. Normalmente, tanto as respostas às perguntas individuais quanto as pontuações resumidas são salvas, mas as análises são realizadas apenas nas pontuações resumidas. Exemplos: PHQ-9, PROMIS Global.
* Fornecedores Terceiros: Normalmente, empresas de tecnologia ou análise que oferecem uma plataforma para atender a necessidades específicas de coleta de dados ou análises, como a coleta de dados PROMs de pacientes.
* Colaboração de aprendizado: Uma atividade de melhoria de qualidade na qual organizações de provedores concordam em compartilhar privadamente seus dados de resultados de pacientes desidentificados com o objetivo de facilitar conversas e aprender as melhores práticas de cuidados uns com os outros (exemplo: [https://msqc.org](https://msqc.org))."

### Alinhamento com as especificações da HL7

Artefatos deste Guia de Implementação estão alinhados com:
- [Guia de Implementação da Rede Nacional de Dados em Saúde (RNDS)](https://simplifier.net/redenacionaldedadosemsaude)
- [ICHOM Patient Centered Outcomes Measure Set for Breast Cancer](https://build.fhir.org/ig/HL7/fhir-ichom-breast-cancer-ig/)


### Must Support (Deve Suportar)
A anotação 'Deve Suportar' - ['Must Support] neste guia de implementação é utilizada para indicar que um elemento específico está mapeado para uma variável do conjunto de medidas e deve ser preenchido com dados caso estejam disponíveis no sistema.

No caso de um elemento não poder ser preenchido devido à sua indisponibilidade no sistema de origem e se as regras de cardinalidade permitirem, o elemento pode ser deixado em branco. No entanto, se as regras de cardinalidade exigirem que um elemento seja preenchido, a extensão 'Motivo de Dados Ausentes' [Data Absent Reason] DEVE ser utilizada.

{% include markdown-link-references.md %}


### IP Statements

{% include ip-statements.xhtml %}

<br>
<br>
<br>