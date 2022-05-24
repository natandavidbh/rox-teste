# rox-teste

Documentação refere a modelagem, infraestrutura, ingestão de dados da empresa que produz bicicletas. 

### Modelagem Conceitual dos Dados

Arquivo: Diagram_Rox.drawio

![image](https://user-images.githubusercontent.com/106120582/169947455-1df015fa-d9a2-4b37-9cc4-61fdba28e7c0.png)

### Infraestrutura Necessária: 
### - Azure SQL Database

  Nome do servidor: azure-rox.database.windows.net
  
  Grupo de recursos: teste-rox
  
  Localidade: East US
  
  Subscrição: Azure subscription 1
  
  ![image](https://user-images.githubusercontent.com/106120582/169950146-132badfe-64ec-4f3b-8f1f-64fa36f677d4.png)


### - Storage Accounts
  
  Blob: rox10012001
  
  Container: Rox
  
  Arquivos para Ingestão: Person.Person.csv, Production.Product.csv, Sales.Customer.csv, Sales.SalesOrderDetail.csv, Sales.SalesOrderHeader.csv, Sales.SpecialOfferProduct.csv;
  
  ![image](https://user-images.githubusercontent.com/106120582/169950237-3447ec5f-ace6-4649-bdb1-6f85fd68d5c0.png)


### - Azure Data Factory
  
  Name: Rox
  
  Serviços Associados
  
    - ABLS_Rox: Armazenamento de Blobs do Azure
    
    - ASQL_RoxDB: Base de Dados SQL do Azure
  
  DataSets/Rox
  
    - ABLS_Rox
     
      Foi criado o Parâmetro CSV para que seja possível passar o nome do arquivo que está dentro do Armazenamento de Blobs;
      
    - ASQL_RoxDB
    
      Foi criado os Parâmetros Schema e Tabela para que seja possível passar o nome da Tabela do Banco de Dados;
  
  Pipelines/PL-Rox
  
    - PL_Customer: Carrega o arquivo Sales.Customer.csv para o banco de dados;
    
    - PL_Person: Carrega o arquivo Person.Person.csv para o banco de dados;
    
    - PL_Product: Carrega o arquivo Production.Product.csv para o banco de dados;
    
    - PL_SalesOrderDetail: Carrega o arquivo Sales.SalesOrderDetail.csv para o banco de dados;
    
    - PL_SalesOrderHeader: Carrega o arquivo Sales.SalesOrderHeader.csv para o banco de dados;
    
    - PL_SpecialOfferProduct: Carrega o arquivo Sales.SpecialOfferProduct.csv para o banco de dados;
    
    
   ![image](https://user-images.githubusercontent.com/106120582/169951625-fac89e9e-a7f2-4b8a-a6cf-e009b9f74745.png)


    
