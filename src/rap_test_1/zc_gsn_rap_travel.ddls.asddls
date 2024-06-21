@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_GSN_RAP_TRAVEL'
@ObjectModel.semanticKey: [ 'TravelID' ]
define root view entity ZC_GSN_RAP_TRAVEL
  provider contract transactional_query
  as projection on ZR_GSN_RAP_TRAVEL
{
      @ObjectModel.text.element: [ 'Description' ]
      @UI.textArrangement: #TEXT_LAST
  key TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      LastChangedAt,
      @ObjectModel.text.element: [ 'ordertext' ]
      @UI.textArrangement: #TEXT_LAST
      @UI.connectedFields: [{semanticObject: 'evoOrder'}]
      orderid,

      _order.ktext as ordertext,
      _order
}
