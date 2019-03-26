=begin
#SCORM Cloud Rest API

#REST API used for SCORM Cloud integrations.

OpenAPI spec version: 2.0 beta

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.3

=end

require 'date'

module RusticiSoftwareCloudV2
  class RuntimeObjectiveSchema
    attr_accessor :id

    attr_accessor :score_scaled

    attr_accessor :score_min

    attr_accessor :score_max

    attr_accessor :score_raw

    attr_accessor :runtime_objective_success_status

    attr_accessor :runtime_objective_completion_status

    attr_accessor :progress_measure

    attr_accessor :description

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
        :'score_scaled' => :'scoreScaled',
        :'score_min' => :'scoreMin',
        :'score_max' => :'scoreMax',
        :'score_raw' => :'scoreRaw',
        :'runtime_objective_success_status' => :'runtimeObjectiveSuccessStatus',
        :'runtime_objective_completion_status' => :'runtimeObjectiveCompletionStatus',
        :'progress_measure' => :'progressMeasure',
        :'description' => :'description'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'score_scaled' => :'String',
        :'score_min' => :'String',
        :'score_max' => :'String',
        :'score_raw' => :'String',
        :'runtime_objective_success_status' => :'String',
        :'runtime_objective_completion_status' => :'String',
        :'progress_measure' => :'String',
        :'description' => :'String'
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

      if attributes.has_key?(:'scoreScaled')
        self.score_scaled = attributes[:'scoreScaled']
      end

      if attributes.has_key?(:'scoreMin')
        self.score_min = attributes[:'scoreMin']
      end

      if attributes.has_key?(:'scoreMax')
        self.score_max = attributes[:'scoreMax']
      end

      if attributes.has_key?(:'scoreRaw')
        self.score_raw = attributes[:'scoreRaw']
      end

      if attributes.has_key?(:'runtimeObjectiveSuccessStatus')
        self.runtime_objective_success_status = attributes[:'runtimeObjectiveSuccessStatus']
      else
        self.runtime_objective_success_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'runtimeObjectiveCompletionStatus')
        self.runtime_objective_completion_status = attributes[:'runtimeObjectiveCompletionStatus']
      else
        self.runtime_objective_completion_status = 'UNKNOWN'
      end

      if attributes.has_key?(:'progressMeasure')
        self.progress_measure = attributes[:'progressMeasure']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      runtime_objective_success_status_validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'PASSED', 'FAILED'])
      return false unless runtime_objective_success_status_validator.valid?(@runtime_objective_success_status)
      runtime_objective_completion_status_validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'COMPLETED', 'INCOMPLETE', 'NOT_ATTEMPTED', 'BROWSED'])
      return false unless runtime_objective_completion_status_validator.valid?(@runtime_objective_completion_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] runtime_objective_success_status Object to be assigned
    def runtime_objective_success_status=(runtime_objective_success_status)
      validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'PASSED', 'FAILED'])
      unless validator.valid?(runtime_objective_success_status)
        fail ArgumentError, 'invalid value for "runtime_objective_success_status", must be one of #{validator.allowable_values}.'
      end
      @runtime_objective_success_status = runtime_objective_success_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] runtime_objective_completion_status Object to be assigned
    def runtime_objective_completion_status=(runtime_objective_completion_status)
      validator = EnumAttributeValidator.new('String', ['UNKNOWN', 'COMPLETED', 'INCOMPLETE', 'NOT_ATTEMPTED', 'BROWSED'])
      unless validator.valid?(runtime_objective_completion_status)
        fail ArgumentError, 'invalid value for "runtime_objective_completion_status", must be one of #{validator.allowable_values}.'
      end
      @runtime_objective_completion_status = runtime_objective_completion_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          score_scaled == o.score_scaled &&
          score_min == o.score_min &&
          score_max == o.score_max &&
          score_raw == o.score_raw &&
          runtime_objective_success_status == o.runtime_objective_success_status &&
          runtime_objective_completion_status == o.runtime_objective_completion_status &&
          progress_measure == o.progress_measure &&
          description == o.description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, score_scaled, score_min, score_max, score_raw, runtime_objective_success_status, runtime_objective_completion_status, progress_measure, description].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
        temp_model = RusticiSoftwareCloudV2.const_get(type).new
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
