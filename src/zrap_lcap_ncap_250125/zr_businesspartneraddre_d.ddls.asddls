@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view forBusinessPartnerAddressX'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAD', 
  allowNewDatasources: false, 
  allowNewCompositions: false, 
  dataSources: [ 'BusinessPartnerAddressX' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerAddre_D
  as select from ZBUSINESSPART03D as BusinessPartnerAddressX
{
  key Partner as Partner,
  key Addrnumber as Addrnumber,
  ValidFrom as ValidFrom,
  ValidTo as ValidTo,
  Street as Street,
  HouseNum as HouseNum,
  PostCode as PostCode,
  City as City,
  Country as Country,
  Region as Region,
  ZtimeZone as ZtimeZone,
  AddrType as AddrType,
  Locallastchanged as Locallastchanged,
  Lastchanged as Lastchanged,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
  
}
