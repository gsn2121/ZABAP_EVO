@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '##GENERATED ZGSN_RAP_TRAVEL'
define root view entity ZR_GSN_RAP_TRAVEL
  as select from zgsn_rap_travel as Travel
  association [1..1] to ZGSN_I_QUICKVIEW as _order on $projection.orderid = _order.orderid

{
  key travel_id       as TravelID,
      agency_id       as AgencyID,
      customer_id     as CustomerID,
      begin_date      as BeginDate,
      end_date        as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee     as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price     as TotalPrice,
      currency_code   as CurrencyCode,
      @Semantics.text: true
      description     as Description,
      overall_status  as OverallStatus,
      @ObjectModel.foreignKey.association: '_order'
      order_id        as orderid,
      @Semantics.user.createdBy: true
      created_by      as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at      as CreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      last_changed_by as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at as LastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed    as LastChanged,

      _order

}
