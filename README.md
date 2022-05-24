# rox-teste

Documentação refere a modelagem, infraestrutura, ingestão de dados da empresa que produz bicicletas. 

Modelagem Conceitual dos Dados

Arquivo: Diagram_Rox.drawio

![image](https://user-images.githubusercontent.com/106120582/169947455-1df015fa-d9a2-4b37-9cc4-61fdba28e7c0.png)

Infraestrutura Necessária: 
- Azure SQL Database

  Nome do servidor: azure-rox.database.windows.net
  
  Grupo de recursos: teste-rox
  
  Localidade: East US
  
  Subscrição: Azure subscription 1

- Storage Accounts
  
  Blob: rox10012001
  
  Container: Rox
  
  Arquivos para Ingestão: Person.Person.csv, Production.Product.csv, Sales.Customer.csv, Sales.SalesOrderDetail.csv, Sales.SalesOrderHeader.csv, Sales.SpecialOfferProduct.csv
