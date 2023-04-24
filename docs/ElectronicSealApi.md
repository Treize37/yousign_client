# YousignClient::ElectronicSealApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_electronic_seal_audit_trail**](ElectronicSealApi.md#download_electronic_seal_audit_trail) | **GET** /electronic_seals/{electronicSealId}/audit_trails/download | Download electronic seal audit trail
[**download_electronic_seal_document**](ElectronicSealApi.md#download_electronic_seal_document) | **GET** /electronic_seal_documents/{id}/download | Download electronic seal document
[**get_electronic_seal**](ElectronicSealApi.md#get_electronic_seal) | **GET** /electronic_seals/{electronicSealId} | Get electronic seal
[**get_electronic_seal_audit_trail**](ElectronicSealApi.md#get_electronic_seal_audit_trail) | **GET** /electronic_seals/{electronicSealId}/audit_trails | Get electronic seal audit trail
[**post_electronic_seals**](ElectronicSealApi.md#post_electronic_seals) | **POST** /electronic_seals | Create Electronic Seal
[**upload_electronic_seal_document**](ElectronicSealApi.md#upload_electronic_seal_document) | **POST** /electronic_seal_documents | Upload electronic seal document
[**upload_electronic_seal_image**](ElectronicSealApi.md#upload_electronic_seal_image) | **POST** /electronic_seal_images | Upload electronic seal image

# **download_electronic_seal_audit_trail**
> String download_electronic_seal_audit_trail(electronic_seal_id)

Download electronic seal audit trail

Download electronic seal audit trail

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
electronic_seal_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Download electronic seal audit trail
  result = api_instance.download_electronic_seal_audit_trail(electronic_seal_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->download_electronic_seal_audit_trail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **electronic_seal_id** | [**String**](.md)|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **download_electronic_seal_document**
> String download_electronic_seal_document(id)

Download electronic seal document

Download electronic seal document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
id = 'id_example' # String | 


begin
  #Download electronic seal document
  result = api_instance.download_electronic_seal_document(id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->download_electronic_seal_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **get_electronic_seal**
> Paths1electronicSealspostresponses201contentapplication1jsonschema get_electronic_seal(electronic_seal_id)

Get electronic seal

Get an electronic seal

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
electronic_seal_id = 'electronic_seal_id_example' # String | 


begin
  #Get electronic seal
  result = api_instance.get_electronic_seal(electronic_seal_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->get_electronic_seal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **electronic_seal_id** | **String**|  | 

### Return type

[**Paths1electronicSealspostresponses201contentapplication1jsonschema**](Paths1electronicSealspostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_electronic_seal_audit_trail**
> InlineResponse2006 get_electronic_seal_audit_trail(electronic_seal_id)

Get electronic seal audit trail

Get electronic seal audit trail

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
electronic_seal_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get electronic seal audit trail
  result = api_instance.get_electronic_seal_audit_trail(electronic_seal_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->get_electronic_seal_audit_trail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **electronic_seal_id** | [**String**](.md)|  | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_electronic_seals**
> ElectronicSeal post_electronic_seals(opts)

Create Electronic Seal

Create an electronic seal

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
opts = { 
  body: YousignClient::CreateElectronicSealPayload.new # CreateElectronicSealPayload | 
}

begin
  #Create Electronic Seal
  result = api_instance.post_electronic_seals(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->post_electronic_seals: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateElectronicSealPayload**](CreateElectronicSealPayload.md)|  | [optional] 

### Return type

[**ElectronicSeal**](ElectronicSeal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **upload_electronic_seal_document**
> InlineResponse2011 upload_electronic_seal_document(opts)

Upload electronic seal document

Upload electronic seal document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
opts = { 
  file: 'file_example' # String | 
  password: 'password_example' # String | 
}

begin
  #Upload electronic seal document
  result = api_instance.upload_electronic_seal_document(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->upload_electronic_seal_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **upload_electronic_seal_image**
> InlineResponse201 upload_electronic_seal_image(opts)

Upload electronic seal image

Upload electronic seal image

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ElectronicSealApi.new
opts = { 
  file: 'file_example' # String | 
  name: 'name_example' # String | 
}

begin
  #Upload electronic seal image
  result = api_instance.upload_electronic_seal_image(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ElectronicSealApi->upload_electronic_seal_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



