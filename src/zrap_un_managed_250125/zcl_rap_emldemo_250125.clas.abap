CLASS zcl_rap_emldemo_250125 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_rap_emldemo_250125 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  READ ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP
*      FROM  VALUE   #( ( Truckregnum = 'TRUCK002' ) )
*      RESULT DATA(it_truck).


*  READ ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP
*    ALL FIELDS WITH
*      VALUE   #( ( Truckregnum = 'TRUCK002' ) )
*      RESULT DATA(it_truck).

*READ ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP
*    FIELDS  ( Truckregnum Truckmake )
*      WITH VALUE   #( ( Truckregnum = 'TRUCK002' ) )
*      RESULT DATA(it_truck).

*READ ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP BY \_driver
*    ALL FIELDS WITH
*      VALUE   #( ( Truckregnum = 'TRUCK0020000000000001' ) )
*      RESULT DATA(it_drivers)
*      FAILED    DATA(it_failed)
*      REPORTED  DATA(it_reported).
*
*
*      out->write( it_drivers ).
*
*      out->write( it_failed ).
*
*      out->write( it_reported ).

*MODIFY ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP
*    UPDATE
*    SET FIELDS WITH VALUE
*    #( (  Truckregnum = 'TRUCK002'
*          Truckmake = 'TESLA' ) )
*      FAILED    DATA(it_failed)
*      REPORTED  DATA(it_reported).
*
*COMMIT ENTITIES
*RESPONSE OF ZR_TruckMasterInfoTP
*FAILED  it_failed
*REPORTED    it_reported.
*
*      out->write( it_failed ).
*
*      out->write( it_reported ).

*MODIFY ENTITIES OF  ZR_TruckMasterInfoTP
*    ENTITY  ZR_TruckMasterInfoTP
*    CREATE
*    SET FIELDS WITH VALUE
*    #( (  %cid = 'MyUniqueContentID_1'
*          Truckregnum = 'TRUCK005'
*          Truckmake = 'TATA'
*          Truckpuc = 'PUC1234' ) )
*      MAPPED    DATA(it_mapped)
*      FAILED    DATA(it_failed)
*      REPORTED  DATA(it_reported).
*
*COMMIT ENTITIES
*RESPONSE OF ZR_TruckMasterInfoTP
*FAILED  it_failed
*REPORTED    it_reported.
*
*      out->write( it_mapped ).
*
*      out->write( it_failed ).
*
*      out->write( it_reported ).

MODIFY ENTITIES OF  ZR_TruckMasterInfoTP
    ENTITY  ZR_TruckMasterInfoTP
    DELETE FROM
    VALUE
    #( (  Truckregnum = 'TRUCK005' ) )
      FAILED    DATA(it_failed)
      REPORTED  DATA(it_reported).

COMMIT ENTITIES
RESPONSE OF ZR_TruckMasterInfoTP
FAILED  it_failed
REPORTED    it_reported.


      out->write( it_failed ).

      out->write( it_reported ).





  ENDMETHOD.
ENDCLASS.
