# PROJETO INTEGRADOR - DevStore
FATEC Profº Jessen Vidal, São José dos Campos, 2º semestre de 2020, Curso: Tecnologia em Banco de Dados
<p align="center">
<img src="/Imagens PI/logo.jpg">


_________________________________________________________________________________________________
### **Grupo:**
- Junio Sendreto  (SM)
- Fábio José da Silva  (PO)
- Jeferson Constantino (Dev)
- Isabella Rosa Peixoto (Dev)
- Paulo Vitor (Dev)
- Eguimar Batista da Costa (Dev)

_________________________________________________________________________________________________

## :rocket: O Projeto
O objetivo deste projeto em questão é apresentar ao nosso cliente, a empresa VISIONA, uma solução para o problema de não ter uma base de dados comunizada, unificada e organizada dos registros que são disponibilizados pelos proprietários das áreas rurais, através do cadastro ambiental rural (CAR).
A empresa fornece a órgãos públicos e privados um registro geoprocessado por imagens de satélite orbitais, que tem por finalidade comparar os dados de dimensões territoriais, áreas de preservação, entes hídricos, topografia e outros dados referentes a propriedade, estes dados são comparados com a imagens de satélite em tempo real por isso é necessário que estejam atualizados e organizados.


________________________________________________________________________________________________

## :dart: Proposta
O grupo de API DevStore tem como meta desenvolver um MVP que forneça ao cliente uma base de dados completa, confiável e organizada com as informações oriundas do sistema CAR.
Para isso será utilizado ferramentas do ciclo de aprendizado e metodologia a SCRUM (entregas e desenvolvimento ágil), nas sprints demonstraremos e entregaremos de forma gradativa desde a aquisição, leitura e depuração das informações até a construção e finalização do banco de dados.  




________________________________________________________________________________________________

> **REQUISITOS*

 - [x]  **Descompactar arquivos baixados** - Pesquisar bibliotecas de permitam a leitura dos arquivos compactados, caso não encontremos, o será necessário descompactar;

 - [x]  **Identificar os tipos de arquivos/atributo (pelo diretório)** - Cada diretório possui nome de acordo conteúdo do arquivo;

 - [x]  **Reorganizar/filtrar apenas diretorios que possuam os 3 tipos as extensões minimas(.shp,.shx,*.dbf), que são os casos indispensáveis** - Quando um shapefile não possuir a estrutura correta(.shp,.shx,*.dbf),  não devemos ignorar, devemos tratar esta situação, informando que “não existe dado para o município”;

 - [x]  **Criar base de dados para dados georeferenciados unifcada com flexibilidade de ser popupalado por qualquer município do país**; e

 - [x]  **Importar arquivos Shapefile para a base de dados**.<br><br>
________________________________________________________________________________________________
> **TAREFAS**

 - [x] Banco:
 - [x] PostgreSQL 	= SGBD
 - [x] PostGis	= Módulo Geo(Plugin)
 - [x] PGADM	= Interface Gráfica para Administrar dados no PostgreSQL.
________________________________________________________________________________________________

> **ESTRUTURA DE DIRETÓRIO / FLUXO:**
- [x] C:\...Processar ->Move para Processando
- [x] C:\...Processando
- [x] Verificar Estruturas DIR/Arquivos/ZIP (Integrar Arquivos .ZIP).
- [x] Verificar extensões válidas (Criar tabela de Paramentos de Extensões)
- [x] Gravar Status da Integração (Criar tabela de Controle de Integração).
- [x] Fazer Integração de arquivos shape para a Base de dados.
- [x] Mover arquivos para c:\...Processados\DDMMAAAA\.
- [x] C:\...Processados\DDMMAAAA\ 	
- [x] C:\...Log	
- [x] Log de Fluxo.
________________________________________________________________________________________________

## :hourglass_flowing_sand: Planejamento de Entregas
>  **SPRINT 1**
>- [X] 60/100
>- Entendimento do Problema do Cliente.
>- Estudo sobre o CAR e sobre a estrutura dos shapefile.
>- Criação do Nome do Grupo e Logo.
>- Elaboração do Product Backlog.
>- Elaboração das Users Stories.
>- Construção do Wireframe.
>- Elaboração dos Cards.
>- Construção/Formatação do README.
>- Elaboração da Apresentação (Powerpoint).

>  **SPRINT 2**
>- [X] 70/100
>- Função de criação de estrutura de diretórios (Código;;;).
>- Move arquivos de  C:\...Processar para C:\...Processando
>- Trabalhar os arquivos .ZIP.
>- Mover arquivos para C:\...Processados\DDMMAAAA\
>- Criar Log do Fluxo.
>- Criar Prototipo (Figma).
>- Borndown da Equipe.
>- Elaborar modelo Conceitual de dados.
>- Elaborar modelo Lógico de dados.
>- Normalização da base de dados.

 **SPRINT 3**
>- [X] 80/100
>- Borndown da Equipe.
>- Instalar PostgreSQL.
>- Instalar Plugin PostGis.
>- Cria modelo físico da base de dados.
>- Criar tabela de Parâmetro de extensões.
>- Criar tabela de Controle de Integração 
>- Utilizar tabela de Parâmetro de extensões no fluxo de processamento dos arquivos.
>- Atualizar tabela de Controle de Integração com o Status de “Integrado” ou “Falta Shapefile”.

 **SPRINT 4**
>- [X] 90/100
>- Criar interface gráfica.
>- Borndown da Equipe.
>- Integração dos shapefile na base de dados.
>- Exibir Status de integração
________________________________________________________________________________________________

## :card_index_dividers: Cards das Sprints
<img src="/Imagens PI/card1.jpg">
<img src="/Imagens PI/card2.jpg">
<img src="/Imagens PI/card3.jpg">
<img src="/Imagens PI/card4.jpg">
