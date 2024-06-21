@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for ZGSN_ITEM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity zgsn_i_item_info
  as select from zgsn_item as _Item
  association to parent zgsn_i_header_info as _Hdr on $projection.Hdrkey = _Hdr.Hdrkey
{
  key hdrkey       as Hdrkey,
  key itmkey       as Itmkey,
      inv_re_no    as InvReNo,
      item_no      as ItemNo,
      itm_status   as ItmStatus,
      sales_office as SalesOffice,
      uom          as Uom,
      @Semantics.quantity.unitOfMeasure : 'UOM'
      delv_qty     as DelvQty,
      @Semantics.quantity.unitOfMeasure : 'UOM'
      apr_qty      as AprQty,
      // Association to Parent
      _Hdr

}
