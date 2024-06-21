@EndUserText.label: 'ZGSN_C_ORDERS_U Unmanaged'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZGSN_C_ORDERS_U
  provider contract transactional_query
  as projection on ZGSN_R_ORDERS_U
{
  key WorkOrder,
      OrderType,
      OrderCategory,
      ReferenceOrderNumber,
      EnteredBy,
      CreatedOn,
      LastChangedBy,
      ChangeDate,
      Description,
//      LongTextExists,
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'CompanyName' ]
      @Consumption.valueHelpDefinition: [{ entity :{ element: 'CompanyCode' , name: 'C_CompanyCodeValueHelp' } , useForValidation: true }]
      CompanyCode,
      _companyCode.CompanyCodeName as CompanyName, //, //: localized,

      @Consumption.valueHelpDefinition: [{ entity :{ element: 'Plant' , name: 'C_Plantvaluehelp' } , useForValidation: true }]
      Plant,
      BusinessArea,
      Priority,
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'EquipmentName' ]

      @Consumption.valueHelpDefinition: [{ entity :{ element: 'Equipment' , name: 'C_DFS_EquipSerialNumberVH' } , useForValidation: true }]
      Equipment,
      _equipment._EquipmentText.EquipmentName : localized,
      OrderCurrency,
//      OrderStatus,
//      StatusProfile,
      Objnr,
      @UI.textArrangement: #TEXT_LAST
      @ObjectModel.text.element: [ 'addressFullName' ]
      AddressNumber,
      _address.FullName            as addressFullName,
      Erfzeit,
      Aezeit,
      /* Associations */
      _companyCode,
      _equipment,
      _address
}
