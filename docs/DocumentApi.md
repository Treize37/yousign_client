# YousignClient::DocumentApi

All URIs are relative to *https://api-sandbox.yousign.app/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#delete_signature_requests_signature_request_id_documents_document_id) | **DELETE** /signature_requests/{signatureRequestId}/documents/{documentId} | Delete a document
[**get_signature_requests_signature_request_id_documents**](DocumentApi.md#get_signature_requests_signature_request_id_documents) | **GET** /signature_requests/{signatureRequestId}/documents | List signature request documents
[**get_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#get_signature_requests_signature_request_id_documents_document_id) | **GET** /signature_requests/{signatureRequestId}/documents/{documentId} | Get a document
[**get_signature_requests_signature_request_id_documents_documents_id_download**](DocumentApi.md#get_signature_requests_signature_request_id_documents_documents_id_download) | **GET** /signature_requests/{signatureRequestId}/documents/{documentId}/download | Download a single Signature Request Document
[**get_signature_requests_signature_request_id_documents_download**](DocumentApi.md#get_signature_requests_signature_request_id_documents_download) | **GET** /signature_requests/{signatureRequestId}/documents/download | Download signature request documents
[**patch_signature_requests_signature_request_id_documents_document_id**](DocumentApi.md#patch_signature_requests_signature_request_id_documents_document_id) | **PATCH** /signature_requests/{signatureRequestId}/documents/{documentId} | Update a document
[**post_documents**](DocumentApi.md#post_documents) | **POST** /documents | Upload a document
[**post_signature_requests_signature_request_id_documents**](DocumentApi.md#post_signature_requests_signature_request_id_documents) | **POST** /signature_requests/{signatureRequestId}/documents | Add document to a signature request
[**post_signature_requests_signature_request_id_documents_document_id_replace**](DocumentApi.md#post_signature_requests_signature_request_id_documents_document_id_replace) | **POST** /signature_requests/{signatureRequestId}/documents/{documentId}/replace | Replace a document

# **delete_signature_requests_signature_request_id_documents_document_id**
> delete_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)

Delete a document

Delete a document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id


begin
  #Delete a document
  api_instance.delete_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->delete_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature request Id | 
 **document_id** | [**String**](.md)| Document Id | 

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_documents**
> Array&lt;Document&gt; get_signature_requests_signature_request_id_documents(signature_request_id, opts)

List signature request documents

List signature request documents

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  nature: 'nature_example' # String | filter by nature
}

begin
  #List signature request documents
  result = api_instance.get_signature_requests_signature_request_id_documents(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->get_signature_requests_signature_request_id_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **nature** | **String**| filter by nature | [optional] 

### Return type

[**Array&lt;Document&gt;**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_documents_document_id**
> Document get_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)

Get a document

Get a document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id


begin
  #Get a document
  result = api_instance.get_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->get_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature request Id | 
 **document_id** | [**String**](.md)| Document Id | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_signature_requests_signature_request_id_documents_documents_id_download**
> String get_signature_requests_signature_request_id_documents_documents_id_download(signature_request_id, document_id)

Download a single Signature Request Document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id


begin
  #Download a single Signature Request Document
  result = api_instance.get_signature_requests_signature_request_id_documents_documents_id_download(signature_request_id, document_id)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->get_signature_requests_signature_request_id_documents_documents_id_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **document_id** | [**String**](.md)| Document Id | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json



# **get_signature_requests_signature_request_id_documents_download**
> String get_signature_requests_signature_request_id_documents_download(signature_request_id, opts)

Download signature request documents

Download signature request documents

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  version: 'version_example', # String | Specify documents version to download, \"completed\" is only available when the signature request status is \"done\".
  archive: true # BOOLEAN | Force zip archive download
}

begin
  #Download signature request documents
  result = api_instance.get_signature_requests_signature_request_id_documents_download(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->get_signature_requests_signature_request_id_documents_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **version** | **String**| Specify documents version to download, \&quot;completed\&quot; is only available when the signature request status is \&quot;done\&quot;. | [optional] 
 **archive** | **BOOLEAN**| Force zip archive download | [optional] 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/pdf, application/json



# **patch_signature_requests_signature_request_id_documents_document_id**
> Document patch_signature_requests_signature_request_id_documents_document_id(signature_request_iddocument_id, opts)

Update a document

Update a document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
opts = { 
  body: YousignClient::DocumentsDocumentIdBody.new # DocumentsDocumentIdBody | 
}

begin
  #Update a document
  result = api_instance.patch_signature_requests_signature_request_id_documents_document_id(signature_request_iddocument_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->patch_signature_requests_signature_request_id_documents_document_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature request Id | 
 **document_id** | [**String**](.md)| Document Id | 
 **body** | [**DocumentsDocumentIdBody**](DocumentsDocumentIdBody.md)|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_documents**
> Document post_documents(opts)

Upload a document

Upload a document

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
opts = { 
  file: 'file_example' # String | 
  nature: 'nature_example' # String | 
  password: 'password_example' # String | 
  parse_anchors: true # BOOLEAN | 
  initials: YousignClient::InitialsArea.new # InitialsArea | 
}

begin
  #Upload a document
  result = api_instance.post_documents(opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->post_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String**|  | [optional] 
 **nature** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **parse_anchors** | **BOOLEAN**|  | [optional] 
 **initials** | [**InitialsArea**](.md)|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_documents**
> Document post_signature_requests_signature_request_id_documents(signature_request_id, opts)

Add document to a signature request

Add document to a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
opts = { 
  file: 'file_example' # String | 
  nature: 'nature_example' # String | 
  password: 'password_example' # String | 
  initials: YousignClient::null.new #  | 
  parse_anchors: true # BOOLEAN | 
}

begin
  #Add document to a signature request
  result = api_instance.post_signature_requests_signature_request_id_documents(signature_request_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->post_signature_requests_signature_request_id_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **file** | **String**|  | [optional] 
 **nature** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **initials** | [****](.md)|  | [optional] 
 **parse_anchors** | **BOOLEAN**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **post_signature_requests_signature_request_id_documents_document_id_replace**
> Document post_signature_requests_signature_request_id_documents_document_id_replace(signature_request_iddocument_id, opts)

Replace a document

Replace a document in a signature request

### Example
```ruby
# load the gem
require 'yousign_client'
# setup authorization
YousignClient.configure do |config|
end

api_instance = YousignClient::DocumentApi.new
signature_request_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Signature Request Id
document_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Document Id
opts = { 
  file: 'file_example' # String | 
}

begin
  #Replace a document
  result = api_instance.post_signature_requests_signature_request_id_documents_document_id_replace(signature_request_iddocument_id, opts)
  p result
rescue YousignClient::ApiError => e
  puts "Exception when calling DocumentApi->post_signature_requests_signature_request_id_documents_document_id_replace: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signature_request_id** | [**String**](.md)| Signature Request Id | 
 **document_id** | [**String**](.md)| Document Id | 
 **file** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



