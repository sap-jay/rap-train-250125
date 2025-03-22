    CLASS lcl_buffer DEFINITION.
      PUBLIC SECTION.

        TYPES: BEGIN OF ty_buffer_ak.
                 INCLUDE TYPE zvbak_250125  AS vbak_buffer.
        TYPES:   flag TYPE c LENGTH 1,
               END OF ty_buffer_ak.


        TYPES: BEGIN OF ty_buffer_ap.
                 INCLUDE TYPE zvbap_250125  AS vbap_buffer.
        TYPES:   flag TYPE c LENGTH 1,
               END OF ty_buffer_ap.
        CLASS-DATA buffer_vbak TYPE ty_buffer_ak.
        CLASS-DATA buffer_vbap TYPE ty_buffer_ap.

    ENDCLASS.

    CLASS lhc_ZR_SalesOrderHeaderTP DEFINITION INHERITING FROM cl_abap_behavior_handler.
      PRIVATE SECTION.

        METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
          IMPORTING keys REQUEST requested_authorizations FOR ZR_SalesOrderHeaderTP RESULT result.

        METHODS create FOR MODIFY
          IMPORTING entities FOR CREATE ZR_SalesOrderHeaderTP.

        METHODS update FOR MODIFY
          IMPORTING entities FOR UPDATE ZR_SalesOrderHeaderTP.

        METHODS delete FOR MODIFY
          IMPORTING keys FOR DELETE ZR_SalesOrderHeaderTP.

        METHODS read FOR READ
          IMPORTING keys FOR READ ZR_SalesOrderHeaderTP RESULT result.

        METHODS lock FOR LOCK
          IMPORTING keys FOR LOCK ZR_SalesOrderHeaderTP.

        METHODS rba_Sochild FOR READ
          IMPORTING keys_rba FOR READ ZR_SalesOrderHeaderTP\_Sochild FULL result_requested RESULT result LINK association_links.

        METHODS cba_Sochild FOR MODIFY
          IMPORTING entities_cba FOR CREATE ZR_SalesOrderHeaderTP\_Sochild.
        METHODS get_instance_features FOR INSTANCE FEATURES
          IMPORTING keys REQUEST requested_features FOR ZR_SalesOrderHeaderTP RESULT result.

        METHODS CloseSO FOR MODIFY
          IMPORTING keys FOR ACTION ZR_SalesOrderHeaderTP~CloseSO.

    ENDCLASS.

    CLASS lhc_ZR_SalesOrderHeaderTP IMPLEMENTATION.

      METHOD get_instance_authorizations.
      ENDMETHOD.

      METHOD create.
        DATA : lT_MESSAGES TYPE /dmo/t_message,
               ls_vbak     TYPE zvbak_250125.

        LOOP AT entities ASSIGNING FIELD-SYMBOL(<entity>).

          ls_vbak = CORRESPONDING #( <entity> ).

*      CALL FUNCTION 'ZFM_MODIFY_SO'
*        EXPORTING
*          vbak        = ls_vbak
*          create      = abap_true
*        IMPORTING
*          et_messages = lt_messages.
          lcl_buffer=>buffer_vbak = ls_vbak.
          LOOP AT lt_messages INTO DATA(ls_msg).
            IF ls_msg-msgty = 'S'.
              mapped-zr_salesorderheadertp = VALUE #( BASE mapped-zr_salesorderheadertp
                 (  %cid =  <entity>-%cid
                   Vbeln = <entity>-Vbeln )
              ).
            ELSE.
              APPEND VALUE #( %cid =  <entity>-%cid
              Vbeln = <entity>-Vbeln ) TO failed-zr_salesorderheadertp.


              APPEND VALUE #( %msg  = new_message( id = ls_msg-msgid
                                                  number = ls_msg-msgno
                                                  v1 = ls_msg-msgv1
                                                  severity = if_abap_behv_message=>severity-error )
                            %key-Vbeln = <entity>-Vbeln
                            %cid =  <entity>-%cid
                            %create = abap_true ) TO reported-zr_salesorderheadertp.
            ENDIF.
          ENDLOOP.


        ENDLOOP.



      ENDMETHOD.

      METHOD update.

        DATA : lT_MESSAGES TYPE /dmo/t_message,
               ls_vbak     TYPE zvbak_250125.

        LOOP AT entities ASSIGNING FIELD-SYMBOL(<entity>).

          ls_vbak = CORRESPONDING #( <entity> ).

          CALL FUNCTION 'ZFM_MODIFY_SO'
            EXPORTING
              vbak        = <entity>
              update      = abap_true
            IMPORTING
              et_messages = lt_messages.
          LOOP AT lt_messages INTO DATA(ls_msg).
            IF ls_msg-msgty = 'S'.

              APPEND VALUE #( Vbeln = <entity>-Vbeln ) TO mapped-zr_salesorderheadertp.
            ELSE.
              APPEND VALUE #( Vbeln = <entity>-Vbeln ) TO failed-zr_salesorderheadertp.


              APPEND VALUE #( %msg  = new_message( id = ls_msg-msgid
                                                  number = ls_msg-msgno
                                                  v1 = ls_msg-msgv1
                                                  severity = if_abap_behv_message=>severity-error )
                                                  ) TO reported-zr_salesorderheadertp.
            ENDIF.
          ENDLOOP.


        ENDLOOP.
      ENDMETHOD.

      METHOD delete.

        DATA : lT_MESSAGES TYPE /dmo/t_message,
               ls_vbak     TYPE zvbak_250125.

        LOOP AT keys ASSIGNING FIELD-SYMBOL(<key>).

          READ ENTITIES OF ZR_SalesOrderHeaderTP
           ENTITY ZR_SalesOrderHeaderTP
           FROM  VALUE   #( ( %key = <key>-Vbeln ) )
           RESULT DATA(ls_salesOrders).
          IF  sy-subrc = 0.

          SELECT single * from zvbak_250125

          WHERE vbeln =  @<key>-Vbeln
          INTO @ls_vbak.
*            CALL FUNCTION 'ZFM_MODIFY_SO'
*              EXPORTING
*                vbak        = ls_salesOrders
*                delete      = abap_true
*              IMPORTING
*                et_messages = lt_messages.

lcl_buffer=>buffer_vbak = ls_vbak.
lcl_buffer=>buffer_vbak-flag = 'D'.
            LOOP AT lt_messages INTO DATA(ls_msg).
              IF ls_msg-msgty = 'S'.

                APPEND VALUE #( Vbeln = <key>-Vbeln ) TO mapped-zr_salesorderheadertp.
              ELSE.
                APPEND VALUE #( Vbeln = <key>-Vbeln ) TO failed-zr_salesorderheadertp.


                APPEND VALUE #( %msg  = new_message( id = ls_msg-msgid
                                                     number = ls_msg-msgno
                                                     v1 = ls_msg-msgv1
                                                     severity = if_abap_behv_message=>severity-error )
                                                     ) TO reported-zr_salesorderheadertp.
              ENDIF.
            ENDLOOP.
          ENDIF.
        ENDLOOP.

      ENDMETHOD.

      METHOD read.
        DATA : vbak        TYPE zvbak_250125,
               vbap        TYPE zvbap_250125,
               lt_messages TYPE /dmo/t_message.


        LOOP AT keys INTO DATA(key).
          CALL FUNCTION 'ZFM_MODIFY_SO'
            EXPORTING
              vbeln       = key-Vbeln
              vbak        = vbak
              vbap        = vbap
              read        = abap_true
            IMPORTING
              et_messages = lt_messages.
          LOOP AT lt_messages INTO DATA(ls_msg).
            IF ls_msg-msgty = 'S'.
              INSERT CORRESPONDING #( vbak ) INTO TABLE result.
            ELSE.

              APPEND VALUE #(   vbeln = key-Vbeln
                                %msg  = new_message( id = ls_msg-msgid
                                                  number = ls_msg-msgno
                                                  v1 = ls_msg-msgv1
                                                  severity = if_abap_behv_message=>severity-error
                                                 ) ) TO reported-zr_salesorderheadertp.
            ENDIF.

          ENDLOOP.
        ENDLOOP.
      ENDMETHOD.

      METHOD lock.


        DATA(lock) = cl_abap_lock_object_factory=>get_instance( iv_name = 'ZVBAK_250125' ).

        LOOP AT keys ASSIGNING FIELD-SYMBOL(<key>).
          TRY.

              lock->enqueue(
                it_parameter  = VALUE #( ( name = 'VBELN' value = REF #( <key>-Vbeln ) ) )
              ).
            CATCH cx_root INTO DATA(lo_root).
              APPEND VALUE #( Vbeln = <key>-Vbeln ) TO failed-zr_salesorderheadertp.

              APPEND VALUE #( %msg  = new_message( id = 'LOCK_FAILED'
                                                   number = '007'
                                                   v1 = lo_root->get_text( )
                                                   severity = if_abap_behv_message=>severity-error )
                                                   ) TO reported-zr_salesorderheadertp.



          ENDTRY.

        ENDLOOP.

      ENDMETHOD.

      METHOD rba_Sochild.
        DATA : vbak        TYPE zvbak_250125,
               vbap        TYPE zvbap_250125,
               lt_messages TYPE /dmo/t_message.

        LOOP AT keys_rba ASSIGNING FIELD-SYMBOL(<keys_rbs>).

          CALL FUNCTION 'ZFM_MODIFY_SO'
            EXPORTING
              vbeln       = <keys_rbs>-Vbeln
              vbak        = vbak
              vbap        = vbap
              read        = abap_true
            IMPORTING
              et_messages = lt_messages.
          IF lt_messages IS INITIAL.
            INSERT
            VALUE #(
              source-%key = <keys_rbs>-%key
              target-%key = VALUE #(
                Vbeln = vbap-vbeln
                posnr = vbap-posnr
              )
            ) INTO TABLE association_links.

          ENDIF.



        ENDLOOP.

      ENDMETHOD.

      METHOD cba_Sochild.
        DATA : vbak        TYPE zvbak_250125,
               vbap        TYPE zvbap_250125,
               lt_messages TYPE /dmo/t_message.

        LOOP AT entities_cba ASSIGNING FIELD-SYMBOL(<entity_cba>).
          CALL FUNCTION 'ZFM_READ_SO'
            EXPORTING
              vbeln       = <entity_cba>-Vbeln
            IMPORTING
              vbak        = vbak
              vbap        = vbap
              et_messages = lt_messages.
          IF lt_messages IS INITIAL.

            LOOP AT <entity_cba>-%target ASSIGNING FIELD-SYMBOL(<entity>).

              CALL FUNCTION 'ZFM_MODIFY_SO'
                EXPORTING
                  vbeln       = <entity_cba>-Vbeln
                  vbak        = vbak
                  vbap        = vbap
                  create      = abap_true
                IMPORTING
                  et_messages = lt_messages.
              IF lt_messages IS INITIAL.

                INSERT VALUE #(
                %cid = <entity>-%cid
                Vbeln = <entity>-Vbeln
                posnr = <entity>-Posnr
                  ) INTO TABLE mapped-zr_salesorderitem01tp.
              ELSE.
                LOOP AT lt_messages INTO DATA(ls_msg).

                  INSERT VALUE #( %cid = <entity>-%cid vbeln = <entity_cba>-Vbeln  ) INTO TABLE failed-zr_salesorderitem01tp.

                  APPEND VALUE #(   %cid = <entity>-%cid
                                    vbeln = <entity_cba>-Vbeln
                                    %msg  = new_message( id = ls_msg-msgid
                                                      number = ls_msg-msgno
                                                      v1 = ls_msg-msgv1
                                                      severity = if_abap_behv_message=>severity-error
                                                     ) ) TO reported-zr_salesorderitem01tp.

                ENDLOOP.
              ENDIF.

            ENDLOOP.


          ENDIF.





        ENDLOOP.
      ENDMETHOD.

      METHOD get_instance_features.
  ENDMETHOD.

  METHOD CloseSO.
  ENDMETHOD.

ENDCLASS.

    CLASS lhc_ZR_SalesOrderItem01TP DEFINITION INHERITING FROM cl_abap_behavior_handler.
      PRIVATE SECTION.

        METHODS update FOR MODIFY
          IMPORTING entities FOR UPDATE ZR_SalesOrderItem01TP.

        METHODS delete FOR MODIFY
          IMPORTING keys FOR DELETE ZR_SalesOrderItem01TP.

        METHODS read FOR READ
          IMPORTING keys FOR READ ZR_SalesOrderItem01TP RESULT result.

        METHODS rba_Soheader FOR READ
          IMPORTING keys_rba FOR READ ZR_SalesOrderItem01TP\_Soheader FULL result_requested RESULT result LINK association_links.

    ENDCLASS.

    CLASS lhc_ZR_SalesOrderItem01TP IMPLEMENTATION.

      METHOD update.
      ENDMETHOD.

      METHOD delete.
      ENDMETHOD.

      METHOD read.
      ENDMETHOD.

      METHOD rba_Soheader.
      ENDMETHOD.

    ENDCLASS.

    CLASS lsc_ZR_SALESORDERHEADERTP DEFINITION INHERITING FROM cl_abap_behavior_saver.
      PROTECTED SECTION.

        METHODS finalize REDEFINITION.

        METHODS check_before_save REDEFINITION.

        METHODS save REDEFINITION.

        METHODS cleanup REDEFINITION.

        METHODS cleanup_finalize REDEFINITION.

    ENDCLASS.

    CLASS lsc_ZR_SALESORDERHEADERTP IMPLEMENTATION.

      METHOD finalize.
      ENDMETHOD.

      METHOD check_before_save.
      ENDMETHOD.

      METHOD save.

        DATA : lT_MESSAGES TYPE /dmo/t_message,
               ls_vbak     TYPE zvbak_250125.

        ls_vbak = CORRESPONDING #( lcl_buffer=>buffer_vbak ).

        CALL FUNCTION 'ZFM_MODIFY_SO'
          EXPORTING
            vbak        = ls_vbak
            create      = abap_true
          IMPORTING
            et_messages = lt_messages.

      ENDMETHOD.

      METHOD cleanup.
      ENDMETHOD.

      METHOD cleanup_finalize.
      ENDMETHOD.

    ENDCLASS.
