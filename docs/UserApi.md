# YousignClient::UserApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_users**](UserApi.md#get_users) | **GET** /users | List all users

# **get_users**
> InlineResponse2001 get_users(opts)

List all users

List all users

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::UserApi.new
opts = { 
  after: 'after_example' # String | After cursor (pagination)
}

begin
  #List all users
  result = api_instance.get_users(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling UserApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| After cursor (pagination) | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



