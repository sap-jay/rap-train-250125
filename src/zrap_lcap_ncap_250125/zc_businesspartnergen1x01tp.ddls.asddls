@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forBusinessPartnerGen1X'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAC', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ 'BusinessPartnerGen1X' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
@ObjectModel.semanticKey: [ 'Partner' ]
@Search.searchable: true
define view entity ZC_BusinessPartnerGen1X01TP
  as projection on ZR_BusinessPartnerGen1X01TP as BusinessPartnerGen1X
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key Partner,
  Langu,
  Currency,
  Industry,
  LegalForm,
  Country,
  Region,
  Idnumber,
  Locallastchanged,
  Lastchanged,
  _BusinessPartnerGenX : redirected to parent ZC_BusinessPartnerGenXTP
  
}
