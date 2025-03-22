@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forBusinessPartnerGenX'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAA', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ 'BusinessPartnerGenX' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define root view entity ZI_BusinessPartnerGenXTP
  provider contract TRANSACTIONAL_INTERFACE
  as projection on ZR_BusinessPartnerGenXTP as BusinessPartnerGenX
{
  key Partner,
  Type,
  Title,
  NameFirst,
  NameLast,
  NameOrg1,
  NameOrg2,
  Searchterm1,
  Searchterm2,
  Birthdate,
  Grouping,
  IsPerson,
  Gender,
  Locallastchanged,
  Lastchanged,
  Createdby,
  Changedby,
  _BusinessPartnerBank : redirected to composition child ZI_BusinessPartnerBank01TP,
  _BusinessPartnerAddressX : redirected to composition child ZI_BusinessPartnerAddreTP,
  _BusinessPartnerGen1X : redirected to composition child ZI_BusinessPartnerGen1X01TP
  
}
