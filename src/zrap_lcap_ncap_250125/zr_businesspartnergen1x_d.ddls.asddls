@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view forBusinessPartnerGen1X'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAC', 
  allowNewDatasources: false, 
  allowNewCompositions: false, 
  dataSources: [ 'BusinessPartnerGen1X' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerGen1X_D
  as select from ZBUSINESSPART02D as BusinessPartnerGen1X
{
  key Partner as Partner,
  Langu as Langu,
  Currency as Currency,
  Industry as Industry,
  LegalForm as LegalForm,
  Country as Country,
  Region as Region,
  Idnumber as Idnumber,
  Locallastchanged as Locallastchanged,
  Lastchanged as Lastchanged,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
  
}
