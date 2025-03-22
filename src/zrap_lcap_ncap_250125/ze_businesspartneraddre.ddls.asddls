@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Extension include view forBusinessPartnerAddressX'
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
define view entity ZE_BusinessPartnerAddre
  as select from ZBUT020 as BusinessPartnerAddressX
{
  key PARTNER as Partner,
  key ADDRNUMBER as Addrnumber
  
}
