=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for YousignClient::SignatureRequestssignatureRequestIdReminderSettings
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignatureRequestssignatureRequestIdReminderSettings' do
  before do
    # run before each test
    @instance = YousignClient::SignatureRequestssignatureRequestIdReminderSettings.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignatureRequestssignatureRequestIdReminderSettings' do
    it 'should create an instance of SignatureRequestssignatureRequestIdReminderSettings' do
      expect(@instance).to be_instance_of(YousignClient::SignatureRequestssignatureRequestIdReminderSettings)
    end
  end
  describe 'test attribute "interval_in_days"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('BigDecimal', ["1", "2", "7", "14"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.interval_in_days = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "max_occurrences"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end