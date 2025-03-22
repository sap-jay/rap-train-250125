@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Item'
@Metadata.allowExtensions: true
define view entity ZC_SalesOrderItem
  as projection on ZR_SalesOrderItem01TP
{
  key Vbeln,
  key Posnr,
      Matnr,
      Kwmeng,
      Vrkme,
      /* Associations */
      _soheader : redirected to parent ZC_SalesOrderHeader
      
}
