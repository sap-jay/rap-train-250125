@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SalesOrderItem_250125 as select from ZVBAP_250125
{
    key vbeln as Vbeln,
    key posnr as Posnr,
    matnr as Matnr,
    @Semantics.quantity.unitOfMeasure : 'vrkme'
    kwmeng as Kwmeng,
    vrkme as Vrkme
}
