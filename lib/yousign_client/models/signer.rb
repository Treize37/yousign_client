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
  # Signer
  class Signer
    attr_accessor :id

    attr_accessor :info

    attr_accessor :status

    attr_accessor :fields

    attr_accessor :signature_level

    attr_accessor :signature_authentication_mode

    attr_accessor :signature_link

    attr_accessor :signature_image_preview

    attr_accessor :redirect_urls

    attr_accessor :custom_text

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
        :'info' => :'info',
        :'status' => :'status',
        :'fields' => :'fields',
        :'signature_level' => :'signature_level',
        :'signature_authentication_mode' => :'signature_authentication_mode',
        :'signature_link' => :'signature_link',
        :'signature_image_preview' => :'signature_image_preview',
        :'redirect_urls' => :'redirect_urls',
        :'custom_text' => :'custom_text'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'info' => :'Object',
        :'status' => :'Object',
        :'fields' => :'Object',
        :'signature_level' => :'Object',
        :'signature_authentication_mode' => :'Object',
        :'signature_link' => :'Object',
        :'signature_image_preview' => :'Object',
        :'redirect_urls' => :'Object',
        :'custom_text' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'fields',
        :'signature_authentication_mode',
        :'signature_link',
        :'signature_image_preview',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YousignClient::Signer` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YousignClient::Signer`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'info')
        self.info = attributes[:'info']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.key?(:'signature_level')
        self.signature_level = attributes[:'signature_level']
      else
        self.signature_level = 'electronic_signature'
      end

      if attributes.key?(:'signature_authentication_mode')
        self.signature_authentication_mode = attributes[:'signature_authentication_mode']
      end

      if attributes.key?(:'signature_link')
        self.signature_link = attributes[:'signature_link']
      end

      if attributes.key?(:'signature_image_preview')
        self.signature_image_preview = attributes[:'signature_image_preview']
      end

      if attributes.key?(:'redirect_urls')
        self.redirect_urls = attributes[:'redirect_urls']
      end

      if attributes.key?(:'custom_text')
        self.custom_text = attributes[:'custom_text']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @info.nil?
        invalid_properties.push('invalid value for "info", info cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @fields.nil?
        invalid_properties.push('invalid value for "fields", fields cannot be nil.')
      end

      if @signature_level.nil?
        invalid_properties.push('invalid value for "signature_level", signature_level cannot be nil.')
      end

      if @signature_authentication_mode.nil?
        invalid_properties.push('invalid value for "signature_authentication_mode", signature_authentication_mode cannot be nil.')
      end

      if @signature_link.nil?
        invalid_properties.push('invalid value for "signature_link", signature_link cannot be nil.')
      end

      if @signature_image_preview.nil?
        invalid_properties.push('invalid value for "signature_image_preview", signature_image_preview cannot be nil.')
      end

      if @redirect_urls.nil?
        invalid_properties.push('invalid value for "redirect_urls", redirect_urls cannot be nil.')
      end

      if @custom_text.nil?
        invalid_properties.push('invalid value for "custom_text", custom_text cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @info.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('Object', ['initiated', 'notified', 'verifying', 'consent_given', 'verified', 'verification_failed', 'processing', 'signed'])
      return false unless status_validator.valid?(@status)
      return false if @fields.nil?
      return false if @signature_level.nil?
      signature_level_validator = EnumAttributeValidator.new('Object', ['electronic_signature', 'advanced_electronic_signature', 'electronic_signature_with_qualified_certificate', 'qualified_electronic_signature_mode_1'])
      return false unless signature_level_validator.valid?(@signature_level)
      return false if @signature_authentication_mode.nil?
      signature_authentication_mode_validator = EnumAttributeValidator.new('Object', ['null', 'otp_email', 'otp_sms', 'no_otp'])
      return false unless signature_authentication_mode_validator.valid?(@signature_authentication_mode)
      return false if @signature_link.nil?
      return false if @signature_image_preview.nil?
      return false if @redirect_urls.nil?
      return false if @custom_text.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ['initiated', 'notified', 'verifying', 'consent_given', 'verified', 'verification_failed', 'processing', 'signed'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] signature_level Object to be assigned
    def signature_level=(signature_level)
      validator = EnumAttributeValidator.new('Object', ['electronic_signature', 'advanced_electronic_signature', 'electronic_signature_with_qualified_certificate', 'qualified_electronic_signature_mode_1'])
      unless validator.valid?(signature_level)
        fail ArgumentError, "invalid value for \"signature_level\", must be one of #{validator.allowable_values}."
      end
      @signature_level = signature_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] signature_authentication_mode Object to be assigned
    def signature_authentication_mode=(signature_authentication_mode)
      validator = EnumAttributeValidator.new('Object', ['null', 'otp_email', 'otp_sms', 'no_otp'])
      unless validator.valid?(signature_authentication_mode)
        fail ArgumentError, "invalid value for \"signature_authentication_mode\", must be one of #{validator.allowable_values}."
      end
      @signature_authentication_mode = signature_authentication_mode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          info == o.info &&
          status == o.status &&
          fields == o.fields &&
          signature_level == o.signature_level &&
          signature_authentication_mode == o.signature_authentication_mode &&
          signature_link == o.signature_link &&
          signature_image_preview == o.signature_image_preview &&
          redirect_urls == o.redirect_urls &&
          custom_text == o.custom_text
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, info, status, fields, signature_level, signature_authentication_mode, signature_link, signature_image_preview, redirect_urls, custom_text].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
      when :Boolean
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
        YousignClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
    end  end
end