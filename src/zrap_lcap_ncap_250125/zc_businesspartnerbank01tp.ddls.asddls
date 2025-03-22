@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
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
@ObjectModel.semanticKey: [ 'BankID' ]
@Search.searchable: true
define view entity ZC_BusinessPartnerBank01TP
  as projection on ZR_BusinessPartnerBank01TP as BusinessPartnerBank
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key Partner,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
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
  _BusinessPartnerBankDetails : redirected to composition child ZC_BusinessPartnerBankDTP,
  _BusinessPartnerGenX : redirected to parent ZC_BusinessPartnerGenXTP
  
}
