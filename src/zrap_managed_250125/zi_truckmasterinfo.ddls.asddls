@AbapCatalog.sqlViewName: 'ZTRUCKMASTERINFO'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Track Master Data'
define view ZI_TruckMasterInfo as select from ztruck_tracking
{
    key truckregnum as Truckregnum,
    truckmake as Truckmake,
    truckpuc as Truckpuc,
    lastchanged as Lastchanged,
    createdby as Createdby,
    changedby as Changedby,
    locallastcanged as LocalLastChanged
}
