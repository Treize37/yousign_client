# YousignClient::ConsumptionApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_consumptions**](ConsumptionApi.md#get_consumptions) | **GET** /consumptions | Get consumptions
[**get_consumptions_export**](ConsumptionApi.md#get_consumptions_export) | **GET** /consumptions/export | Export consumption data

# **get_consumptions**
> InlineResponse2004 get_consumptions(from, to, opts)

Get consumptions

Get signatures consumption by source.

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ConsumptionApi.new
from = Date.parse('2013-10-20') # Date | \"from\" date must be inferior or equal to \"to\"
to = Date.parse('2013-10-20') # Date | 
opts = { 
  authentication_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  #Get consumptions
  result = api_instance.get_consumptions(from, to, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsumptionApi->get_consumptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| \&quot;from\&quot; date must be inferior or equal to \&quot;to\&quot; | 
 **to** | **Date**|  | 
 **authentication_key** | [**String**](.md)|  | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml



# **get_consumptions_export**
> String get_consumptions_export(from, to, opts)

Export consumption data

Get a binary .csv file containing all the underlying data of signatures consumption.

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ConsumptionApi.new
from = Date.parse('2013-10-20') # Date | \"from\" date must be inferior or equal to \"to\"
to = Date.parse('2013-10-20') # Date | 
opts = { 
  authentication_key: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  #Export consumption data
  result = api_instance.get_consumptions_export(from, to, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ConsumptionApi->get_consumptions_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **Date**| \&quot;from\&quot; date must be inferior or equal to \&quot;to\&quot; | 
 **to** | **Date**|  | 
 **authentication_key** | [**String**](.md)|  | [optional] 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json



