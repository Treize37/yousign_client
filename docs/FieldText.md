# YousignClient::FieldText

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**document_id** | **String** |  | 
**type** | **String** |  | 
**width** | [**BigDecimal**](BigDecimal.md) | If not set, the width is automatically calculated with the max_length value | 
**height** | [**BigDecimal**](BigDecimal.md) | The height must be 24 or a multiple of 15 greater than 24. If height is provided, max_length must be less than or equal to the maximum number of characters based on the width and height of the text field. | 
**page** | [**BigDecimal**](BigDecimal.md) |  | 
**x** | [**BigDecimal**](BigDecimal.md) |  | 
**y** | [**BigDecimal**](BigDecimal.md) |  | 
**question** | **String** |  | 
**instruction** | **String** |  | 
**optional** | **BOOLEAN** |  | 
**answer** | **String** |  | 
**max_length** | **Integer** |  | 

