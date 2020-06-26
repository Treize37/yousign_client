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
require 'date'

# Unit tests for YousignClient::UserGroup
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserGroup' do
  before do
    # run before each test
    @instance = YousignClient::UserGroup.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserGroup' do
    it 'should create an instance of UserGroup' do
      expect(@instance).to be_instance_of(YousignClient::UserGroup)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["procedure_write", "procedure_template_write", "procedure_create_from_template", "sign", "workspace", "user", "api_key", "contact", "procedure_custom_field", "signature_ui", "server_stamp", "certificate", "archive"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.permissions = value }.not_to raise_error
      # end
    end
  end

end
