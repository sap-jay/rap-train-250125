FUNCTION zfm_modify_so.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(VBELN) TYPE  VBELN OPTIONAL
*"     REFERENCE(VBAK) TYPE  ZVBAK_250125 OPTIONAL
*"     REFERENCE(VBAP) TYPE  ZVBAP_250125 OPTIONAL
*"     REFERENCE(CREATE) TYPE  FLAG OPTIONAL
*"     REFERENCE(UPDATE) TYPE  FLAG OPTIONAL
*"     REFERENCE(DELETE) TYPE  FLAG OPTIONAL
*"     REFERENCE(READ) TYPE  FLAG OPTIONAL
*"  EXPORTING
*"     REFERENCE(ET_MESSAGES) TYPE  /DMO/T_MESSAGE
*"----------------------------------------------------------------------
  IF create = abap_true.

    INSERT INTO zvbak_250125 VALUES @vbak.

  ELSEIF update = abap_true.

  ENDIF.





ENDFUNCTION.
