@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
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
@ObjectModel.semanticKey: [ 'Partner' ]
@Search.searchable: true
define root view entity ZC_BusinessPartnerGenXTP
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_BusinessPartnerGenXTP as BusinessPartnerGenX
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
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
  _BusinessPartnerBank : redirected to composition child ZC_BusinessPartnerBank01TP,
  _BusinessPartnerAddressX : redirected to composition child ZC_BusinessPartnerAddreTP,
  _BusinessPartnerGen1X : redirected to composition child ZC_BusinessPartnerGen1X01TP
  
}
