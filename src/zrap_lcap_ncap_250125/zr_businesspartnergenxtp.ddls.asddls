@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forBusinessPartnerGenX'
@ObjectModel.sapObjectNodeType.name: 'ZBusinessPartnerGenX'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAA', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define root view entity ZR_BusinessPartnerGenXTP
  as select from ZBUT000 as BusinessPartnerGenX
  association [1] to ZE_BusinessPartnerGenX as _Extension on $projection.Partner = _Extension.Partner
  composition [0..*] of ZR_BusinessPartnerBank01TP as _BusinessPartnerBank
  composition [0..*] of ZR_BusinessPartnerAddreTP as _BusinessPartnerAddressX
  composition [0..*] of ZR_BusinessPartnerGen1X01TP as _BusinessPartnerGen1X
{
  key PARTNER as Partner,
  TYPE as Type,
  TITLE as Title,
  NAME_FIRST as NameFirst,
  NAME_LAST as NameLast,
  NAME_ORG1 as NameOrg1,
  NAME_ORG2 as NameOrg2,
  SEARCHTERM1 as Searchterm1,
  SEARCHTERM2 as Searchterm2,
  BIRTHDATE as Birthdate,
  GROUPING as Grouping,
  IS_PERSON as IsPerson,
  GENDER as Gender,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCALLASTCHANGED as Locallastchanged,
  @Semantics.systemDateTime.lastChangedAt: true
  LASTCHANGED as Lastchanged,
  @Semantics.user.createdBy: true
  CREATEDBY as Createdby,
  @Semantics.user.lastChangedBy: true
  CHANGEDBY as Changedby,
  _BusinessPartnerBank,
  _BusinessPartnerAddressX,
  _BusinessPartnerGen1X,
  _Extension
  
}
