@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Truck Driver Data Root'
//@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZR_TruckDriverTP as select from ZI_TruckDriver
association to parent ZR_TruckMasterInfoTP as _truck on $projection.Truckregnum = _truck.Truckregnum
{
    key Truckregnum,
    key Driverid,
    Driverfirstname,
    Driverlastname,
    Driverslicence,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    LocalLastChanged,
    
    _truck
    
}
