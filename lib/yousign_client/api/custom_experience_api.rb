=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

module YousignClient
  class CustomExperienceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a Custom Experience
    # Delete a Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_experience(custom_experience_id, opts = {})
      delete_custom_experience_with_http_info(custom_experience_id, opts)
      nil
    end

    # Delete a Custom Experience
    # Delete a Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_experience_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.delete_custom_experience ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.delete_custom_experience"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', custom_experience_id.to_s)

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
        @api_client.config.logger.debug "API called: CustomExperienceApi#delete_custom_experience\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Custom Experience Logo
    # Delete a Custom Experience Logo
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_experience_logo(custom_experience_id, opts = {})
      delete_custom_experience_logo_with_http_info(custom_experience_id, opts)
      nil
    end

    # Delete a Custom Experience Logo
    # Delete a Custom Experience Logo
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_experience_logo_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.delete_custom_experience_logo ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.delete_custom_experience_logo"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}/logo'.sub('{' + 'customExperienceId' + '}', custom_experience_id.to_s)

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
        @api_client.config.logger.debug "API called: CustomExperienceApi#delete_custom_experience_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Custom Experiences
    # List Custom Experiences
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @return [InlineResponse2005]
    def get_custom_experiences(opts = {})
      data, _status_code, _headers = get_custom_experiences_with_http_info(opts)
      data
    end

    # List Custom Experiences
    # List Custom Experiences
    # @param [Hash] opts the optional parameters
    # @option opts [String] :after After cursor (pagination)
    # @return [Array<(InlineResponse2005, Integer, Hash)>] InlineResponse2005 data, response status code and response headers
    def get_custom_experiences_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.get_custom_experiences ...'
      end
      # resource path
      local_var_path = '/custom_experiences'

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

      return_type = opts[:return_type] || 'InlineResponse2005' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#get_custom_experiences\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a given Custom Experience
    # Get a given Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [Paths1customExperiencespostresponses201contentapplication1jsonschema]
    def get_custom_experiences_custom_experience_id(custom_experience_id, opts = {})
      data, _status_code, _headers = get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)
      data
    end

    # Get a given Custom Experience
    # Get a given Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Paths1customExperiencespostresponses201contentapplication1jsonschema, Integer, Hash)>] Paths1customExperiencespostresponses201contentapplication1jsonschema data, response status code and response headers
    def get_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.get_custom_experiences_custom_experience_id ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.get_custom_experiences_custom_experience_id"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', custom_experience_id.to_s)

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

      return_type = opts[:return_type] || 'Paths1customExperiencespostresponses201contentapplication1jsonschema' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#get_custom_experiences_custom_experience_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Custom Experience Logo
    # Create a Custom Experience Logo
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Paths1customExperiencespostresponses201contentapplication1jsonschema]
    def patch_custom_experience_logo(custom_experience_id, opts = {})
      data, _status_code, _headers = patch_custom_experience_logo_with_http_info(custom_experience_id, opts)
      data
    end

    # Update a Custom Experience Logo
    # Create a Custom Experience Logo
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :file 
    # @return [Array<(Paths1customExperiencespostresponses201contentapplication1jsonschema, Integer, Hash)>] Paths1customExperiencespostresponses201contentapplication1jsonschema data, response status code and response headers
    def patch_custom_experience_logo_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.patch_custom_experience_logo ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.patch_custom_experience_logo"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}/logo'.sub('{' + 'customExperienceId' + '}', custom_experience_id.to_s)

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

      return_type = opts[:return_type] || 'Paths1customExperiencespostresponses201contentapplication1jsonschema' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#patch_custom_experience_logo\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Custom Experience
    # Update a Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @option opts [CustomExperienceInput] :body 
    # @return [Paths1customExperiencespostresponses201contentapplication1jsonschema]
    def patch_custom_experiences_custom_experience_id(custom_experience_id, opts = {})
      data, _status_code, _headers = patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts)
      data
    end

    # Update a Custom Experience
    # Update a Custom Experience
    # @param custom_experience_id 
    # @param [Hash] opts the optional parameters
    # @option opts [CustomExperienceInput] :body 
    # @return [Array<(Paths1customExperiencespostresponses201contentapplication1jsonschema, Integer, Hash)>] Paths1customExperiencespostresponses201contentapplication1jsonschema data, response status code and response headers
    def patch_custom_experiences_custom_experience_id_with_http_info(custom_experience_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.patch_custom_experiences_custom_experience_id ...'
      end
      # verify the required parameter 'custom_experience_id' is set
      if @api_client.config.client_side_validation && custom_experience_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_experience_id' when calling CustomExperienceApi.patch_custom_experiences_custom_experience_id"
      end
      # resource path
      local_var_path = '/custom_experiences/{customExperienceId}'.sub('{' + 'customExperienceId' + '}', custom_experience_id.to_s)

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

      return_type = opts[:return_type] || 'Paths1customExperiencespostresponses201contentapplication1jsonschema' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#patch_custom_experiences_custom_experience_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a Custom Experience
    # Create a Custom Experience
    # @param [Hash] opts the optional parameters
    # @option opts [CustomExperienceInput] :body 
    # @return [CustomExperience]
    def post_custom_experience(opts = {})
      data, _status_code, _headers = post_custom_experience_with_http_info(opts)
      data
    end

    # Create a Custom Experience
    # Create a Custom Experience
    # @param [Hash] opts the optional parameters
    # @option opts [CustomExperienceInput] :body 
    # @return [Array<(CustomExperience, Integer, Hash)>] CustomExperience data, response status code and response headers
    def post_custom_experience_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomExperienceApi.post_custom_experience ...'
      end
      # resource path
      local_var_path = '/custom_experiences'

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

      return_type = opts[:return_type] || 'CustomExperience' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomExperienceApi#post_custom_experience\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
