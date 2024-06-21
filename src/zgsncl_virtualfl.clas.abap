CLASS zgsncl_virtualfl DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_sadl_exit .
    INTERFACES if_sadl_exit_calc_element_read .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgsncl_virtualfl IMPLEMENTATION.


  METHOD if_sadl_exit_calc_element_read~calculate.
    DATA : lt_header TYPE TABLE OF zgsn_c_header_info .
    lt_header = CORRESPONDING #( it_original_data ).
    LOOP AT lt_header ASSIGNING FIELD-SYMBOL(<lfs_header>).
      <lfs_header>-Amount = 10.
    ENDLOOP.

  ENDMETHOD.


  METHOD if_sadl_exit_calc_element_read~get_calculation_info.
  ENDMETHOD.
ENDCLASS.
