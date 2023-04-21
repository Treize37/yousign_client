# YousignClient::SignatureRequestApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_signature_requests_signature_request_id**](SignatureRequestApi.md#delete_signature_requests_signature_request_id) | **DELETE** /signature_requests/{signatureRequestId} | Delete a signature request
[**get_signature_requests**](SignatureRequestApi.md#get_signature_requests) | **GET** /signature_requests | List signature requests
[**get_signature_requests_signature_request_id**](SignatureRequestApi.md#get_signature_requests_signature_request_id) | **GET** /signature_requests/{signatureRequestId} | Fetch a signature request
[**get_signature_requests_signature_request_id_audit_trails_download**](SignatureRequestApi.md#get_signature_requests_signature_request_id_audit_trails_download) | **GET** /signature_requests/{signatureRequestId}/audit_trails/download | Download signature request audit trails
[**patch_signature_requests_signature_request_id**](SignatureRequestApi.md#patch_signature_requests_signature_request_id) | **PATCH** /signature_requests/{signatureRequestId} | Update a Signature Request
[**post_signature_requests**](SignatureRequestApi.md#post_signature_requests) | **POST** /signature_requests | Initiate a new signature request
[**post_signature_requests_signature_request_id_cancel**](SignatureRequestApi.md#post_signature_requests_signature_request_id_cancel) | **POST** /signature_requests/{signatureRequestId}/cancel | Cancel a signature request
[**post_signature_requests_signature_request_id_reactivate**](SignatureRequestApi.md#post_signature_requests_signature_request_id_reactivate) | **POST** /signature_requests/{signatureRequestId}/reactivate | Reactivate an expired signature request
[**post_signature_requests_signature_request_id_signatures**](SignatureRequestApi.md#post_signature_requests_signature_request_id_signatures) | **POST** /signature_requests/{signatureRequestId}/activate | Activate a signature request
[**post_signature_requests_signature_request_id_signers_signer_id_send_reminder**](SignatureRequestApi.md#post_signature_requests_signature_request_id_signers_signer_id_send_reminder) | **POST** /signature_requests/{signatureRequestId}/signers/{signerId}/send_reminder | Send manual reminder to signer

# **delete_signature_requests_signature_request_id**
> delete_signature_requests_signature_request_id(signature_request_id)

Delete a signature request

Delete a signature request (in draft status)

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id


begin
  #Delete a signature request
  api_instance.delete_signature_requests_signature_request_id(signature_request_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->delete_signature_requests_signature_request_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests**
> InlineResponse200 get_signature_requests(opts)

List signature requests

List signature requests

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
opts = { 
  status: 'status_example', # String | Filter by status
  after: 'after_example', # String | After cursor (pagination)
  external_id: 'external_id_example', # String | Filter by external_id
  source: ['source_example'] # Array<String> | Filter by source
}

begin
  #List signature requests
  result = api_instance.get_signature_requests(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->get_signature_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Filter by status | [optional] 
 **after** | **String**| After cursor (pagination) | [optional] 
 **external_id** | **String**| Filter by external_id | [optional] 
 **source** | [**Array&lt;String&gt;**](String.md)| Filter by source | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id**
> SignatureRequest get_signature_requests_signature_request_id(signature_request_id)

Fetch a signature request

Fetch a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id


begin
  #Fetch a signature request
  result = api_instance.get_signature_requests_signature_request_id(signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->get_signature_requests_signature_request_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_audit_trails_download**
> String get_signature_requests_signature_request_id_audit_trails_download(signature_request_id)

Download signature request audit trails

Download signature request audit trails

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id


begin
  #Download signature request audit trails
  result = api_instance.get_signature_requests_signature_request_id_audit_trails_download(signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->get_signature_requests_signature_request_id_audit_trails_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/pdf, application/json



# **patch_signature_requests_signature_request_id**
> SignatureRequest patch_signature_requests_signature_request_id(signature_request_id, opts)

Update a Signature Request

Update a Signature Request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: YousignClient::SignatureRequestsSignatureRequestIdBody.new # SignatureRequestsSignatureRequestIdBody | 
}

begin
  #Update a Signature Request
  result = api_instance.patch_signature_requests_signature_request_id(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->patch_signature_requests_signature_request_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**SignatureRequestsSignatureRequestIdBody**](SignatureRequestsSignatureRequestIdBody.md)|  | [optional] 

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests**
> SignatureRequest post_signature_requests(opts)

Initiate a new signature request

Initiate a new signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
opts = { 
  body: YousignClient::SignatureRequestsBody.new # SignatureRequestsBody | 
}

begin
  #Initiate a new signature request
  result = api_instance.post_signature_requests(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->post_signature_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SignatureRequestsBody**](SignatureRequestsBody.md)|  | [optional] 

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_cancel**
> SignatureRequest post_signature_requests_signature_request_id_cancel(signature_request_id, opts)

Cancel a signature request

Cancel a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: YousignClient::SignatureRequestIdCancelBody.new # SignatureRequestIdCancelBody | 
}

begin
  #Cancel a signature request
  result = api_instance.post_signature_requests_signature_request_id_cancel(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->post_signature_requests_signature_request_id_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**SignatureRequestIdCancelBody**](SignatureRequestIdCancelBody.md)|  | [optional] 

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_reactivate**
> SignatureRequest post_signature_requests_signature_request_id_reactivate(signature_request_id, opts)

Reactivate an expired signature request

Reactivate a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: YousignClient::SignatureRequestIdReactivateBody.new # SignatureRequestIdReactivateBody | 
}

begin
  #Reactivate an expired signature request
  result = api_instance.post_signature_requests_signature_request_id_reactivate(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->post_signature_requests_signature_request_id_reactivate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**SignatureRequestIdReactivateBody**](SignatureRequestIdReactivateBody.md)|  | [optional] 

### Return type

[**SignatureRequest**](SignatureRequest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_signatures**
> SignatureRequestActivated post_signature_requests_signature_request_id_signatures(signature_request_id)

Activate a signature request

Activate a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id


begin
  #Activate a signature request
  result = api_instance.post_signature_requests_signature_request_id_signatures(signature_request_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->post_signature_requests_signature_request_id_signatures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 

### Return type

[**SignatureRequestActivated**](SignatureRequestActivated.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_signers_signer_id_send_reminder**
> post_signature_requests_signature_request_id_signers_signer_id_send_reminder(signer_id, signature_request_id)

Send manual reminder to signer

Send manual reminder to signer

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::SignatureRequestApi.new
signer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signer id
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request id


begin
  #Send manual reminder to signer
  api_instance.post_signature_requests_signature_request_id_signers_signer_id_send_reminder(signer_id, signature_request_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling SignatureRequestApi->post_signature_requests_signature_request_id_signers_signer_id_send_reminder: #{e}"
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



