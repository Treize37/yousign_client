=begin
#Public Api v3

#Build the best experience of digital signature through your own platform. Increase your conversion rates, leverage your data and reduce your costs with Yousign API.

OpenAPI spec version: 3.0
Contact: contact@yousign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.42
=end

require 'date'

module YousignClient
  class CustomExperienceSource
    APP = 'app'.freeze
    PUBLIC_API = 'public_api'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CustomExperienceSource.constants.select { |c| CustomExperienceSource::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CustomExperienceSource" if constantValues.empty?
      value
    end
  end
end