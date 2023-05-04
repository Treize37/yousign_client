=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

module YousignClient
  class DocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a document
    # Delete a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id, opts = {})
      delete_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts)
      nil
    end

    # Delete a document
    # Delete a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.delete_signature_requests_signature_request_id_documents_document_id ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.delete_signature_requests_signature_request_id_documents_document_id"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentApi.delete_signature_requests_signature_request_id_documents_document_id"
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/{documentId}'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#delete_signature_requests_signature_request_id_documents_document_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List signature request documents
    # List signature request documents
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :nature filter by nature
    # @return [Array<Document>]
    def get_signature_requests_signature_request_id_documents(signature_request_id, opts = {})
      data, _status_code, _headers = get_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts)
      data
    end

    # List signature request documents
    # List signature request documents
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :nature filter by nature
    # @return [Array<(Array<Document>, Integer, Hash)>] Array<Document> data, response status code and response headers
    def get_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_signature_requests_signature_request_id_documents ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents"
      end
      if @api_client.config.client_side_validation && opts[:'nature'] && !['attachment', 'signable_document'].include?(opts[:'nature'])
        fail ArgumentError, 'invalid value for "nature", must be one of attachment, signable_document'
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'nature'] = opts[:'nature'] if !opts[:'nature'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Document>' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_signature_requests_signature_request_id_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a document
    # Get a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [Document]
    def get_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id, opts = {})
      data, _status_code, _headers = get_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts)
      data
    end

    # Get a document
    # Get a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Document, Integer, Hash)>] Document data, response status code and response headers
    def get_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_signature_requests_signature_request_id_documents_document_id ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents_document_id"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents_document_id"
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/{documentId}'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Document' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_signature_requests_signature_request_id_documents_document_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Download a single Signature Request Document
    # @param signature_request_id Signature Request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_signature_requests_signature_request_id_documents_documents_id_download(signature_request_id, document_id, opts = {})
      data, _status_code, _headers = get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info(signature_request_id, document_id, opts)
      data
    end

    # Download a single Signature Request Document
    # @param signature_request_id Signature Request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_signature_requests_signature_request_id_documents_documents_id_download_with_http_info(signature_request_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_signature_requests_signature_request_id_documents_documents_id_download ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents_documents_id_download"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents_documents_id_download"
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/{documentId}/download'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_signature_requests_signature_request_id_documents_documents_id_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Download signature request documents
    # Download signature request documents
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Specify documents version to download, \&quot;completed\&quot; is only available when the signature request status is \&quot;done\&quot;.
    # @option opts [BOOLEAN] :archive Force zip archive download
    # @return [String]
    def get_signature_requests_signature_request_id_documents_download(signature_request_id, opts = {})
      data, _status_code, _headers = get_signature_requests_signature_request_id_documents_download_with_http_info(signature_request_id, opts)
      data
    end

    # Download signature request documents
    # Download signature request documents
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Specify documents version to download, \&quot;completed\&quot; is only available when the signature request status is \&quot;done\&quot;.
    # @option opts [BOOLEAN] :archive Force zip archive download
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def get_signature_requests_signature_request_id_documents_download_with_http_info(signature_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_signature_requests_signature_request_id_documents_download ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.get_signature_requests_signature_request_id_documents_download"
      end
      if @api_client.config.client_side_validation && opts[:'version'] && !['current', 'completed'].include?(opts[:'version'])
        fail ArgumentError, 'invalid value for "version", must be one of current, completed'
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/download'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?
      query_params[:'archive'] = opts[:'archive'] if !opts[:'archive'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/zip, application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_signature_requests_signature_request_id_documents_download\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a document
    # Update a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentsDocumentIdBody] :body 
    # @return [Document]
    def patch_signature_requests_signature_request_id_documents_document_id(signature_request_id, document_id, opts = {})
      data, _status_code, _headers = patch_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts)
      data
    end

    # Update a document
    # Update a document
    # @param signature_request_id Signature request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @option opts [DocumentsDocumentIdBody] :body 
    # @return [Array<(Document, Integer, Hash)>] Document data, response status code and response headers
    def patch_signature_requests_signature_request_id_documents_document_id_with_http_info(signature_request_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.patch_signature_requests_signature_request_id_documents_document_id ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.patch_signature_requests_signature_request_id_documents_document_id"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentApi.patch_signature_requests_signature_request_id_documents_document_id"
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/{documentId}'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'body']) 

      return_type = opts[:return_type] || 'Document' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#patch_signature_requests_signature_request_id_documents_document_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Upload a document
    # Upload a document
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @option opts [String] :nature 
    # @option opts [String] :password 
    # @option opts [BOOLEAN] :parse_anchors 
    # @option opts [InitialsArea] :initials 
    # @return [Document]
    def post_documents(opts = {})
      data, _status_code, _headers = post_documents_with_http_info(opts)
      data
    end

    # Upload a document
    # Upload a document
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @option opts [String] :nature 
    # @option opts [String] :password 
    # @option opts [BOOLEAN] :parse_anchors 
    # @option opts [InitialsArea] :initials 
    # @return [Array<(Document, Integer, Hash)>] Document data, response status code and response headers
    def post_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.post_documents ...'
      end
      if @api_client.config.client_side_validation && opts[:'nature'] && !['attachment', 'signable_document'].include?(opts[:'nature'])
        fail ArgumentError, 'invalid value for "nature", must be one of attachment, signable_document'
      end
      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['nature'] = opts[:'nature'] if !opts[:'nature'].nil?
      form_params['password'] = opts[:'password'] if !opts[:'password'].nil?
      form_params['parse_anchors'] = opts[:'parse_anchors'] if !opts[:'parse_anchors'].nil?
      form_params['initials'] = opts[:'initials'] if !opts[:'initials'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Document' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#post_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add document to a signature request
    # Add document to a signature request
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @option opts [String] :nature 
    # @option opts [String] :password 
    # @option opts [] :initials 
    # @option opts [BOOLEAN] :parse_anchors 
    # @return [Document]
    def post_signature_requests_signature_request_id_documents(signature_request_id, opts = {})
      data, _status_code, _headers = post_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts)
      data
    end

    # Add document to a signature request
    # Add document to a signature request
    # @param signature_request_id Signature Request Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @option opts [String] :nature 
    # @option opts [String] :password 
    # @option opts [] :initials 
    # @option opts [BOOLEAN] :parse_anchors 
    # @return [Array<(Document, Integer, Hash)>] Document data, response status code and response headers
    def post_signature_requests_signature_request_id_documents_with_http_info(signature_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.post_signature_requests_signature_request_id_documents ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.post_signature_requests_signature_request_id_documents"
      end
      if @api_client.config.client_side_validation && opts[:'nature'] && !['attachment', 'signable_document'].include?(opts[:'nature'])
        fail ArgumentError, 'invalid value for "nature", must be one of attachment, signable_document'
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?
      form_params['nature'] = opts[:'nature'] if !opts[:'nature'].nil?
      form_params['password'] = opts[:'password'] if !opts[:'password'].nil?
      form_params['initials'] = opts[:'initials'] if !opts[:'initials'].nil?
      form_params['parse_anchors'] = opts[:'parse_anchors'] if !opts[:'parse_anchors'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Document' 

      auth_names = opts[:auth_names] || ['bearerAuth']

      # p "###############################"
      # p "header params: #{header_params}"
      # p ""
      # p "query params: #{query_params}"
      # p ""
      # p "form params: #{form_params}"
      # p ""
      # p "post body: #{post_body}"
      # p ""
      # p "auth names: #{auth_names}"
      # p ""
      # p "return type: #{return_type}"
      # p "###############################"

      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#post_signature_requests_signature_request_id_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Replace a document
    # Replace a document in a signature request
    # @param signature_request_id Signature Request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Document]
    def post_signature_requests_signature_request_id_documents_document_id_replace(signature_request_id, document_id, opts = {})
      data, _status_code, _headers = post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info(signature_request_id, document_id, opts)
      data
    end

    # Replace a document
    # Replace a document in a signature request
    # @param signature_request_id Signature Request Id
    # @param document_id Document Id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Array<(Document, Integer, Hash)>] Document data, response status code and response headers
    def post_signature_requests_signature_request_id_documents_document_id_replace_with_http_info(signature_request_id, document_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.post_signature_requests_signature_request_id_documents_document_id_replace ...'
      end
      # verify the required parameter 'signature_request_id' is set
      if @api_client.config.client_side_validation && signature_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'signature_request_id' when calling DocumentApi.post_signature_requests_signature_request_id_documents_document_id_replace"
      end
      # verify the required parameter 'document_id' is set
      if @api_client.config.client_side_validation && document_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_id' when calling DocumentApi.post_signature_requests_signature_request_id_documents_document_id_replace"
      end
      # resource path
      local_var_path = '/signature_requests/{signatureRequestId}/documents/{documentId}/replace'.sub('{' + 'signatureRequestId' + '}', signature_request_id.to_s).sub('{' + 'documentId' + '}', document_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Document' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#post_signature_requests_signature_request_id_documents_document_id_replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
