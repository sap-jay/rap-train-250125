@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Truck Master Root View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_TruckMasterInfoTP as select from ZI_TruckMasterInfo
composition [0..*] of ZR_TruckDriverTP as _driver
{
    key Truckregnum,
    Truckmake,
    Truckpuc,
    @Semantics.systemDateTime.lastChangedAt: true
    Lastchanged,
    @Semantics.user.createdBy: true
    Createdby,
    @Semantics.user.lastChangedBy: true
    Changedby,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChanged,
    
    _driver
}
