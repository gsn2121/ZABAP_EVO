@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZGSN_HEADER'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zgsn_i_header_info
  as select from zgsn_header as _Hdr
  composition [0..*] of zgsn_i_item_info    as _Item
  composition [0..*] of zgsn_i_billing_info as _Billing
{
  key hdrkey             as Hdrkey,
      inv_re_no          as InvReNo,
      ship_loc           as ShipLoc,
      sales_area         as SalesArea,
      part_no            as PartNo,
      ship_status        as ShipStatus,
      uom                as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      ship_quan          as ShipQuan,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      reciev_quan        as RecievQuan,
      @Semantics.user.lastChangedBy: true      
      upd_by             as UpdBy,
      @Semantics.systemDateTime.lastChangedAt: true
      upd_at             as UpdAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat as Locallastchangedat,
      _Item,
      _Billing
}
