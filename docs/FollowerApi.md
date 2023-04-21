# YousignClient::FollowerApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_signature_requests_signature_request_id_followers**](FollowerApi.md#post_signature_requests_signature_request_id_followers) | **POST** /signature_requests/{signatureRequestId}/followers | Create new followers

# **post_signature_requests_signature_request_id_followers**
> Array&lt;SignatureRequestIdFollowersBody&gt; post_signature_requests_signature_request_id_followers(signature_request_id, opts)

Create new followers

Create new followers

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::FollowerApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  body: [YousignClient::SignatureRequestIdFollowersBody.new] # Array<SignatureRequestIdFollowersBody> | A list of Follower objects to be added to the signature request.
}

begin
  #Create new followers
  result = api_instance.post_signature_requests_signature_request_id_followers(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling FollowerApi->post_signature_requests_signature_request_id_followers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **body** | [**Array&lt;SignatureRequestIdFollowersBody&gt;**](SignatureRequestIdFollowersBody.md)| A list of Follower objects to be added to the signature request. | [optional] 

### Return type

[**Array&lt;SignatureRequestIdFollowersBody&gt;**](SignatureRequestIdFollowersBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



