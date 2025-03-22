@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_SalesOrderHeader
  as projection on ZR_SalesOrderHeaderTP
{
  key Vbeln,
      Erdat,
      Ernam,
      Vkorg,
      Vtweg,
      kunnr,
      Spart,
      Netwr,
      Waerk,
      Lifsk,
      status,
      /* Associations */
      _sochild : redirected to composition child ZC_SalesOrderItem
//      _sochild : redirected to composition child ZC_CustomerMaster
}
