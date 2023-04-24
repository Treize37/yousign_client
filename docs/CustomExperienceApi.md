# YousignClient::CustomExperienceApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_custom_experience**](CustomExperienceApi.md#delete_custom_experience) | **DELETE** /custom_experiences/{customExperienceId} | Delete a Custom Experience
[**delete_custom_experience_logo**](CustomExperienceApi.md#delete_custom_experience_logo) | **DELETE** /custom_experiences/{customExperienceId}/logo | Delete a Custom Experience Logo
[**get_custom_experiences**](CustomExperienceApi.md#get_custom_experiences) | **GET** /custom_experiences | List Custom Experiences
[**get_custom_experiences_custom_experience_id**](CustomExperienceApi.md#get_custom_experiences_custom_experience_id) | **GET** /custom_experiences/{customExperienceId} | Get a given Custom Experience
[**patch_custom_experience_logo**](CustomExperienceApi.md#patch_custom_experience_logo) | **POST** /custom_experiences/{customExperienceId}/logo | Update a Custom Experience Logo
[**patch_custom_experiences_custom_experience_id**](CustomExperienceApi.md#patch_custom_experiences_custom_experience_id) | **PATCH** /custom_experiences/{customExperienceId} | Update a Custom Experience
[**post_custom_experience**](CustomExperienceApi.md#post_custom_experience) | **POST** /custom_experiences | Create a Custom Experience

# **delete_custom_experience**
> delete_custom_experience(custom_experience_id)

Delete a Custom Experience

Delete a Custom Experience

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete a Custom Experience
  api_instance.delete_custom_experience(custom_experience_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->delete_custom_experience: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_experience_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_custom_experience_logo**
> delete_custom_experience_logo(custom_experience_id)

Delete a Custom Experience Logo

Delete a Custom Experience Logo

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Delete a Custom Experience Logo
  api_instance.delete_custom_experience_logo(custom_experience_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->delete_custom_experience_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_experience_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_experiences**
> InlineResponse2005 get_custom_experiences(opts)

List Custom Experiences

List Custom Experiences

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
opts = { 
  after: 'after_example' # String | After cursor (pagination)
}

begin
  #List Custom Experiences
  result = api_instance.get_custom_experiences(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->get_custom_experiences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **after** | **String**| After cursor (pagination) | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_experiences_custom_experience_id**
> Paths1customExperiencespostresponses201contentapplication1jsonschema get_custom_experiences_custom_experience_id(custom_experience_id)

Get a given Custom Experience

Get a given Custom Experience

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 


begin
  #Get a given Custom Experience
  result = api_instance.get_custom_experiences_custom_experience_id(custom_experience_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->get_custom_experiences_custom_experience_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_experience_id** | [**String**](.md)|  | 

### Return type

[**Paths1customExperiencespostresponses201contentapplication1jsonschema**](Paths1customExperiencespostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_custom_experience_logo**
> Paths1customExperiencespostresponses201contentapplication1jsonschema patch_custom_experience_logo(custom_experience_id, opts)

Update a Custom Experience Logo

Create a Custom Experience Logo

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  file: 'file_example' # String | 
}

begin
  #Update a Custom Experience Logo
  result = api_instance.patch_custom_experience_logo(custom_experience_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->patch_custom_experience_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_experience_id** | [**String**](.md)|  | 
 **file** | **String**|  | [optional] 

### Return type

[**Paths1customExperiencespostresponses201contentapplication1jsonschema**](Paths1customExperiencespostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **patch_custom_experiences_custom_experience_id**
> Paths1customExperiencespostresponses201contentapplication1jsonschema patch_custom_experiences_custom_experience_id(custom_experience_id, opts)

Update a Custom Experience

Update a Custom Experience

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
custom_experience_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = { 
  body: YousignClient::CustomExperienceInput.new # CustomExperienceInput | 
}

begin
  #Update a Custom Experience
  result = api_instance.patch_custom_experiences_custom_experience_id(custom_experience_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->patch_custom_experiences_custom_experience_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_experience_id** | [**String**](.md)|  | 
 **body** | [**CustomExperienceInput**](CustomExperienceInput.md)|  | [optional] 

### Return type

[**Paths1customExperiencespostresponses201contentapplication1jsonschema**](Paths1customExperiencespostresponses201contentapplication1jsonschema.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_custom_experience**
> CustomExperience post_custom_experience(opts)

Create a Custom Experience

Create a Custom Experience

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::CustomExperienceApi.new
opts = { 
  body: YousignClient::CustomExperienceInput.new # CustomExperienceInput | 
}

begin
  #Create a Custom Experience
  result = api_instance.post_custom_experience(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling CustomExperienceApi->post_custom_experience: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CustomExperienceInput**](CustomExperienceInput.md)|  | [optional] 

### Return type

[**CustomExperience**](CustomExperience.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



