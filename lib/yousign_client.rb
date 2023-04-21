=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

# Common files
require 'yousign_client/api_client'
require 'yousign_client/api_error'
require 'yousign_client/version'
require 'yousign_client/configuration'

# Models
require 'yousign_client/models/any_of_create_electronic_seal_payload_fields_items'
require 'yousign_client/models/any_ofdocuments_document_id_body_initials'
require 'yousign_client/models/any_ofsignature_request_id_documents_body_initials'
require 'yousign_client/models/any_ofsignature_requests_body_signers_items'
require 'yousign_client/models/approver'
require 'yousign_client/models/approver_info'
require 'yousign_client/models/approvers_approver_id_body'
require 'yousign_client/models/contact'
require 'yousign_client/models/contacts_body'
require 'yousign_client/models/create_electronic_seal_payload'
require 'yousign_client/models/custom_experience'
require 'yousign_client/models/custom_experience_disabled_notifications_type'
require 'yousign_client/models/custom_experience_input'
require 'yousign_client/models/custom_experience_input_redirect_urls'
require 'yousign_client/models/custom_experience_redirect_urls'
require 'yousign_client/models/custom_experience_source'
require 'yousign_client/models/document'
require 'yousign_client/models/document_id_replace_body'
require 'yousign_client/models/document_initials'
require 'yousign_client/models/documents_document_id_body'
require 'yousign_client/models/electronic_seal'
require 'yousign_client/models/electronic_seal_documents_body'
require 'yousign_client/models/electronic_seal_images_body'
require 'yousign_client/models/embedded_signer_with_signature_link'
require 'yousign_client/models/field_checkbox'
require 'yousign_client/models/field_mention'
require 'yousign_client/models/field_signature'
require 'yousign_client/models/field_text'
require 'yousign_client/models/fields_input'
require 'yousign_client/models/fields_input_radios'
require 'yousign_client/models/initials_area'
require 'yousign_client/models/inline_response_200'
require 'yousign_client/models/inline_response_200_1'
require 'yousign_client/models/inline_response_200_2'
require 'yousign_client/models/inline_response_200_3'
require 'yousign_client/models/inline_response_200_4'
require 'yousign_client/models/inline_response_200_4_api'
require 'yousign_client/models/inline_response_200_4_app'
require 'yousign_client/models/inline_response_200_5'
require 'yousign_client/models/inline_response_200_6'
require 'yousign_client/models/inline_response_200_7'
require 'yousign_client/models/inline_response_201'
require 'yousign_client/models/inline_response_201_1'
require 'yousign_client/models/inline_response_401'
require 'yousign_client/models/locale'
require 'yousign_client/models/one_of_signer_fields_items'
require 'yousign_client/models/one_of_signer_with_signature_link_fields_items'
require 'yousign_client/models/one_of_webhook_subscription_scopes'
require 'yousign_client/models/one_of_webhook_subscription_subscribed_events'
require 'yousign_client/models/one_ofwebhooks_body_scopes'
require 'yousign_client/models/one_ofwebhooks_body_subscribed_events'
require 'yousign_client/models/one_ofwebhooks_webhook_id_body_scopes'
require 'yousign_client/models/one_ofwebhooks_webhook_id_body_subscribed_events'
require 'yousign_client/models/pagination'
require 'yousign_client/models/signature_request'
require 'yousign_client/models/signature_request_activated'
require 'yousign_client/models/signature_request_activated_approvers'
require 'yousign_client/models/signature_request_activated_documents'
require 'yousign_client/models/signature_request_approvers'
require 'yousign_client/models/signature_request_documents'
require 'yousign_client/models/signature_request_id_approvers_body'
require 'yousign_client/models/signature_request_id_cancel_body'
require 'yousign_client/models/signature_request_id_documents_body'
require 'yousign_client/models/signature_request_id_followers_body'
require 'yousign_client/models/signature_request_id_reactivate_body'
require 'yousign_client/models/signature_request_id_signers_body'
require 'yousign_client/models/signature_request_reminder_settings'
require 'yousign_client/models/signature_request_sender'
require 'yousign_client/models/signature_request_signer_from_contact_id_input'
require 'yousign_client/models/signature_request_signer_from_info_input'
require 'yousign_client/models/signature_request_signer_from_info_input_info'
require 'yousign_client/models/signature_request_signer_from_user_id_input'
require 'yousign_client/models/signature_request_signers'
require 'yousign_client/models/signature_requests_body'
require 'yousign_client/models/signature_requests_reminder_settings'
require 'yousign_client/models/signature_requests_signature_request_id_body'
require 'yousign_client/models/signature_requestssignature_request_id_reminder_settings'
require 'yousign_client/models/signature_requestssignature_request_idapprovers_info'
require 'yousign_client/models/signature_requestssignature_request_idapproversapprover_id_info'
require 'yousign_client/models/signature_requestssignature_request_idsigners_custom_text'
require 'yousign_client/models/signature_requestssignature_request_idsigners_custom_text_1'
require 'yousign_client/models/signature_requestssignature_request_idsigners_info'
require 'yousign_client/models/signature_requestssignature_request_idsigners_redirect_urls'
require 'yousign_client/models/signer'
require 'yousign_client/models/signer_custom_text'
require 'yousign_client/models/signer_info'
require 'yousign_client/models/signer_redirect_urls'
require 'yousign_client/models/signer_with_signature_link'
require 'yousign_client/models/signers_signer_id_body'
require 'yousign_client/models/upload_document_input'
require 'yousign_client/models/upload_file_input'
require 'yousign_client/models/user'
require 'yousign_client/models/user_workspaces'
require 'yousign_client/models/violation_response'
require 'yousign_client/models/webhook_subscription'
require 'yousign_client/models/webhooks_body'
require 'yousign_client/models/webhooks_webhook_id_body'
require 'yousign_client/models/workspace'

# APIs
require 'yousign_client/api/approver_api'
require 'yousign_client/api/consumption_api'
require 'yousign_client/api/contact_api'
require 'yousign_client/api/custom_experience_api'
require 'yousign_client/api/document_api'
require 'yousign_client/api/electronic_seal_api'
require 'yousign_client/api/follower_api'
require 'yousign_client/api/signature_request_api'
require 'yousign_client/api/signer_api'
require 'yousign_client/api/user_api'
require 'yousign_client/api/webhook_api'
require 'yousign_client/api/workspace_api'

module YousignClient
  class << self
    # Customize default settings for the SDK using block.
    #   YousignClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
