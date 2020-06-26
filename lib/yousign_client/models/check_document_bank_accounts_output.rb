=begin
#Yousign API Swagger

#For your information, the Yousign API documentation is available at https://dev.yousign.com/

OpenAPI spec version: 2.1
Contact: support@yousign.fr
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module YousignClient
  class CheckDocumentBankAccountsOutput
    # Id of the object
    attr_accessor :id

    # Created date of the object
    attr_accessor :created_at

    # Updated date of the object
    attr_accessor :updated_at

    # Firstname to check on document
    attr_accessor :first_name

    # Birth name to check on document
    attr_accessor :birth_name

    # Lastname to check on document
    attr_accessor :last_name

    # Iban to check on document
    attr_accessor :iban

    # Company name to check on document
    attr_accessor :company_name

    # Type of document
    attr_accessor :document_type

    # Workspace creator of the object
    attr_accessor :workspace

    # Creator of the object
    attr_accessor :creator

    # Extracted iban on the document
    attr_accessor :extracted_iban

    # Defines if one firstname sent in the input is valid
    attr_accessor :first_name_valid

    # Defines if birth name sent in the input is valid
    attr_accessor :birth_name_valid

    # Defines if lastname sent in the input is valid
    attr_accessor :last_name_valid

    # Defines if company name sent in the input is valid
    attr_accessor :company_name_valid

    # Defines if iban sent in the input is valid
    attr_accessor :iban_valid

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'first_name' => :'firstName',
        :'birth_name' => :'birthName',
        :'last_name' => :'lastName',
        :'iban' => :'iban',
        :'company_name' => :'companyName',
        :'document_type' => :'documentType',
        :'workspace' => :'workspace',
        :'creator' => :'creator',
        :'extracted_iban' => :'extractedIban',
        :'first_name_valid' => :'firstNameValid',
        :'birth_name_valid' => :'birthNameValid',
        :'last_name_valid' => :'lastNameValid',
        :'company_name_valid' => :'companyNameValid',
        :'iban_valid' => :'ibanValid'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'first_name' => :'String',
        :'birth_name' => :'String',
        :'last_name' => :'String',
        :'iban' => :'String',
        :'company_name' => :'String',
        :'document_type' => :'String',
        :'workspace' => :'String',
        :'creator' => :'String',
        :'extracted_iban' => :'String',
        :'first_name_valid' => :'BOOLEAN',
        :'birth_name_valid' => :'BOOLEAN',
        :'last_name_valid' => :'BOOLEAN',
        :'company_name_valid' => :'BOOLEAN',
        :'iban_valid' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'birthName')
        self.birth_name = attributes[:'birthName']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'companyName')
        self.company_name = attributes[:'companyName']
      end

      if attributes.has_key?(:'documentType')
        self.document_type = attributes[:'documentType']
      end

      if attributes.has_key?(:'workspace')
        self.workspace = attributes[:'workspace']
      end

      if attributes.has_key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.has_key?(:'extractedIban')
        self.extracted_iban = attributes[:'extractedIban']
      end

      if attributes.has_key?(:'firstNameValid')
        self.first_name_valid = attributes[:'firstNameValid']
      end

      if attributes.has_key?(:'birthNameValid')
        self.birth_name_valid = attributes[:'birthNameValid']
      end

      if attributes.has_key?(:'lastNameValid')
        self.last_name_valid = attributes[:'lastNameValid']
      end

      if attributes.has_key?(:'companyNameValid')
        self.company_name_valid = attributes[:'companyNameValid']
      end

      if attributes.has_key?(:'ibanValid')
        self.iban_valid = attributes[:'ibanValid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
        invalid_properties.push('invalid value for "id", must conform to the pattern /^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
      document_type_validator = EnumAttributeValidator.new('String', ['RIB'])
      return false unless document_type_validator.valid?(@document_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id !~ Regexp.new(/^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/)
        fail ArgumentError, 'invalid value for "id", must conform to the pattern /^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$/.'
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_type Object to be assigned
    def document_type=(document_type)
      validator = EnumAttributeValidator.new('String', ['RIB'])
      unless validator.valid?(document_type)
        fail ArgumentError, 'invalid value for "document_type", must be one of #{validator.allowable_values}.'
      end
      @document_type = document_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          first_name == o.first_name &&
          birth_name == o.birth_name &&
          last_name == o.last_name &&
          iban == o.iban &&
          company_name == o.company_name &&
          document_type == o.document_type &&
          workspace == o.workspace &&
          creator == o.creator &&
          extracted_iban == o.extracted_iban &&
          first_name_valid == o.first_name_valid &&
          birth_name_valid == o.birth_name_valid &&
          last_name_valid == o.last_name_valid &&
          company_name_valid == o.company_name_valid &&
          iban_valid == o.iban_valid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created_at, updated_at, first_name, birth_name, last_name, iban, company_name, document_type, workspace, creator, extracted_iban, first_name_valid, birth_name_valid, last_name_valid, company_name_valid, iban_valid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = YousignClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
