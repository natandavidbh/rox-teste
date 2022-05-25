# rox-teste

Documentação refere a Modelagem, Infraestrutura, Ingestão de Dados da empresa que produz bicicletas. 

### Modelagem Conceitual dos Dados

Arquivo: Diagram_Rox.drawio

![image](https://user-images.githubusercontent.com/106120582/169947455-1df015fa-d9a2-4b37-9cc4-61fdba28e7c0.png)

#

## Microsoft Azure

Foi utilizada o Microsoft Azure que é uma plataforma destinada à execução de aplicativos e serviços, baseada nos conceitos da computação em nuvem.

### Infraestrutura Necessária: 
### - Azure SQL Database (Sql Server)
Banco de Dados SQL do Azure é um serviço de banco de dados relacional totalmente gerenciado e sempre atualizado, criado para a nuvem.

  Criação dos Schemas, Tabelas e Constraints

  https://github.com/natandavidbh/Database_Rox

     Nome do servidor: azure-rox.database.windows.net
  
     Grupo de recursos: teste-rox
  
     Localidade: East US
  
     Subscrição: Azure subscription 1
  
  
  ![image](https://user-images.githubusercontent.com/106120582/169950146-132badfe-64ec-4f3b-8f1f-64fa36f677d4.png)

#

### - Storage Accounts
Uma conta de armazenamento do Azure contém todos os seus objetos de dados do Armazenamento do Azure.
  
    Blob: rox10012001
  
    Container: rox
  
  ##### Arquivos para Ingestão 
  
      Person.Person.csv; 
      
      Production.Product.csv; 
      
      Sales.Customer.csv; 
      
      Sales.SalesOrderDetail.csv; 
      
      Sales.SalesOrderHeader.csv; 
      
      Sales.SpecialOfferProduct.csv;
  
  ![image](https://user-images.githubusercontent.com/106120582/169950237-3447ec5f-ace6-4649-bdb1-6f85fd68d5c0.png)

#

### - Azure Data Factory
Azure Data Factory é o serviço ETL na nuvem do Azure para integração e transformação de dados.
  
      Name: rox
  
  ##### Serviços Associados
  
    - ABLS_Rox: Armazenamento de Blobs do Azure
    
    - ASQL_RoxDB: Base de Dados SQL do Azure
  
  ##### DataSets/Rox
  
    - ABLS_Rox
     
      Foi criado o Parâmetro CSV para que seja possível passar o nome do arquivo que está dentro do Armazenamento de Blobs;
      
    - ASQL_RoxDB
    
      Foi criado os Parâmetros Schema e Tabela para que seja possível passar o nome da Tabela do Banco de Dados;
  
  ##### Pipelines/PL-Rox
  
  OBS: Foi feito a criação dos Pipelines separados, para caso seja necessário atuar neles de forma independente.
  
    - PL_Customer: Carrega o arquivo Sales.Customer.csv para o banco de dados;
    
    - PL_Person: Carrega o arquivo Person.Person.csv para o banco de dados;
    
    - PL_Product: Carrega o arquivo Production.Product.csv para o banco de dados;
    
    - PL_SalesOrderDetail: Carrega o arquivo Sales.SalesOrderDetail.csv para o banco de dados;
    
    - PL_SalesOrderHeader: Carrega o arquivo Sales.SalesOrderHeader.csv para o banco de dados;
    
    - PL_SpecialOfferProduct: Carrega o arquivo Sales.SpecialOfferProduct.csv para o banco de dados;
    
    - PL_Orquestrator: Carregar os pipelines em ordem para garantir a integridade referencial;
    
    
   ![image](https://user-images.githubusercontent.com/106120582/170150469-549d2c62-46d8-4310-8d91-7bb244b91103.png)

  #
  

