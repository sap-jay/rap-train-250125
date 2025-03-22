@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forBusinessPartnerBank'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAB', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ 'BusinessPartnerBank' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZI_BusinessPartnerBank01TP
  as projection on ZR_BusinessPartnerBank01TP as BusinessPartnerBank
{
  key Partner,
  key BankID,
  BankCtry,
  BankKey,
  BankAcct,
  Iban,
  SwiftCode,
  ValidFrom,
  ValidTo,
  Locallastchanged,
  Lastchanged,
  _BusinessPartnerBankDetails : redirected to composition child ZI_BusinessPartnerBankDTP,
  _BusinessPartnerGenX : redirected to parent ZI_BusinessPartnerGenXTP
  
}
