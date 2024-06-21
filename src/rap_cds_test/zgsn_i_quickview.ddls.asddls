@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'QuickView'
@Search.searchable: true
define view entity ZGSN_I_QUICKVIEW
  as select from aufk //I_BusinessPartnerPopOver
  //  association [1..1]  to afko
{

       @UI.facet: [ {
                purpose:    #QUICK_VIEW,
                type:       #FIELDGROUP_REFERENCE,
                targetQualifier: 'order',
                label: 'Additional Details'
              }
            ]
       @UI.fieldGroup: [
       {
       label: 'Order Name',
       value: 'orderid',
       type: #STANDARD,
       position: 1 ,
       qualifier: 'order'
       }
       ]
       @Search.defaultSearchElement: true
       @Search.fuzzinessThreshold: 0.7
  key  aufnr as orderid,
       @UI.fieldGroup: [
       {
         label: 'Order Type',
         value: 'ordertype',
         type: #STANDARD,
         position: 2 ,
         qualifier: 'order'
       }
       ]
       //       @UI.fieldGroup: [{ qualifier:'order', position: 30}]
       @EndUserText.label: 'Order Type'
       autyp as ordertype,
       @UI.fieldGroup: [{ qualifier:'order', position: 10}]
       @Semantics: {
       text: true
       }
       ktext
       //
       //       @Semantics.eMail.address: true
       //       @UI.fieldGroup: [{ qualifier:'order', position: 20}]
       //       @EndUserText.label: 'Email'
       //       ,
       //
       //
       //       IsBusinessPurposeCompleted,
       //
       //       @UI.fieldGroup: [{ qualifier:'ShipToPartyQV', position: 40}]
       //       @EndUserText.label: 'City'
       //       CityName

}
