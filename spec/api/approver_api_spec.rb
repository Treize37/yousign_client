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

# Unit tests for YousignClient::ApproverApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApproverApi' do
  before do
    # run before each test
    @instance = YousignClient::ApproverApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApproverApi' do
    it 'should create an instance of ApproverApi' do
      expect(@instance).to be_instance_of(YousignClient::ApproverApi)
    end
  end

  # unit tests for get_signature_requests_signature_request_id_approvers_approver_id
  # Get an approver
  # @param signature_request_id Signature Request Id
  # @param approver_id Approver Id
  # @param [Hash] opts the optional parameters
  # @return [Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema]
  describe 'get_signature_requests_signature_request_id_approvers_approver_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_signature_requests_signature_request_id_approvers_approver_id
  # Update an Approver
  # @param signature_request_id Signature Request Id
  # @param approver_id Approver Id
  # @param [Hash] opts the optional parameters
  # @option opts [ApproversApproverIdBody] :body 
  # @return [Paths1signatureRequests17BsignatureRequestId7D1approverspostresponses201contentapplication1jsonschema]
  describe 'patch_signature_requests_signature_request_id_approvers_approver_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_signature_requests_signature_request_id_approvers
  # Create a new approver
  # Create a new approver from scratch
  # @param signature_request_id Signature Request Id
  # @param [Hash] opts the optional parameters
  # @option opts [SignatureRequestIdApproversBody] :body An Approver object to be added to the signature request.
  # @return [Approver]
  describe 'post_signature_requests_signature_request_id_approvers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
