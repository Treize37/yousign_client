# YousignClient::ContactApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_contacts_contact_id**](ContactApi.md#delete_contacts_contact_id) | **DELETE** /contacts/{contactId} | Delete a contact
[**get_contact_contact_id**](ContactApi.md#get_contact_contact_id) | **GET** /contacts/{contactId} | Get a contact
[**get_contacts**](ContactApi.md#get_contacts) | **GET** /contacts | List all contacts
[**post_contacts**](ContactApi.md#post_contacts) | **POST** /contacts | Create a contact

# **delete_contacts_contact_id**
> delete_contacts_contact_id(contact_id)

Delete a contact

Delete a contact

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ContactApi.new
contact_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete a contact
  api_instance.delete_contacts_contact_id(contact_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling ContactApi->delete_contacts_contact_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contact_contact_id**
> Contact get_contact_contact_id(contact_id)

Get a contact

Get a contact

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ContactApi.new
contact_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get a contact
  result = api_instance.get_contact_contact_id(contact_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ContactApi->get_contact_contact_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_id** | [**String**](.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_contacts**
> InlineResponse2002 get_contacts(opts)

List all contacts

List all contacts

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ContactApi.new
opts = { 
  after: 'after_example' # String | After cursor (pagination)
}

begin
  #List all contacts
  result = api_instance.get_contacts(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ContactApi->get_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| After cursor (pagination) | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_contacts**
> Contact post_contacts(opts)

Create a contact

Create a contact

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::ContactApi.new
opts = { 
  body: YousignClient::ContactsBody.new # ContactsBody | 
}

begin
  #Create a contact
  result = api_instance.post_contacts(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling ContactApi->post_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ContactsBody**](ContactsBody.md)|  | [optional] 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



