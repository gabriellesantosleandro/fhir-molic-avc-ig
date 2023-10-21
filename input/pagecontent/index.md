<table style="width: 60%; border-collapse: collapse;">
<thead><tr><th>
<img src="logo_molicavc.png" alt="Logo do Projeto" style="width: 100%; display: block; margin-left: auto; margin-right: auto; clear: both;">
</th></tr></thead>
</table>
<br>
<br>

<p style="text-align: center; font-size: 20px;"> <b>FHIR Implementation Guide: Valor em Saúde no Monitoramento da Jornada do Paciente com AVC</b></p> 
<b> Gabrielle dos Santos Leandro, Eduardo Alves Portela Santos, Ricardo João Cruz-Correia, Claudia Maria Cabral Moro </b>

<p style="text-align: justify; font-size: 10px;">Este Guia de Implementação foi desenvolvido durante a Tese de Doutorado da Gabrielle dos Santos Leandro. 
<br> * Esta pesquisa foi aprovada pelo Comitê de Ética e Pesquisa por meio do Parecer nº 4.917.962. </p>


### Sumário

<p style="text-align: justify; font-size: 14px;"><b>Introdução: </b> <br> 
O Acidente Vascular Cerebral (AVC) é a segunda principal causa de morte no mundo [1]. Durante seu tratamento, a janela terapêutica é crucial na intervenção adequada e minimização de danos ao paciente, tornando essencial uma coordenação do cuidado adequada [2]. Neste contexto, a Linha de Cuidado do AVC (LC-AVC) pretende estruturar e direcionar o tratamento considerando os inúmeros serviços e sistemas de saúde envolvidos, a fim de otimizar os resultados do paciente [3].<br>
A LC-AVC é uma iniciativa para melhorar a coordenação do cuidado, existindo ainda a necessidade de mensurar o quão eficaz é o atendimento considerando métricas centradas no paciente. Diante disto, o International Consortium for Health Outcomes Measurement (ICHOM) elaborou métricas de resultados em saúde padronizadas centradas no paciente para inúmeras patologias, dentre elas o AVC [3, 4].<br>
Apesar destas iniciativas, um desafio importante para a gestão do cuidado no AVC são os desafios de interoperabilidade das informações entre os diferentes sistemas de informação envolvidos. E neste cenário, o Fast Healthcare Interoperability Resource (FHIR) almeja padronizar a troca de informação entre sistemas de informação em saúde a fim de garantir a interoperabilidade entre eles. Na sua execução é fundamental a construção de um FHIR Implementation Guide (IG), que é um conjunto de regras sobre como os recursos FHIR são utilizados para resolver um problema de saúde em um contexto específico [5].<br></p>

<p style="text-align: justify; font-size: 14px;"><b> Objetivo: </b> <br>
Elaborar um FHIR Implementation Guide para o atendimento ao AVC considerando o conceito dos cuidados em saúde baseados em valor.</p>

<p style="text-align: justify; font-size: 14px;"><b> Método: </b> <br>
Representou-se a LC-AVC utilizando as principais LCs-AVC e Diretrizes Clínicas relacionadas ao AVC em BPMN (Business Process Model and Notation) pela plataforma Camunda®, considerando o estudo de caso do atendimento ao AVC de Joinville, Santa Catarina. Foi elaborado um dicionário de dados considerando as LCs-AVC representadas e o Guia de Referência do ICHOM [4]. Por fim, foi feito o mapeamento das variáveis considerando os recursos FHIR disponíveis.<br>
Para elaboração do IG foram utilizadas as seguintes tecnologias: Ruby, Java® JDK v.11, Node.js®, Jekyll, Docker®, Visual Studio Code®, GoFSH®, Sushi®, FHIR Shorthand® e IG Publishing®. A documentação foi armazenada no GitHub® e um subdomínio foi alocado para acesso. Como modelo para o desenvolvimento deste IG foram utilizados os IGs da Rede Nacional de Dados em Saúde (RNDS) e o de Câncer de Mama da ICHOM.</p>

<p style="text-align: justify; font-size: 14px;"><b> Resultados: </b><br>
A representação em BPMN abordou as fases Pré-Hospitalar, Hospitalar e de Reabilitação. O IG foi composto de perfis herdados da RNDS, tais como: Organization, Practitioner e Patient; e perfis elaborados considerando as variáveis mapeadas no processo e na ICHOM, tais como Questionnaire e QuestionnaireResponse. As terminologias foram representadas por meio de CodeSystems e ValueSets.  O FHIR IG elaborado bem como toda sua documentação está disponível neste documento.</p>

<p style="text-align: justify; font-size: 14px;"><b> Conclusão: </b><br>
Este IG é uma inovação no campo da interoperabilidade em saúde e pode futuramente ser incorporado como padrão nacional para o atendimento ao AVC.</p>

### Necessidades de Negócio
Este Guia de Implementação (IG) se insere no domínio do conhecimento, focando apenas na representação dos elementos de dados do conjunto no FHIR, sem abordar casos de uso específicos. Portanto, padrões de interação específicos para a troca de informações não são abordados neste documento.

No entanto, para lhe dar uma ideia de onde este conjunto de informações pode ser aplicado, aqui estão algumas necessidades de negócios típicas:

1. Rastrear e comparar resultados que são mais relevantes para diferentes grupos de pacientes, orientando iniciativas de melhoria da qualidade em uma organização de provedores de saúde. Isso pode envolver o uso de ferramentas analíticas de saúde.

2. Acompanhar os resultados individuais dos pacientes em relação a um valor médio de referência para apoiar decisões de tratamento e promover a tomada de decisões compartilhadas.

3. Criar painéis interativos que permitam às organizações de saúde comparar seus resultados ajustados por risco com a média global do ICHOM. Isso visa estabelecer colaborações de aprendizado e definir padrões de excelência em resultados de pacientes. Essa abordagem pode facilitar o compartilhamento de resultados de tratamento com outras organizações de provedores para fins de pesquisa ou participação em colaborações de aprendizado.

### Pré-Requisitos
Os usuários deste guia devem estar familiarizados com o Conjunto de Medidas para o Acidente Vascular Cerebral do ICHOM e o seu Dicionário de Dados correspondente, que elenca todas as variáveis necessárias para a coleta de dados por parte dos implementadores, [disponível aqui](https://connect.ichom.org/patient-centered-outcome-measures/stroke/). Os usuários também devem conhecer os Recursos FHIR ([FHIR Resources](http://hl7.org/fhir/R5/resourcelist.html))para entender como as variáveis do Acidente Vascular Cerebral do ICHOM são representadas neste Guia de Implementação FHIR. Abaixo são exibidos os conceitos básicos.

### Atores Relacionados
* Informatas de saúde ou profissionais de tecnologia da informação que trabalham dentro de uma organização fornecedora de cuidados de saúde.
* Especialista em informática de pesquisa clínica.

### Autores
- [Gabrielle dos Santos Leandro](https://www.gabriellesantosleandro.com/)
- Ricardo João Cruz-Correia
- Claudia Maria Cabral Moro
- Eduardo Alves Portela Santos

### Finaciamento
- Fundação Coordenação de Aperfeiçoamento de Pessoal de Nível Superior (CAPES) - Bolsa de Estudo de Pós-Graduação Modalidade Taxa para Financiamento de Doutorado no [Programa de Pós-Graduação em Tecnologias em Saúde - PUCPR](https://www.pucpr.br/escola-politecnica/mestrado-doutorado/tecnologia-em-saude/) durante o período de 2020 a 2024. 

### Referências:
[1] Feigin VL, Brainin M, Norrving B, et al. World Stroke Organization (WSO): Global Stroke Fact Sheet 2022. International Journal of Stroke. 2022;17:18–29.<br>
[2] Rajendram P, Ikram A, Fisher M. Combined Therapeutics: Future Opportunities for Co-therapy with Thrombectomy. Neurotherapeutics. 2023;20:693–704.<br>
[3] Brasil. Ministério da Saúde. Secretaria de Atenção Primária à Saúde. Clinical Pathway for Cerebrovascular Accident (CVA) in adults. 1st ed. Brasília: Ministério da Saúde; 2020.<br>
[4] Salinas J, Sprinkhuizen SM, Ackerson T, et al. An International Standard Set of Patient-Centered Outcome Measures After Stroke. Stroke. 2016;47:180–186. <br>
[5] HL7. Resource Implementation Guide. HL7 FHIR - FHIR CI-Build. 2023. Available from: https://build.fhir.org/implementationguide.html 

<br>
<br>
<br>
