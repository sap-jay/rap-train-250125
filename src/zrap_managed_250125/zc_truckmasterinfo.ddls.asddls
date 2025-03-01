@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TM Root Consumption View Entity'
@Metadata.allowExtensions: true
define root view entity ZC_TruckMasterInfo as projection on ZR_TruckMasterInfoTP
{
    key Truckregnum,
    Truckmake,
    Truckpuc,
    Lastchanged,
    
    Createdby,
   
    Changedby,
    LocalLastChanged,
    
    _driver : redirected to composition child ZC_TruckDriver
}
