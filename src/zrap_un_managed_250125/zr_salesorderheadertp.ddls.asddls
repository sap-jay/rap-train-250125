@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Header Root View'
define root view entity ZR_SalesOrderHeaderTP as select from ZI_SalesOrderHeader
composition [1..*] of ZR_SalesOrderItem01TP as _sochild
{
    key Vbeln,
    Erdat,
    Ernam,
    Vkorg,
    Vtweg,
    Spart,
    Netwr,
    Waerk,
    Lifsk,
    status,
    _sochild
}
