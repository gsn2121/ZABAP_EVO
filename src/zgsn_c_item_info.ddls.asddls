@EndUserText.label: 'Consumptions View for ZGSN_ITEM'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity zgsn_c_item_info
  as projection on zgsn_i_item_info
{
//
//      @UI.facet: [ { id:              'Itmkey',
//                       purpose:         #STANDARD,
//                       type:            #IDENTIFICATION_REFERENCE,
//                       label:           'Itmkey',
//                       position:        10 }
//
//
//                ]

  key Hdrkey,
//        @UI: {
//            lineItem:       [ { position: 10, importance: #HIGH } ],
////            identification: [ { position: 10, label: 'Item Number' } ] }
  key Itmkey,
      InvReNo,
      ItemNo,
      ItmStatus,
      SalesOffice,
//            @UI: {
//            lineItem:       [ { position: 50, importance: #HIGH } ],
//            identification: [ { position: 50, label: 'Unit of Measures' } ] }
      Uom,
      DelvQty,
      AprQty,
      /* Associations */
      _Hdr : redirected to parent zgsn_c_header_info
}
