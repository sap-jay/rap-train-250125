@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item Root View'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_SalesOrderItem01TP as select from ZI_SalesOrderItem_250125
association to parent ZR_SalesOrderHeaderTP as _soheader on $projection.Vbeln = _soheader.Vbeln
{
    key Vbeln,
    key Posnr,
    Matnr,
    Kwmeng,
    Vrkme,
    
    _soheader
}
