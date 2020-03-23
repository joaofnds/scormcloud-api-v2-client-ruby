=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

# Common files
require 'rustici_software_cloud_v2/api_client'
require 'rustici_software_cloud_v2/api_error'
require 'rustici_software_cloud_v2/version'
require 'rustici_software_cloud_v2/configuration'

# Models
require 'rustici_software_cloud_v2/models/about_schema'
require 'rustici_software_cloud_v2/models/activity_result_schema'
require 'rustici_software_cloud_v2/models/application_list_schema'
require 'rustici_software_cloud_v2/models/application_schema'
require 'rustici_software_cloud_v2/models/application_token'
require 'rustici_software_cloud_v2/models/batch_tags_schema'
require 'rustici_software_cloud_v2/models/comment_schema'
require 'rustici_software_cloud_v2/models/completion_amount_schema'
require 'rustici_software_cloud_v2/models/course_activity_schema'
require 'rustici_software_cloud_v2/models/course_list_non_paged_schema'
require 'rustici_software_cloud_v2/models/course_list_schema'
require 'rustici_software_cloud_v2/models/course_reference_schema'
require 'rustici_software_cloud_v2/models/course_schema'
require 'rustici_software_cloud_v2/models/create_dispatch_id_schema'
require 'rustici_software_cloud_v2/models/create_dispatch_list_schema'
require 'rustici_software_cloud_v2/models/create_dispatch_schema'
require 'rustici_software_cloud_v2/models/create_private_invitation_schema'
require 'rustici_software_cloud_v2/models/create_public_invitation_schema'
require 'rustici_software_cloud_v2/models/create_registration_schema'
require 'rustici_software_cloud_v2/models/credential_created_schema'
require 'rustici_software_cloud_v2/models/credential_list_schema'
require 'rustici_software_cloud_v2/models/credential_request_schema'
require 'rustici_software_cloud_v2/models/credential_schema'
require 'rustici_software_cloud_v2/models/destination_id_schema'
require 'rustici_software_cloud_v2/models/destination_list_schema'
require 'rustici_software_cloud_v2/models/destination_schema'
require 'rustici_software_cloud_v2/models/dispatch_id_schema'
require 'rustici_software_cloud_v2/models/dispatch_list_schema'
require 'rustici_software_cloud_v2/models/dispatch_registration_count_schema'
require 'rustici_software_cloud_v2/models/dispatch_schema'
require 'rustici_software_cloud_v2/models/enabled_schema'
require 'rustici_software_cloud_v2/models/import_fetch_request_schema'
require 'rustici_software_cloud_v2/models/import_job_result_schema'
require 'rustici_software_cloud_v2/models/import_result_schema'
require 'rustici_software_cloud_v2/models/integer_result_schema'
require 'rustici_software_cloud_v2/models/invitation_email_schema'
require 'rustici_software_cloud_v2/models/invitation_job_status_schema'
require 'rustici_software_cloud_v2/models/invitation_summary_list'
require 'rustici_software_cloud_v2/models/invitation_summary_schema'
require 'rustici_software_cloud_v2/models/item_value_pair_schema'
require 'rustici_software_cloud_v2/models/launch_auth_options_schema'
require 'rustici_software_cloud_v2/models/launch_auth_schema'
require 'rustici_software_cloud_v2/models/launch_history_list_schema'
require 'rustici_software_cloud_v2/models/launch_history_schema'
require 'rustici_software_cloud_v2/models/launch_link_request_schema'
require 'rustici_software_cloud_v2/models/launch_link_schema'
require 'rustici_software_cloud_v2/models/learner_preference_schema'
require 'rustici_software_cloud_v2/models/learner_schema'
require 'rustici_software_cloud_v2/models/message_schema'
require 'rustici_software_cloud_v2/models/metadata_schema'
require 'rustici_software_cloud_v2/models/objective_schema'
require 'rustici_software_cloud_v2/models/permissions_schema'
require 'rustici_software_cloud_v2/models/ping_schema'
require 'rustici_software_cloud_v2/models/post_back_schema'
require 'rustici_software_cloud_v2/models/private_invitation_list'
require 'rustici_software_cloud_v2/models/private_invitation_schema'
require 'rustici_software_cloud_v2/models/public_invitation_list'
require 'rustici_software_cloud_v2/models/public_invitation_schema'
require 'rustici_software_cloud_v2/models/registration_completion'
require 'rustici_software_cloud_v2/models/registration_list_schema'
require 'rustici_software_cloud_v2/models/registration_schema'
require 'rustici_software_cloud_v2/models/registration_success'
require 'rustici_software_cloud_v2/models/reportage_account_info_schema'
require 'rustici_software_cloud_v2/models/reportage_account_info_usage_schema'
require 'rustici_software_cloud_v2/models/reportage_auth_token_schema'
require 'rustici_software_cloud_v2/models/reportage_link_schema'
require 'rustici_software_cloud_v2/models/response_error'
require 'rustici_software_cloud_v2/models/runtime_interaction_schema'
require 'rustici_software_cloud_v2/models/runtime_objective_schema'
require 'rustici_software_cloud_v2/models/runtime_schema'
require 'rustici_software_cloud_v2/models/score_schema'
require 'rustici_software_cloud_v2/models/setting_item'
require 'rustici_software_cloud_v2/models/setting_list_schema'
require 'rustici_software_cloud_v2/models/setting_metadata'
require 'rustici_software_cloud_v2/models/setting_valid_value'
require 'rustici_software_cloud_v2/models/settings_individual_schema'
require 'rustici_software_cloud_v2/models/settings_post_schema'
require 'rustici_software_cloud_v2/models/shared_data_entry_schema'
require 'rustici_software_cloud_v2/models/static_properties_schema'
require 'rustici_software_cloud_v2/models/string_result_schema'
require 'rustici_software_cloud_v2/models/tag_list_schema'
require 'rustici_software_cloud_v2/models/title_schema'
require 'rustici_software_cloud_v2/models/token_request_schema'
require 'rustici_software_cloud_v2/models/update_dispatch_schema'
require 'rustici_software_cloud_v2/models/user_invitation_list'
require 'rustici_software_cloud_v2/models/user_invitation_schema'
require 'rustici_software_cloud_v2/models/user_invitation_schema_registration_report'
require 'rustici_software_cloud_v2/models/xapi_account'
require 'rustici_software_cloud_v2/models/xapi_activity'
require 'rustici_software_cloud_v2/models/xapi_activity_definition'
require 'rustici_software_cloud_v2/models/xapi_agent_group'
require 'rustici_software_cloud_v2/models/xapi_attachment'
require 'rustici_software_cloud_v2/models/xapi_context'
require 'rustici_software_cloud_v2/models/xapi_context_activity'
require 'rustici_software_cloud_v2/models/xapi_credential_auth_type_schema'
require 'rustici_software_cloud_v2/models/xapi_credential_permissions_level_schema'
require 'rustici_software_cloud_v2/models/xapi_credential_post_schema'
require 'rustici_software_cloud_v2/models/xapi_credential_put_schema'
require 'rustici_software_cloud_v2/models/xapi_credential_schema'
require 'rustici_software_cloud_v2/models/xapi_credentials_list_schema'
require 'rustici_software_cloud_v2/models/xapi_endpoint_schema'
require 'rustici_software_cloud_v2/models/xapi_interaction_component'
require 'rustici_software_cloud_v2/models/xapi_result'
require 'rustici_software_cloud_v2/models/xapi_score'
require 'rustici_software_cloud_v2/models/xapi_statement'
require 'rustici_software_cloud_v2/models/xapi_statement_pipe_list_schema'
require 'rustici_software_cloud_v2/models/xapi_statement_pipe_post_schema'
require 'rustici_software_cloud_v2/models/xapi_statement_pipe_put_schema'
require 'rustici_software_cloud_v2/models/xapi_statement_pipe_schema'
require 'rustici_software_cloud_v2/models/xapi_statement_reference'
require 'rustici_software_cloud_v2/models/xapi_statement_result'
require 'rustici_software_cloud_v2/models/xapi_verb'
require 'rustici_software_cloud_v2/models/zoomi_company_id'
require 'rustici_software_cloud_v2/models/zoomi_course_options_schema'

# APIs
require 'rustici_software_cloud_v2/api/about_api'
require 'rustici_software_cloud_v2/api/application_management_api'
require 'rustici_software_cloud_v2/api/authentication_api'
require 'rustici_software_cloud_v2/api/course_api'
require 'rustici_software_cloud_v2/api/dispatch_api'
require 'rustici_software_cloud_v2/api/invitations_api'
require 'rustici_software_cloud_v2/api/learner_api'
require 'rustici_software_cloud_v2/api/ping_api'
require 'rustici_software_cloud_v2/api/registration_api'
require 'rustici_software_cloud_v2/api/reporting_api'
require 'rustici_software_cloud_v2/api/xapi_api'
require 'rustici_software_cloud_v2/api/zoomi_api'

module RusticiSoftwareCloudV2
  class << self
    # Customize default settings for the SDK using block.
    #   RusticiSoftwareCloudV2.configure do |config|
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
