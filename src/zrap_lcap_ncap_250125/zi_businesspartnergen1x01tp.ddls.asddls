@AccessControl.authorizationCheck: #CHECK
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
define view entity ZI_BusinessPartnerGen1X01TP
  as projection on ZR_BusinessPartnerGen1X01TP as BusinessPartnerGen1X
{
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
  _BusinessPartnerGenX : redirected to parent ZI_BusinessPartnerGenXTP
  
}
