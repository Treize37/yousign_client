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

# Unit tests for YousignClient::SignerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SignerApi' do
  before do
    # run before each test
    @instance = YousignClient::SignerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SignerApi' do
    it 'should create an instance of SignerApi' do
      expect(@instance).to be_instance_of(YousignClient::SignerApi)
    end
  end

  # unit tests for delete_signature_requests_signature_request_id_signers_signer_id
  # Delete a signer
  # Delete a signer
  # @param signer_id Signer id
  # @param signature_request_id Signature request id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_signature_requests_signature_request_id_signers_signer_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_signature_requests_signature_request_id_signers
  # List signature request signers
  # List signers from a signature request
  # @param signature_request_id Signature Request Id
  # @param [Hash] opts the optional parameters
  # @return [Array<Signer>]
  describe 'get_signature_requests_signature_request_id_signers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_signature_requests_signature_request_id_signers_signer_id_audit_trails
  # Get signer audit trail
  # Get signer audit trail
  # @param signer_id Signer id
  # @param signature_request_id Signature request id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'get_signature_requests_signature_request_id_signers_signer_id_audit_trails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_signers_signer_id_audit_trails_download
  # Download audit trail PDF
  # Download audit trail PDF
  # @param signer_id Signer Id
  # @param signature_request_id Signature request Id
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'get_signers_signer_id_audit_trails_download test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_signers_signers_id
  # Get a signer
  # Get a signer
  # @param signer_id Signer id
  # @param signature_request_id Signature request id
  # @param [Hash] opts the optional parameters
  # @return [SignerWithSignatureLink]
  describe 'get_signers_signers_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_signature_requests_signature_request_id_signers_signer_id
  # Update a signer
  # Update a signer
  # @param signer_id Signer id
  # @param signature_request_id Signature request id
  # @param [Hash] opts the optional parameters
  # @option opts [SignersSignerIdBody] :body 
  # @return [Signer]
  describe 'patch_signature_requests_signature_request_id_signers_signer_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_signature_requests_signature_request_id_signers
  # Create a new signer
  # Create a new signer
  # @param signature_request_id Signature Request Id
  # @param [Hash] opts the optional parameters
  # @option opts [SignatureRequestIdSignersBody] :body 
  # @return [Signer]
  describe 'post_signature_requests_signature_request_id_signers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end