CLASS lhc_travel DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR Travel
        RESULT result,
      earlynumbering_create FOR NUMBERING
        IMPORTING entities FOR CREATE Travel,
      SetApprove FOR MODIFY
            IMPORTING keys FOR ACTION Travel~SetApprove RESULT result.
ENDCLASS.

CLASS lhc_travel IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
  METHOD earlynumbering_create.

    DATA(lt_entities) = entities.

    LOOP AT lt_entities INTO DATA(ls_entities) WHERE  TravelID IS NOT INITIAL.
*   APPEND value #(ls_entities ) TO mapped-travel.
      APPEND CORRESPONDING #( ls_entities ) TO mapped-travel.
    ENDLOOP.

    DELETE lt_entities WHERE TravelID IS NOT INITIAL.

    SELECT  MAX( travel_id ) FROM zgsn_rap_travel INTO @DATA(lv_max) .
    DATA(temptravelid) = CONV /dmo/travel_id( lv_max ).
    LOOP AT lt_entities ASSIGNING FIELD-SYMBOL(<lfs_entities>).
      temptravelid = temptravelid + 1.
      <lfs_entities>-TravelID = temptravelid.
      APPEND VALUE #( %cid          = <lfs_entities>-%cid
                      %is_draft     = <lfs_entities>-%is_draft
                      %key          = <lfs_entities>-%key )
                   TO mapped-travel.

    ENDLOOP.

  ENDMETHOD.

  METHOD SetApprove.
  ENDMETHOD.

ENDCLASS.
