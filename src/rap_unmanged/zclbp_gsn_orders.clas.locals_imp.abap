CLASS lhc_order DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
*    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
*      IMPORTING REQUEST requested_authorizations FOR order RESULT result.
*    METHODS get_instance_features FOR INSTANCE FEATURES
*      IMPORTING keys REQUEST requested_features FOR order RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR order RESULT result.

    METHODS read FOR READ
      IMPORTING keys FOR READ order RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK order.
    METHODS get_global_features FOR GLOBAL FEATURES
      IMPORTING REQUEST requested_features FOR order RESULT result.

    METHODS setapprove FOR MODIFY
      IMPORTING keys FOR ACTION order~setapprove RESULT result.

    METHODS setcancel FOR MODIFY
      IMPORTING keys FOR ACTION order~setcancel RESULT result.
    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE order.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE order.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE order.

*    METHODS SetApprove FOR MODIFY
*      IMPORTING keys FOR ACTION order~SetApprove RESULT result.
*    METHODS SetCancel FOR MODIFY
*      IMPORTING keys FOR ACTION order~SetCancel RESULT result.

ENDCLASS.

CLASS lhc_order IMPLEMENTATION.

*  METHOD get_instance_features.
*  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

*  METHOD SetApprove.
*  ENDMETHOD.
*
*  METHOD SetCancel.
*  ENDMETHOD.

  METHOD get_global_features.
*    BREAK jhas2.
  ENDMETHOD.

  METHOD SetApprove.
  ENDMETHOD.

  METHOD SetCancel.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZGSN_R_ORDERS_U DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZGSN_R_ORDERS_U IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
