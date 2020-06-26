=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'uri'

module YousignClient
  class MembersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all Members
    # Returns the list of Members of a organization. It only usefull if you use the query params named \"procedure\" for retrieve all members of a procedure.
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :procedure 
    # @return [Array<MemberOutput>]
    def members_get(authorization, opts = {})
      data, _status_code, _headers = members_get_with_http_info(authorization, opts)
      data
    end

    # Get all Members
    # Returns the list of Members of a organization. It only usefull if you use the query params named \&quot;procedure\&quot; for retrieve all members of a procedure.
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @option opts [String] :procedure 
    # @return [Array<(Array<MemberOutput>, Fixnum, Hash)>] Array<MemberOutput> data, response status code and response headers
    def members_get_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MembersApi.members_get ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling MembersApi.members_get"
      end
      # resource path
      local_var_path = '/members'

      # query parameters
      query_params = {}
      query_params[:'procedure'] = opts[:'procedure'] if !opts[:'procedure'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<MemberOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#members_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Member
    # Delete a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def members_id_delete(id, authorization, opts = {})
      members_id_delete_with_http_info(id, authorization, opts)
      nil
    end

    # Delete a Member
    # Delete a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def members_id_delete_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MembersApi.members_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.members_id_delete"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling MembersApi.members_id_delete"
      end
      # resource path
      local_var_path = '/members/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#members_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a proof file of a Member
    # Get a proof file of a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [String]
    def members_id_proof_get(id, authorization, opts = {})
      data, _status_code, _headers = members_id_proof_get_with_http_info(id, authorization, opts)
      data
    end

    # Get a proof file of a Member
    # Get a proof file of a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def members_id_proof_get_with_http_info(id, authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MembersApi.members_id_proof_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.members_id_proof_get"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling MembersApi.members_id_proof_get"
      end
      # resource path
      local_var_path = '/members/{id}/proof'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#members_id_proof_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit a Member
    # Edit a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [MemberOutput]
    def members_id_put(id, authorization, content_type, body, opts = {})
      data, _status_code, _headers = members_id_put_with_http_info(id, authorization, content_type, body, opts)
      data
    end

    # Edit a Member
    # Edit a member
    # @param id 
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberOutput, Fixnum, Hash)>] MemberOutput data, response status code and response headers
    def members_id_put_with_http_info(id, authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MembersApi.members_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MembersApi.members_id_put"
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling MembersApi.members_id_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MembersApi.members_id_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MembersApi.members_id_put"
      end
      # resource path
      local_var_path = '/members/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#members_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Member
    # Create a new member
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [MemberOutput]
    def members_post(authorization, content_type, body, opts = {})
      data, _status_code, _headers = members_post_with_http_info(authorization, content_type, body, opts)
      data
    end

    # Create a new Member
    # Create a new member
    # @param authorization Authentication credentials for HTTP authentication
    # @param content_type The MIME type of the body of the request
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberOutput, Fixnum, Hash)>] MemberOutput data, response status code and response headers
    def members_post_with_http_info(authorization, content_type, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MembersApi.members_post ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling MembersApi.members_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling MembersApi.members_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MembersApi.members_post"
      end
      # resource path
      local_var_path = '/members'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'Authorization'] = authorization
      header_params[:'Content-Type'] = content_type

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MemberOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MembersApi#members_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
