# YousignClient::ApproverApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_signature_requests_signature_request_id_approvers_approver_id**](ApproverApi.md#get_signature_requests_signature_request_id_approvers_approver_id) | **GET** /signature_requests/{signatureRequestId}/approvers/{approverId} | Get an approver
[**patch_signature_requests_signature_request_id_approvers_approver_id**](ApproverApi.md#patch_signature_requests_signature_request_id_approvers_approver_id) | **PATCH** /signature_requests/{signatureRequestId}/approvers/{approverId} | 
[**post_signature_requests_signature_request_id_approvers**](ApproverApi.md#post_signature_requests_signature_request_id_approvers) | **POST** /signature_requests/{signatureRequestId}/approvers | Create a new approver

# **get_signature_requests_signature_request_id_approvers_approver_id**
> Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema get_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)

Get an approver

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id


begin
  #Get an approver
  result = api_instance.get_signature_requests_signature_request_id_approvers_approver_id(signature_request_id, approver_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ApproverApi->get_signature_requests_signature_request_id_approvers_approver_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **approver_id** | [**String**](.md)| Approver Id | 

### Return type

[**Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema**](Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_signature_requests_signature_request_id_approvers_approver_id**
> Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema patch_signature_requests_signature_request_id_approvers_approver_id(signature_request_idapprover_id, opts)



Update an Approver

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
approver_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Approver Id
opts = { 
  body: YousignClient::ApproversApproverIdBody.new # ApproversApproverIdBody | 
}

begin
  result = api_instance.patch_signature_requests_signature_request_id_approvers_approver_id(signature_request_idapprover_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ApproverApi->patch_signature_requests_signature_request_id_approvers_approver_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **approver_id** | [**String**](.md)| Approver Id | 
 **body** | [**ApproversApproverIdBody**](ApproversApproverIdBody.md)|  | [optional] 

### Return type

[**Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema**](Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_approvers**
> Approver post_signature_requests_signature_request_id_approvers(signature_request_id, opts)

Create a new approver

Create a new approver from scratch

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ApproverApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: YousignClient::SignatureRequestIdApproversBody.new # SignatureRequestIdApproversBody | An Approver object to be added to the signature request.
}

begin
  #Create a new approver
  result = api_instance.post_signature_requests_signature_request_id_approvers(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ApproverApi->post_signature_requests_signature_request_id_approvers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**SignatureRequestIdApproversBody**](SignatureRequestIdApproversBody.md)| An Approver object to be added to the signature request. | [optional] 

### Return type

[**Approver**](Approver.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



