@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Truck Driver Consumption View'
@Metadata.allowExtensions: true
define view entity ZC_TruckDriver as projection on ZR_TruckDriverTP
{
    key Truckregnum,
    key Driverid,
    Driverfirstname,
    Driverlastname,
    Driverslicence,
    LocalLastChanged,
    
    _truck : redirected to parent ZC_TruckMasterInfo
    
}
