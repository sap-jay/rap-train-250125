@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Extension include view forBusinessPartnerBankDetails'
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
define view entity ZE_BusinessPartnerBankD
  as select from ZBUT0BK as BusinessPartnerBankDetails
{
  key PARTNER as Partner,
  key BANKID as BankID
  
}
