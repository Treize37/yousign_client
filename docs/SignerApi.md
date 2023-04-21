# YousignClient::SignerApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_signature_requests_signature_request_id_signers_signer_id**](SignerApi.md#delete_signature_requests_signature_request_id_signers_signer_id) | **DELETE** /signature_requests/{signatureRequestId}/signers/{signerId} | Delete a signer
[**get_signature_requests_signature_request_id_signers**](SignerApi.md#get_signature_requests_signature_request_id_signers) | **GET** /signature_requests/{signatureRequestId}/signers | List signature request signers
[**get_signature_requests_signature_request_id_signers_signer_id_audit_trails**](SignerApi.md#get_signature_requests_signature_request_id_signers_signer_id_audit_trails) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/audit_trails | Get signer audit trail
[**get_signers_signer_id_audit_trails_download**](SignerApi.md#get_signers_signer_id_audit_trails_download) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId}/audit_trails/download | Download audit trail PDF
[**get_signers_signers_id**](SignerApi.md#get_signers_signers_id) | **GET** /signature_requests/{signatureRequestId}/signers/{signerId} | Get a signer
[**patch_signature_requests_signature_request_id_signers_signer_id**](SignerApi.md#patch_signature_requests_signature_request_id_signers_signer_id) | **PATCH** /signature_requests/{signatureRequestId}/signers/{signerId} | Update a signer
[**post_signature_requests_signature_request_id_signers**](SignerApi.md#post_signature_requests_signature_request_id_signers) | **POST** /signature_requests/{signatureRequestId}/signers | Create a new signer

# **delete_signature_requests_signature_request_id_signers_signer_id**
> delete_signature_requests_signature_request_id_signers_signer_id(signer_id, signature_request_id)

Delete a signer

Delete a signer

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request id


begin
  #Delete a signer
  api_instance.delete_signature_requests_signature_request_id_signers_signer_id(signer_id, signature_request_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->delete_signature_requests_signature_request_id_signers_signer_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signer_id** | [**String**](.md)| Signer id | 
 **signature_request_id** | [**String**](.md)| Signature request id | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_signers**
> Array&lt;Signer&gt; get_signature_requests_signature_request_id_signers(signature_request_id)

List signature request signers

List signers from a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id


begin
  #List signature request signers
  result = api_instance.get_signature_requests_signature_request_id_signers(signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->get_signature_requests_signature_request_id_signers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 

### Return type

[**Array&lt;Signer&gt;**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_signers_signer_id_audit_trails**
> InlineResponse2003 get_signature_requests_signature_request_id_signers_signer_id_audit_trails(signer_id, signature_request_id)

Get signer audit trail

Get signer audit trail

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request id


begin
  #Get signer audit trail
  result = api_instance.get_signature_requests_signature_request_id_signers_signer_id_audit_trails(signer_id, signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->get_signature_requests_signature_request_id_signers_signer_id_audit_trails: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signer_id** | [**String**](.md)| Signer id | 
 **signature_request_id** | [**String**](.md)| Signature request id | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml



# **get_signers_signer_id_audit_trails_download**
> String get_signers_signer_id_audit_trails_download(signer_id, signature_request_id)

Download audit trail PDF

Download audit trail PDF

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer Id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request Id


begin
  #Download audit trail PDF
  result = api_instance.get_signers_signer_id_audit_trails_download(signer_id, signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->get_signers_signer_id_audit_trails_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signer_id** | [**String**](.md)| Signer Id | 
 **signature_request_id** | [**String**](.md)| Signature request Id | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **get_signers_signers_id**
> SignerWithSignatureLink get_signers_signers_id(signer_id, signature_request_id)

Get a signer

Get a signer

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request id


begin
  #Get a signer
  result = api_instance.get_signers_signers_id(signer_id, signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->get_signers_signers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signer_id** | [**String**](.md)| Signer id | 
 **signature_request_id** | [**String**](.md)| Signature request id | 

### Return type

[**SignerWithSignatureLink**](SignerWithSignatureLink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_signature_requests_signature_request_id_signers_signer_id**
> Signer patch_signature_requests_signature_request_id_signers_signer_id(signer_idsignature_request_id, opts)

Update a signer

Update a signer

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request id
opts = { 
  body: YousignClient::SignersSignerIdBody.new # SignersSignerIdBody | 
}

begin
  #Update a signer
  result = api_instance.patch_signature_requests_signature_request_id_signers_signer_id(signer_idsignature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->patch_signature_requests_signature_request_id_signers_signer_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signer_id** | [**String**](.md)| Signer id | 
 **signature_request_id** | [**String**](.md)| Signature request id | 
 **body** | [**SignersSignerIdBody**](SignersSignerIdBody.md)|  | [optional] 

### Return type

[**Signer**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_signers**
> Signer post_signature_requests_signature_request_id_signers(signature_request_id, opts)

Create a new signer

Create a new signer

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: YousignClient::SignatureRequestIdSignersBody.new # SignatureRequestIdSignersBody | 
}

begin
  #Create a new signer
  result = api_instance.post_signature_requests_signature_request_id_signers(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignerApi->post_signature_requests_signature_request_id_signers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**SignatureRequestIdSignersBody**](SignatureRequestIdSignersBody.md)|  | [optional] 

### Return type

[**Signer**](Signer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



