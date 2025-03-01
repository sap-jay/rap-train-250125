CLASS lhc_ZR_TruckMasterInfoTP DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZR_TruckMasterInfoTP RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zr_truckmasterinfotp RESULT result.

    METHODS setinitialstatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR zr_truckmasterinfotp~setinitialstatus.

    METHODS validatesalesorg FOR VALIDATE ON SAVE
      IMPORTING keys FOR zr_truckmasterinfotp~validateDriverID.

ENDCLASS.

CLASS lhc_ZR_TruckMasterInfoTP IMPLEMENTATION.

  METHOD get_instance_authorizations.


  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD setInitialStatus.
  ENDMETHOD.

  METHOD validateSalesOrg.
  ENDMETHOD.

ENDCLASS.
