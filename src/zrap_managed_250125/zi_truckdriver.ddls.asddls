@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Truck Driver Data'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_TruckDriver as select from ztruckdrivers
{
    key truckregnum as Truckregnum,
    key driverid as Driverid,
    driverfirstname as Driverfirstname,
    driverlastname as Driverlastname,
    driverslicence as Driverslicence,
    locallastcanged as LocalLastChanged
}
