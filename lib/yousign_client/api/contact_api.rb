=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

module YousignClient
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a contact
    # Delete a contact
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contacts_contact_id(contact_id, opts = {})
      delete_contacts_contact_id_with_http_info(contact_id, opts)
      nil
    end

    # Delete a contact
    # Delete a contact
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contacts_contact_id_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.delete_contacts_contact_id ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.delete_contacts_contact_id"
      end
      # resource path
      local_var_path = '/contacts/{contactId}'.sub('{' + 'contactId' + '}', contact_id.to_s)

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
        @api_client.config.logger.debug "API called: ContactApi#delete_contacts_contact_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a contact
    # Get a contact
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [Contact]
    def get_contact_contact_id(contact_id, opts = {})
      data, _status_code, _headers = get_contact_contact_id_with_http_info(contact_id, opts)
      data
    end

    # Get a contact
    # Get a contact
    # @param contact_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def get_contact_contact_id_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contact_contact_id ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactApi.get_contact_contact_id"
      end
      # resource path
      local_var_path = '/contacts/{contactId}'.sub('{' + 'contactId' + '}', contact_id.to_s)

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

      return_type = opts[:return_type] || 'Contact' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contact_contact_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all contacts
    # List all contacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @return [InlineResponse2002]
    def get_contacts(opts = {})
      data, _status_code, _headers = get_contacts_with_http_info(opts)
      data
    end

    # List all contacts
    # List all contacts
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @return [Array<(InlineResponse2002, Integer, Hash)>] InlineResponse2002 data, response status code and response headers
    def get_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.get_contacts ...'
      end
      # resource path
      local_var_path = '/contacts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse2002' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#get_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a contact
    # Create a contact
    # @param [Hash] opts the optional parameters
    # @option opts [ContactsBody] :body 
    # @return [Contact]
    def post_contacts(opts = {})
      data, _status_code, _headers = post_contacts_with_http_info(opts)
      data
    end

    # Create a contact
    # Create a contact
    # @param [Hash] opts the optional parameters
    # @option opts [ContactsBody] :body 
    # @return [Array<(Contact, Integer, Hash)>] Contact data, response status code and response headers
    def post_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.post_contacts ...'
      end
      # resource path
      local_var_path = '/contacts'

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

      return_type = opts[:return_type] || 'Contact' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#post_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
