# YousignClient::WorkspaceApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_workspaces**](WorkspaceApi.md#get_workspaces) | **GET** /workspaces | List workspaces

# **get_workspaces**
> InlineResponse2007 get_workspaces(opts)

List workspaces

List workspaces

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WorkspaceApi.new
opts = { 
  after: 'after_example' # String | After cursor (pagination)
}

begin
  #List workspaces
  result = api_instance.get_workspaces(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WorkspaceApi->get_workspaces: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| After cursor (pagination) | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



