@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view forBusinessPartnerGenX'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAA', 
  allowNewDatasources: false, 
  allowNewCompositions: false, 
  dataSources: [ 'BusinessPartnerGenX' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerGenX_D
  as select from ZBUSINESSPART00D as BusinessPartnerGenX
{
  key Partner as Partner,
  Type as Type,
  Title as Title,
  NameFirst as NameFirst,
  NameLast as NameLast,
  NameOrg1 as NameOrg1,
  NameOrg2 as NameOrg2,
  Searchterm1 as Searchterm1,
  Searchterm2 as Searchterm2,
  Birthdate as Birthdate,
  Grouping as Grouping,
  IsPerson as IsPerson,
  Gender as Gender,
  Locallastchanged as Locallastchanged,
  Lastchanged as Lastchanged,
  Createdby as Createdby,
  Changedby as Changedby,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
  
}
