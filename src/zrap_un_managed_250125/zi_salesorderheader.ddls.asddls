@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SalesOrderHeader as select from zvbak_250125
{
    key vbeln as Vbeln,
    erdat as Erdat,
    ernam as Ernam,
    vkorg as Vkorg,
    vtweg as Vtweg,
    kunnr as kunnr,
    spart as Spart,
    @Semantics.amount.currencyCode : 'Waerk'
    netwr as Netwr,
    waerk as Waerk,
    lifsk as Lifsk,
    status as status
}
