@EndUserText.label: 'Consumptions View for ZGSN_ITEM'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true 
define view entity zgsn_c_billing_info
  as projection on zgsn_i_billing_info
{
  key Hdrkey,
  key Itmkey,
//      @UI.facet: [ { id:              'Invreno',
//                       purpose:         #STANDARD,
//                       type:            #IDENTIFICATION_REFERENCE,
//                       label:           'Invreno',
//                       position:        10 }
//
//
//                ]
//      @UI: {
//            lineItem:       [ { position: 10, importance: #HIGH } ],
//            identification: [ { position: 10, label: 'InvReNo' } ] }
      InvReNo,
//      @UI: {
//        lineItem:       [ { position: 20, importance: #HIGH } ],
//        identification: [ { position: 20, label: 'ItemNo' } ] }
      ItemNo,
//      @UI: {
//           lineItem:       [ { position: 30, importance: #HIGH } ],
//           identification: [ { position: 30, label: 'Discount' } ] }
      Discount,
      /* Associations */
      /* Associations */
      _Hdr : redirected to parent zgsn_c_header_info
}
