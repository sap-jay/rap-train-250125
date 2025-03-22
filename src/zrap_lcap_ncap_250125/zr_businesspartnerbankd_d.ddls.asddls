@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view forBusinessPartnerBankDetails'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAE', 
  allowNewDatasources: false, 
  allowNewCompositions: false, 
  dataSources: [ 'BusinessPartnerBankDetails' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerBankD_D
  as select from ZBUSINESSPART04D as BusinessPartnerBankDetails
{
  key Partner as Partner,
  key BankID as BankID,
  BankName as BankName,
  Branch as Branch,
  Region as Region,
  Street as Street,
  City as City,
  SwiftCode as SwiftCode,
  Locallastchanged as Locallastchanged,
  Lastchanged as Lastchanged,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
  
}
