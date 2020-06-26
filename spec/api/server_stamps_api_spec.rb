=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for YousignClient::ServerStampsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServerStampsApi' do
  before do
    # run before each test
    @instance = YousignClient::ServerStampsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServerStampsApi' do
    it 'should create an instance of ServerStampsApi' do
      expect(@instance).to be_instance_of(YousignClient::ServerStampsApi)
    end
  end

  # unit tests for server_stamps_id_get
  # Find a Server Stamp by ID
  # @param id 
  # @param authorization Authentication credentials for HTTP authentication
  # @param [Hash] opts the optional parameters
  # @return [ServerStampOutput]
  describe 'server_stamps_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for server_stamps_post
  # Create a Server Stamp
  # @param authorization Authentication credentials for HTTP authentication
  # @param content_type The MIME type of the body of the request
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ServerStampOutput]
  describe 'server_stamps_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
