CLASS lhc_Invoice DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Invoice RESULT result.

    METHODS earlynumbering_cba_Billing FOR NUMBERING
      IMPORTING entities FOR CREATE Invoice\_Billing.

ENDCLASS.

CLASS lhc_Invoice IMPLEMENTATION.

  METHOD get_global_authorizations.

  ENDMETHOD.

  METHOD earlynumbering_cba_Billing.
    BREAK jhas2.

    DATA: lv_item_max_id TYPE zgsn_i_item_info-ItemNo.

    READ ENTITIES OF zgsn_i_header_info IN LOCAL MODE
    ENTITY Invoice BY \_Billing
    FROM CORRESPONDING #( entities )
    LINK DATA(lt_link_db_data).


    DATA lt_billing TYPE TABLE FOR CREATE zgsn_i_header_info\\invoice\_billing.


    READ ENTITIES OF zgsn_i_header_info IN LOCAL MODE
    ENTITY Invoice ALL FIELDS WITH CORRESPONDING #( entities )
    RESULT DATA(lt_result)
    FAILED DATA(lt_failed)
    REPORTED DATA(lt_reported).

  ENDMETHOD.

ENDCLASS.
