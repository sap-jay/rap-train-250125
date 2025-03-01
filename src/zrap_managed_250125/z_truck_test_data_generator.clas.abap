CLASS z_truck_test_data_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS:
      create_truck_driver_data,
      create_truck_tracking_data.

    DATA: current_timestamp TYPE timestampl.
ENDCLASS.



CLASS Z_TRUCK_TEST_DATA_GENERATOR IMPLEMENTATION.


  METHOD create_truck_driver_data.
   " Insert Truck Driver data
    INSERT ztruckdrivers FROM TABLE @( VALUE #(
    (
      client = '100' truckregnum = 'TRUCK001' driverid = 'DRV001'
      driverfirstname = 'John' driverlastname = 'Doe' driverslicence = 'DL12345'
    )
    (
      client = '100' truckregnum = 'TRUCK002' driverid = 'DRV002'
      driverfirstname = 'Jane' driverlastname = 'Smith' driverslicence = 'DL67890'
    )
    (
      client = '100' truckregnum = 'TRUCK003' driverid = 'DRV003'
      driverfirstname = 'Mike' driverlastname = 'Johnson' driverslicence = 'DL54321'
    )
        (
      client = '100' truckregnum = 'TRUCK001' driverid = 'DRV004'
      driverfirstname = 'Joe' driverlastname = 'Trib' driverslicence = 'DL12345'
    )
    (
      client = '100' truckregnum = 'TRUCK002' driverid = 'DRV005'
      driverfirstname = 'Chandler' driverlastname = 'Bing' driverslicence = 'DL67890'
    )
    (
      client = '100' truckregnum = 'TRUCK003' driverid = 'DRV006'
      driverfirstname = 'Ross' driverlastname = 'Geller' driverslicence = 'DL54321'
    )
    ) ).
  ENDMETHOD.


  METHOD create_truck_tracking_data.
    " Insert Truck Tracking data
    INSERT zTRUCK_TRACKING FROM TABLE @( VALUE #(
    (
      client = '100' truckregnum = 'TRUCK001' truckmake = 'Volvo'
      truckpuc = 'PUC12345' lastchanged = current_timestamp
      createdby = sy-uname changedby = sy-uname
    )
    (
      client = '100' truckregnum = 'TRUCK002' truckmake = 'Scania'
      truckpuc = 'PUC67890' lastchanged = current_timestamp
      createdby = sy-uname changedby = sy-uname
    )
    (
      client = '100' truckregnum = 'TRUCK003' truckmake = 'Mercedes'
      truckpuc = 'PUC54321' lastchanged = current_timestamp
      createdby = sy-uname changedby = sy-uname
    )
    ) ).
  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    GET TIME STAMP FIELD current_timestamp.

    " Create test data
    create_truck_driver_data( ).
    create_truck_tracking_data( ).

    out->write( 'Truck and Driver test data generated successfully.' ).
  ENDMETHOD.
ENDCLASS.
