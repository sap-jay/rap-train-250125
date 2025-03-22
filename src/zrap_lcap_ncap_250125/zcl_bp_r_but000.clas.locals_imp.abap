CLASS lsc_zr_but000 DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

ENDCLASS.

CLASS lsc_zr_but000 IMPLEMENTATION.

  METHOD save_modified.

  Data(lt_but000) = create-gen1.
  lt_but000 = update-gen1.
  data(lt_but000_d) = delete-gen1.



  ENDMETHOD.

ENDCLASS.

CLASS lhc_zr_but000 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR gen1
        RESULT result.
ENDCLASS.

CLASS lhc_zr_but000 IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
ENDCLASS.
