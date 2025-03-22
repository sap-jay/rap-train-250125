@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBusinessPartnerGen1X'
@ObjectModel.sapObjectNodeType.name: 'ZBusinessPartnerGen1X'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAC', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerGen1X01TP
  as select from ZBUT001 as BusinessPartnerGen1X
  association to parent ZR_BusinessPartnerGenXTP as _BusinessPartnerGenX on $projection.Partner = _BusinessPartnerGenX.Partner
  association [1] to ZE_BusinessPartnerGen1X as _Extension on $projection.Partner = _Extension.Partner
{
  key PARTNER as Partner,
  LANGU as Langu,
  CURRENCY as Currency,
  INDUSTRY as Industry,
  LEGAL_FORM as LegalForm,
  COUNTRY as Country,
  REGION as Region,
  IDNUMBER as Idnumber,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  LASTCHANGED as Lastchanged,
  _BusinessPartnerGenX,
  _Extension
  
}
