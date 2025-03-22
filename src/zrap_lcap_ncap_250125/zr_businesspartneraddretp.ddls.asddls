@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBusinessPartnerAddressX'
@ObjectModel.sapObjectNodeType.name: 'ZBusinessPartnerAddressX'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAD', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerAddreTP
  as select from ZBUT020 as BusinessPartnerAddressX
  association to parent ZR_BusinessPartnerGenXTP as _BusinessPartnerGenX on $projection.Partner = _BusinessPartnerGenX.Partner
  association [1] to ZE_BusinessPartnerAddre as _Extension on $projection.Partner = _Extension.Partner and $projection.Addrnumber = _Extension.Addrnumber
{
  key PARTNER as Partner,
  key ADDRNUMBER as Addrnumber,
  VALID_FROM as ValidFrom,
  VALID_TO as ValidTo,
  STREET as Street,
  HOUSE_NUM as HouseNum,
  POST_CODE as PostCode,
  CITY as City,
  COUNTRY as Country,
  REGION as Region,
  ZTIME_ZONE as ZtimeZone,
  ADDR_TYPE as AddrType,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  LASTCHANGED as Lastchanged,
  _BusinessPartnerGenX,
  _Extension
  
}
