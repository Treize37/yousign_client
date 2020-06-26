=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

# Common files
require 'yousign_client/api_client'
require 'yousign_client/api_error'
require 'yousign_client/version'
require 'yousign_client/configuration'

# Models
require 'yousign_client/models/authentication_email_output'
require 'yousign_client/models/authentication_inwebo_output'
require 'yousign_client/models/authentication_sms_output'
require 'yousign_client/models/body'
require 'yousign_client/models/body_1'
require 'yousign_client/models/body_2'
require 'yousign_client/models/check_document_bank_accounts_input'
require 'yousign_client/models/check_document_bank_accounts_output'
require 'yousign_client/models/check_document_identities_input'
require 'yousign_client/models/check_document_identities_output'
require 'yousign_client/models/config_email_template'
require 'yousign_client/models/config_webhook_template'
require 'yousign_client/models/consent_process_input'
require 'yousign_client/models/consent_process_output'
require 'yousign_client/models/consent_process_value_input'
require 'yousign_client/models/consent_process_value_output'
require 'yousign_client/models/file_input'
require 'yousign_client/models/file_input_metadata'
require 'yousign_client/models/file_object_input'
require 'yousign_client/models/file_object_input_without_file_reference'
require 'yousign_client/models/file_object_output'
require 'yousign_client/models/file_object_output_without_file_reference'
require 'yousign_client/models/file_output'
require 'yousign_client/models/inline_response_400'
require 'yousign_client/models/inwebo_user_request'
require 'yousign_client/models/member_input'
require 'yousign_client/models/member_output'
require 'yousign_client/models/mode_sms_configuration'
require 'yousign_client/models/operation_input'
require 'yousign_client/models/operation_output'
require 'yousign_client/models/operation_output_metadata'
require 'yousign_client/models/organization_billing_address'
require 'yousign_client/models/organization_output'
require 'yousign_client/models/procedure_config'
require 'yousign_client/models/procedure_config_email'
require 'yousign_client/models/procedure_config_reminder'
require 'yousign_client/models/procedure_config_reminder_config'
require 'yousign_client/models/procedure_config_reminder_config_email'
require 'yousign_client/models/procedure_config_webhook'
require 'yousign_client/models/procedure_duplicate_input'
require 'yousign_client/models/procedure_input'
require 'yousign_client/models/procedure_input_metadata'
require 'yousign_client/models/procedure_output'
require 'yousign_client/models/procedure_output_metadata'
require 'yousign_client/models/procedure_remind_config'
require 'yousign_client/models/procedure_remind_config_email'
require 'yousign_client/models/procedure_remind_input'
require 'yousign_client/models/server_stamp_config'
require 'yousign_client/models/server_stamp_config_webhook'
require 'yousign_client/models/server_stamp_input'
require 'yousign_client/models/server_stamp_output'
require 'yousign_client/models/signature_ui_input'
require 'yousign_client/models/signature_ui_input_redirect_cancel'
require 'yousign_client/models/signature_ui_input_redirect_error'
require 'yousign_client/models/signature_ui_input_redirect_success'
require 'yousign_client/models/signature_ui_input_update'
require 'yousign_client/models/signature_ui_label_input'
require 'yousign_client/models/signature_ui_label_input_included'
require 'yousign_client/models/signature_ui_label_output'
require 'yousign_client/models/signature_ui_output'
require 'yousign_client/models/signature_ui_output_redirect_cancel'
require 'yousign_client/models/signature_ui_output_redirect_error'
require 'yousign_client/models/signature_ui_output_redirect_success'
require 'yousign_client/models/user_group'
require 'yousign_client/models/user_input'
require 'yousign_client/models/user_input_notifications'
require 'yousign_client/models/user_output'
require 'yousign_client/models/user_output_notifications'
require 'yousign_client/models/user_workspace_output'
require 'yousign_client/models/workspace_config'
require 'yousign_client/models/workspace_config_email'
require 'yousign_client/models/workspace_config_procedure'
require 'yousign_client/models/workspace_output'

# APIs
require 'yousign_client/api/authentications_api'
require 'yousign_client/api/check_documents_api'
require 'yousign_client/api/consent_processes_api'
require 'yousign_client/api/file_objects_api'
require 'yousign_client/api/files_api'
require 'yousign_client/api/members_api'
require 'yousign_client/api/operations_api'
require 'yousign_client/api/organizations_api'
require 'yousign_client/api/procedures_api'
require 'yousign_client/api/server_stamps_api'
require 'yousign_client/api/signature_u_is_api'
require 'yousign_client/api/user_groups_api'
require 'yousign_client/api/users_api'
require 'yousign_client/api/workspaces_api'

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
