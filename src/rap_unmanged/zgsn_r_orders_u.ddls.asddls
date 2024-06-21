@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZGSN_I_ORDERS_U Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZGSN_R_ORDERS_U
  as select from ZGSN_I_ORDERS_U as _order
  association [1..1] to I_CompanyCode as _companyCode on $projection.CompanyCode = _companyCode.CompanyCode
  association [1..1] to I_Equipment   as _equipment   on $projection.Equipment = _equipment.Equipment
  association [1..1] to I_Address     as _address     on $projection.AddressNumber = _address.AddressID
{
       @ObjectModel.text.element: [ 'Description' ]
  key  _order.WorkOrder,
       _order.OrderType,
       _order.OrderCategory,
       _order.ReferenceOrderNumber,

       _order.EnteredBy,
       @Semantics.systemTime.createdAt: true
       _order.CreatedOn,
       @Semantics.user.lastChangedBy: true

       _order.LastChangedBy,
//       @Semantics.systemDateTime.lastChangedAt: true
       @Semantics.systemDateTime.localInstanceLastChangedAt: true
       _order.ChangeDate,
       @Semantics.text: true
       _order.Description,
//       _order.LongTextExists,
       @ObjectModel.foreignKey.association: '_companyCode'
       _order.CompanyCode,
       _order.Plant,
       _order.BusinessArea,
       _order.Priority,
       @ObjectModel.foreignKey.association: '_equipment'
       _order.Equipment,
       _order.OrderCurrency,
       //       _order.OrderStatus,
       //       _order.StatusProfile,
       _order.Objnr,
       @ObjectModel.foreignKey.association: '_address'
       _order.AddressNumber,
       _order.Erfzeit,
       _order.Aezeit,
       _companyCode,
       _equipment,
       _address


}
