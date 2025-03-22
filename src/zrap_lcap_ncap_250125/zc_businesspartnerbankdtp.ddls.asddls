@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
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
@ObjectModel.semanticKey: [ 'BankID' ]
@Search.searchable: true
define view entity ZC_BusinessPartnerBankDTP
  as projection on ZR_BusinessPartnerBankDTP as BusinessPartnerBankDetails
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key Partner,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key BankID,
  BankName,
  Branch,
  Region,
  Street,
  City,
  SwiftCode,
  Locallastchanged,
  Lastchanged,
  _BusinessPartnerBank : redirected to parent ZC_BusinessPartnerBank01TP,
  _BusinessPartnerGenX : redirected to ZC_BusinessPartnerGenXTP
  
}
