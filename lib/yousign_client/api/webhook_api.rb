=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

module YousignClient
  class WebhookApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Unsubscribe a webhook
    # Unsubscribe a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhooks_webhook_id(webhook_id, opts = {})
      delete_webhooks_webhook_id_with_http_info(webhook_id, opts)
      nil
    end

    # Unsubscribe a webhook
    # Unsubscribe a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.delete_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.delete_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
        @api_client.config.logger.debug "API called: WebhookApi#delete_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List webhooks
    # List webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<WebhookSubscription>]
    def get_webhooks(opts = {})
      data, _status_code, _headers = get_webhooks_with_http_info(opts)
      data
    end

    # List webhooks
    # List webhooks
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<WebhookSubscription>, Integer, Hash)>] Array<WebhookSubscription> data, response status code and response headers
    def get_webhooks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.get_webhooks ...'
      end
      # resource path
      local_var_path = '/webhooks'

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

      return_type = opts[:return_type] || 'Array<WebhookSubscription>' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a webhook
    # Get a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [WebhookSubscription]
    def get_webhooks_webhook_id(webhook_id, opts = {})
      data, _status_code, _headers = get_webhooks_webhook_id_with_http_info(webhook_id, opts)
      data
    end

    # Get a webhook
    # Get a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def get_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.get_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.get_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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

      return_type = opts[:return_type] || 'WebhookSubscription' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#get_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a webhook
    # Update a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @option opts [WebhooksWebhookIdBody] :body 
    # @return [WebhookSubscription]
    def patch_webhooks_webhook_id(webhook_id, opts = {})
      data, _status_code, _headers = patch_webhooks_webhook_id_with_http_info(webhook_id, opts)
      data
    end

    # Update a webhook
    # Update a webhook
    # @param webhook_id Webhook Id
    # @param [Hash] opts the optional parameters
    # @option opts [WebhooksWebhookIdBody] :body 
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def patch_webhooks_webhook_id_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.patch_webhooks_webhook_id ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhookApi.patch_webhooks_webhook_id"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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

      return_type = opts[:return_type] || 'WebhookSubscription' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#patch_webhooks_webhook_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Configure a new webhook
    # Configure a new webhook
    # @param [Hash] opts the optional parameters
    # @option opts [WebhooksBody] :body 
    # @return [WebhookSubscription]
    def post_webhooks_subscriptions(opts = {})
      data, _status_code, _headers = post_webhooks_subscriptions_with_http_info(opts)
      data
    end

    # Configure a new webhook
    # Configure a new webhook
    # @param [Hash] opts the optional parameters
    # @option opts [WebhooksBody] :body 
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def post_webhooks_subscriptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookApi.post_webhooks_subscriptions ...'
      end
      # resource path
      local_var_path = '/webhooks'

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

      return_type = opts[:return_type] || 'WebhookSubscription' 

      auth_names = opts[:auth_names] || ['bearerAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookApi#post_webhooks_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
