@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forBusinessPartnerAddressX'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAD', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ 'BusinessPartnerAddressX' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
@ObjectModel.semanticKey: [ 'Addrnumber' ]
@Search.searchable: true
define view entity ZC_BusinessPartnerAddreTP
  as projection on ZR_BusinessPartnerAddreTP as BusinessPartnerAddressX
{
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key Partner,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  key Addrnumber,
  ValidFrom,
  ValidTo,
  Street,
  HouseNum,
  PostCode,
  City,
  Country,
  Region,
  ZtimeZone,
  AddrType,
  Locallastchanged,
  Lastchanged,
  _BusinessPartnerGenX : redirected to parent ZC_BusinessPartnerGenXTP
  
}
