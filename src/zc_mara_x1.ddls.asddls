@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_MARA_X1
  provider contract transactional_query
  as projection on ZR_MARA_X1
{
  key Matnr,
  Mtart,
  Matkl,
  @Semantics.unitOfMeasure: true
  Meins,
  Ersda,
  Ernam,
  Lastchanged,
  Createdby,
  Changedby
  
}
