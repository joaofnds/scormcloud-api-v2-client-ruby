=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0 beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.3

=end

require 'date'

module RusticiSoftwareCloudV2
  class RegistrationCompletion
    
    UNKNOWN = 'UNKNOWN'.freeze
    COMPLETED = 'COMPLETED'.freeze
    INCOMPLETE = 'INCOMPLETE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RegistrationCompletion.constants.select { |c| RegistrationCompletion::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RegistrationCompletion" if constantValues.empty?
      value
    end
  end
end
