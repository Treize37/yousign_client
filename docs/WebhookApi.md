# YousignClient::WebhookApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_webhooks_webhook_id**](WebhookApi.md#delete_webhooks_webhook_id) | **DELETE** /webhooks/{webhookId} | Unsubscribe a webhook
[**get_webhooks**](WebhookApi.md#get_webhooks) | **GET** /webhooks | List webhooks
[**get_webhooks_webhook_id**](WebhookApi.md#get_webhooks_webhook_id) | **GET** /webhooks/{webhookId} | Get a webhook
[**patch_webhooks_webhook_id**](WebhookApi.md#patch_webhooks_webhook_id) | **PATCH** /webhooks/{webhookId} | Update a webhook
[**post_webhooks_subscriptions**](WebhookApi.md#post_webhooks_subscriptions) | **POST** /webhooks | Configure a new webhook

# **delete_webhooks_webhook_id**
> delete_webhooks_webhook_id(webhook_id)

Unsubscribe a webhook

Unsubscribe a webhook

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id


begin
  #Unsubscribe a webhook
  api_instance.delete_webhooks_webhook_id(webhook_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling WebhookApi->delete_webhooks_webhook_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook Id | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhooks**
> Array&lt;WebhookSubscription&gt; get_webhooks

List webhooks

List webhooks

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WebhookApi.new

begin
  #List webhooks
  result = api_instance.get_webhooks
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WebhookApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;WebhookSubscription&gt;**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_webhooks_webhook_id**
> WebhookSubscription get_webhooks_webhook_id(webhook_id)

Get a webhook

Get a webhook

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id


begin
  #Get a webhook
  result = api_instance.get_webhooks_webhook_id(webhook_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WebhookApi->get_webhooks_webhook_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook Id | 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **patch_webhooks_webhook_id**
> WebhookSubscription patch_webhooks_webhook_id(webhook_id, opts)

Update a webhook

Update a webhook

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WebhookApi.new
webhook_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Webhook Id
opts = { 
  body: YousignClient::WebhooksWebhookIdBody.new # WebhooksWebhookIdBody | 
}

begin
  #Update a webhook
  result = api_instance.patch_webhooks_webhook_id(webhook_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WebhookApi->patch_webhooks_webhook_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | [**String**](.md)| Webhook Id | 
 **body** | [**WebhooksWebhookIdBody**](WebhooksWebhookIdBody.md)|  | [optional] 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_webhooks_subscriptions**
> WebhookSubscription post_webhooks_subscriptions(opts)

Configure a new webhook

Configure a new webhook

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::WebhookApi.new
opts = { 
  body: YousignClient::WebhooksBody.new # WebhooksBody | 
}

begin
  #Configure a new webhook
  result = api_instance.post_webhooks_subscriptions(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling WebhookApi->post_webhooks_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhooksBody**](WebhooksBody.md)|  | [optional] 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



