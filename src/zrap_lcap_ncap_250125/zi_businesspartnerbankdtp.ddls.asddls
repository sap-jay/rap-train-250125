@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forBusinessPartnerBankDetails'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAE', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ 'BusinessPartnerBankDetails' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZI_BusinessPartnerBankDTP
  as projection on ZR_BusinessPartnerBankDTP as BusinessPartnerBankDetails
{
  key Partner,
  key BankID,
  BankName,
  Branch,
  Region,
  Street,
  City,
  SwiftCode,
  Locallastchanged,
  Lastchanged,
  _BusinessPartnerBank : redirected to parent ZI_BusinessPartnerBank01TP,
  _BusinessPartnerGenX : redirected to ZI_BusinessPartnerGenXTP
  
}
