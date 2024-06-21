@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Testing CDS View Projections'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION
@Analytics.dataCategory: #CUBE
@UI.chart: [{
qualifier: 'charDefault',
    chartType: #COLUMN,
    dimensions:  ['Vbeln' , 'matnr'],
    measures:  ['UoM'],
    dimensionAttributes: [{
        dimension: 'matnr',
        role: #SERIES
        },
        {
        dimension: 'vbeln',
        role: #SERIES
        }],
    measureAttributes: [{
        measure: 'UoM',
        role: #AXIS_1
        }]
}]
define view entity ZCDSV_I_TEST_ANALYTICS as select from vbrp
{
@UI.selectionField: [{ position: 10 }]
@UI.lineItem: [{ position: 10 }]
@UI.identification: [{ position: 10 }]
key vbeln as Vbeln,
key posnr as Posnr,
matnr  ,
@DefaultAggregation: #SUM
@Semantics.amount.currencyCode:    'UOM' 
 netwr ,

 vbrp.waerk as UoM
}




   
