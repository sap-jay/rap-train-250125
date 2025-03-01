CLASS zcl_my_first_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MY_FIRST_CLASS IMPLEMENTATION.


 METHOD if_oo_adt_classrun~main.
    out->write( | '1st ABAP CLI Class' && ({ cl_abap_context_info=>get_user_alias(  ) })| ).
  ENDMETHOD.
ENDCLASS.
