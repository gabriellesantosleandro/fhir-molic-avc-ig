O Guia de Implementação (IG) de Câncer de Mama do ICHOM utiliza terminologia, notações e princípios de design específicos para o padrão HL7 FHIR. É importante estar familiarizado com os princípios básicos do FHIR e como ler as especificações FHIR. Portanto, é incentivado que os leitores que não estão familiarizados com o FHIR revisem a explicação a seguir antes de ler o restante deste guia de implementação.

### Visão Geral do FHIR

Fast Healthcare Interoperability Resources (FHIR) é uma especificação de plataforma da Health Level 7 (HL7) que suporta a troca de informações de saúde entre sistemas e aplicações de saúde. Os dados clínicos devem estar disponíveis e ser compreensíveis quando um paciente se movimenta pelo ecossistema de saúde. Para assegurar isso, o FHIR define um conjunto de funcionalidades empregadas ao longo do processo de saúde, em todas as jurisdições e em muitos contextos diferentes. O FHIR é universalmente aplicável, significando que pode ser utilizado em uma ampla variedade de ambientes de implementação, por exemplo, compartilhamento de dados baseado em Registros Eletrônicos de Saúde, aplicativos para telefones móveis e comunicações em nuvem. Além disso, o FHIR tem um forte foco em uma implementação rápida e fácil, o que reduz as barreiras de entrada para novos desenvolvedores trabalharem com o FHIR.

### Aplicabilidade Clínica

O FHIR é projetado para padronizar e possibilitar a troca de todas as informações relacionadas à saúde. Isso envolve não apenas dados clínicos, mas também dados administrativos e de pesquisa relacionados à saúde. O FHIR pode ser utilizado tanto na medicina humana quanto na veterinária e é aplicável mundialmente em uma ampla variedade de contextos, incluindo atendimento ao paciente internado, atendimento agudo, atendimento de longo prazo, atendimento ambulatorial, atendimento comunitário, etc. Um dos benefícios do HL7 FHIR é que ele é independente de qualquer fornecedor de registro eletrônico de saúde ou sistema de saúde. Além disso, a especificação é gratuita para todos utilizarem e há muitos exemplos públicos disponíveis para auxiliar no desenvolvimento de novas aplicações.

### 'Recursos' - Resources
Os componentes fundamentais do FHIR são denominados recursos, sendo representados em XML ou JSON. Um recurso é considerado um conjunto de informações, chamados de elementos de dados, utilizados para trocar ou armazenar dados. Por exemplo, o recurso 'Paciente' (Patient) contém detalhes demográficos e administrativos sobre a pessoa que está sendo assistida. Existem diversos recursos, abrangendo diferentes aspectos do domínio da saúde, desde a pesquisa e gerenciamento de pacientes até o faturamento médico e os relatórios clínicos. O objetivo principal é que um conjunto de recursos possa cobrir a maioria dos casos de uso clínico. Isso pode ser alcançado combinando recursos por meio de referências. Por exemplo, ao associar 'Paciente' (Patient) a 'Observação'(Observation) (que armazena achados (clínicos) de um paciente), a 'Condição' (Condition) (problema ou diagnóstico) e a 'Medicação' (Medication) (composição, dose e indicação dos medicamentos), você pode implementar e adaptar a casos de uso específicos.

### 'Personalização de Perfis' - Profiling 
Um 'Perfil' (Profile) estabelece a utilização de um recurso em um cenário específico. O termo 'Personalização de Perfis' (Profiling) refere-se ao ato de aplicar restrições aos denominados recursos essenciais. Esses recursos são formulados por grupos de trabalho de especialistas para acomodar os casos de uso mais comuns. Devido à sua natureza genérica, as regras nesta especificação são intencionalmente flexíveis. Ao aplicar um conjunto de restrições a um recurso FHIR, este pode ser adaptado a um cenário específico. É alta a probabilidade de que você precise de algo que se ajuste de forma precisa ao seu domínio ao utilizar o FHIR. Consequentemente, a especificação FHIR antecipa que será necessário aplicar restrições aos recursos existentes para criar um perfil que atenda às suas necessidades. Por essa razão, é possível encontrar perfis nacionais, regionais, ou até mesmo específicos de hospitais. O FHIR escolheu, de forma consciente, abranger 80% dos elementos de dados utilizados em sistemas de saúde com os seus recursos. Os 20% restantes referem-se a casos de uso específicos e podem ser gerenciados como extensões FHIR. Extensões são recursos adicionais que ajudam a abordar dados não contemplados pelos perfis FHIR essenciais existentes da HL7.

### Terminologia
Para aprimorar a interoperabilidade, é essencial adotar uma terminologia padronizada. Utilizando uma terminologia uniformizada, é possível coletar, documentar e processar informações de saúde com base em conceitos de dados similares. Isso habilita os profissionais de saúde a compartilhar e comparar conhecimento clínico de uma maneira consistente e em um sistema aceito internacionalmente. O FHIR não pode determinar cada código necessário em sistemas de saúde globais, então, ao invés disso, eles disponibilizaram dois recursos para gerir códigos e seus respectivos significados, nomeadamente:

* CodeSystem – é um conjunto de códigos que estabelece diversos códigos e os seus respectivos significados. O conceito de um CodeSystem assemelha-se a um catálogo, abrigando variados códigos e suas respectivas definições. O CodeSystem pode ser o SNOMED-CT ou o LOINC, ou até mesmo um que você tenha criado por conta própria.

* ValueSet - especifica uma seleção de códigos retirados de um ou mais CodeSystems, planejados para uso em um contexto específico. Um ValueSet contém as ligações para os códigos autênticos de um CodeSystem particular. A vantagem é que, quando um CodeSystem é atualizado, os ValueSets que incluem códigos desse CodeSystem também são automaticamente atualizados.

### Links

Para leitura adicional, recomendamos o uso dos seguintes links:

* ['Sumário do FHIR' - FHIR summary](http://hl7.org/fhir/r4/summary.html)
* ['Introdução para Desenvolvedores' - Developer’s introduction](http://hl7.org/fhir/r4/overview-dev.html)
* ['Tipo de Dados' - Data types](http://hl7.org/fhir/r4/datatypes.html)
* ['Utilizando Códigos' - Using codes](http://hl7.org/fhir/r4/terminologies.html)
* ['Referências entre recursos' - References between resources](http://hl7.org/fhir/r4/references.html)
* ['Como ler definições de recurso e perfil' - How to read resource & profile definitions](http://hl7.org/fhir/r4/formats.html#table)
* ['Definição de Recursos Base' - Base resource definitions](http://hl7.org/fhir/r4/resource.html)
