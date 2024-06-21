@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZGSN_BILLING'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zgsn_i_billing_info
  as select from zgsn_billing as _Billing
  association to parent zgsn_i_header_info as _Hdr on $projection.Hdrkey = _Hdr.Hdrkey
{
  key _Billing.hdrkey    as Hdrkey,
  key _Billing.itmkey    as Itmkey,
      _Billing.inv_re_no as InvReNo,
      _Billing.item_no   as ItemNo,
      _Billing.discount  as Discount,
      _Hdr

}
