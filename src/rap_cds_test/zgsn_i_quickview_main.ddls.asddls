@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'QuickView MAIN PAGE'

define root view entity ZGSN_I_QUICKVIEW_MAIN
  as select from I_SalesOrder
  association [1..*] to I_BusinessPartnerPopOver as _SoldToPartyQuickView on $projection.SoldToParty = _SoldToPartyQuickView.Customer
{
      @UI.lineItem:[{ label: 'Sales Order Number', position: 10 , importance: #HIGH }]
  key SalesOrder,
      SalesOrderType,

      @UI.lineItem:[{ label: 'Ship-To-Party', position: 20 , importance: #HIGH }]
      @UI.selectionField: [ { position: 20 } ]
      @Consumption.semanticObject: 'Customer'
      SoldToParty,

      @UI.lineItem:[{ label: 'CreatedBy', position: 20 , importance: #HIGH }]
      @UI.selectionField: [ { position: 30 } ]
      CreatedByUser,

      //Associations
      _SoldToPartyQuickView
}
