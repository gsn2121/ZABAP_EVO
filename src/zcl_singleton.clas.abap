CLASS zcl_singleton DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    CLASS-METHODS class_constructor .
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA go_object TYPE REF TO zcl_singleton.
ENDCLASS.



CLASS zcl_singleton IMPLEMENTATION.


  METHOD class_constructor.
    IF go_object IS NOT BOUND.
      CREATE OBJECT go_object.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
