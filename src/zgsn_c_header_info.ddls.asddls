@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View for ZGSN_HEADER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zgsn_c_header_info
  provider contract transactional_query
  as projection on zgsn_i_header_info
{
  key     Hdrkey,
          InvReNo,
          ShipLoc,
          SalesArea,
          PartNo,
          ShipStatus,
          Uom,
          UpdBy,
          UpdAt,
          Locallastchangedat as locallastchangedat,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZGSNCL_VIRTUALFL'
          @UI: {
          lineItem:       [ { position: 50, importance: #HIGH } ],
          identification: [ { position: 50, label: 'Amount' } ] }
          @Search.defaultSearchElement: true

  virtual Amount : abap.int4,
          /* Associations */
          _Item    : redirected to composition child zgsn_c_item_info,
          _Billing : redirected to composition child zgsn_c_billing_info
}
