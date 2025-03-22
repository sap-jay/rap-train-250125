@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view forBusinessPartnerBank'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAB', 
  allowNewDatasources: false, 
  allowNewCompositions: false, 
  dataSources: [ 'BusinessPartnerBank' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define view entity ZR_BusinessPartnerBank_D
  as select from ZBUSINESSPART01D as BusinessPartnerBank
{
  key Partner as Partner,
  key BankID as BankID,
  BankCtry as BankCtry,
  BankKey as BankKey,
  BankAcct as BankAcct,
  Iban as Iban,
  SwiftCode as SwiftCode,
  ValidFrom as ValidFrom,
  ValidTo as ValidTo,
  Locallastchanged as Locallastchanged,
  Lastchanged as Lastchanged,
  draftentitycreationdatetime as Draftentitycreationdatetime,
  draftentitylastchangedatetime as Draftentitylastchangedatetime,
  draftadministrativedatauuid as Draftadministrativedatauuid,
  draftentityoperationcode as Draftentityoperationcode,
  hasactiveentity as Hasactiveentity,
  draftfieldchanges as Draftfieldchanges
  
}
