@AccessControl.authorizationCheck: #CHECK
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
define view entity ZI_BusinessPartnerAddreTP
  as projection on ZR_BusinessPartnerAddreTP as BusinessPartnerAddressX
{
  key Partner,
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
  _BusinessPartnerGenX : redirected to parent ZI_BusinessPartnerGenXTP
  
}
