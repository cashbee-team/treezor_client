=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module TreezorClient
  class InlineResponse2004Users
    # Representative's first name.
    attr_accessor :firstname

    # Representative's last name.
    attr_accessor :lastname

    # Representative's full names.
    attr_accessor :fullnames

    # Representative's birthdate. Format YYYY-MM-DD
    attr_accessor :birthday

    # Representative's position in company
    attr_accessor :parent_type

    class EnumAttributeValidator
      attr_reader :datatype, :allowable_values

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
        :'firstname'   => :'firstname',
        :'lastname'    => :'lastname',
        :'fullnames'   => :'fullnames',
        :'birthday'    => :'birthday',
        :'parent_type' => :'parentType',
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'firstname'   => :'String',
        :'lastname'    => :'String',
        :'fullnames'   => :'String',
        :'birthday'    => :'String',
        :'parent_type' => :'String',
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = { })
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({ }) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'fullnames')
        self.fullnames = attributes[:'fullnames']
      end

      if attributes.has_key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.has_key?(:'parentType')
        self.parent_type = attributes[:'parentType']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      Array.new
      
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      parent_type_validator = EnumAttributeValidator.new('String', 
        ['Honorary president', 'Not associated manager', 'President of the control council', 'Member of the management board', 'Member of the supervisory council', 'Member of the control committee', 'Partner', 
'Management advisor ', 'Deputy managing director', 'Vice-president of the management board', 'Vice-president of the supervisory council', 'Developer', 'Other manager', 'Receiver', 'Authorized agent', 'Person in charge abroad', 'Representative in France', 'Member of the management council', 'Member of the control council', 'Treasurer', 'Secretary', 'Member', 'Administrative director', 'Sales director', 'Financial director', 'Chief Technical Officer', 'General secretary', 'Chief accountant', 'Guardian', 'Plan commissioner ', 'Management agent', 'Concordat commissioner', 'Representative of the creditors', 'Judicial representative', 'Substitute judge-commissioner', 'Judge-commissioner', 'Receiver/representative of the creditors', 'Conciliator', 'Auditor', 'Statutory auditor', 'Supervision commissioner', 'Deputy auditor', 'Spouse-associate', 'Accounts controller', 'Censor', 'Chief Executive Officer', 'President', 'Chairman of the Board', 'Governor', 'Deputy governor', 'Person having the power to usually involve the company', 'Manager', 'Co-managing partner', 'Managing director', 'Managing director not administrator', 'Unique managing director', 'Delegated managing director', 'Vice-president', 'Administrator', 'Delegated administrator', 'President of the management board', 'President of the supervisory council', 'Active partner', 'Management controller', 'Liquidator', 'Temporary administrator', 'Representative in France of a foreign company', 'Personal business manager'])
      return false unless parent_type_validator.valid?(@parent_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] parent_type Object to be assigned
    def parent_type=(parent_type)
      validator = EnumAttributeValidator.new('String', 
        ['Honorary president', 'Not associated manager', 'President of the control council', 'Member of the management board', 'Member of the supervisory council', 'Member of the control committee', 'Partner', 
'Management advisor ', 'Deputy managing director', 'Vice-president of the management board', 'Vice-president of the supervisory council', 'Developer', 'Other manager', 'Receiver', 'Authorized agent', 'Person in charge abroad', 'Representative in France', 'Member of the management council', 'Member of the control council', 'Treasurer', 'Secretary', 'Member', 'Administrative director', 'Sales director', 'Financial director', 'Chief Technical Officer', 'General secretary', 'Chief accountant', 'Guardian', 'Plan commissioner ', 'Management agent', 'Concordat commissioner', 'Representative of the creditors', 'Judicial representative', 'Substitute judge-commissioner', 'Judge-commissioner', 'Receiver/representative of the creditors', 'Conciliator', 'Auditor', 'Statutory auditor', 'Supervision commissioner', 'Deputy auditor', 'Spouse-associate', 'Accounts controller', 'Censor', 'Chief Executive Officer', 'President', 'Chairman of the Board', 'Governor', 'Deputy governor', 'Person having the power to usually involve the company', 'Manager', 'Co-managing partner', 'Managing director', 'Managing director not administrator', 'Unique managing director', 'Delegated managing director', 'Vice-president', 'Administrator', 'Delegated administrator', 'President of the management board', 'President of the supervisory council', 'Active partner', 'Management controller', 'Liquidator', 'Temporary administrator', 'Representative in France of a foreign company', 'Personal business manager'])
      unless validator.valid?(parent_type)
        fail ArgumentError, 'invalid value for "parent_type", must be one of #{validator.allowable_values}.'
      end
      @parent_type = parent_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          fullnames == o.fullnames &&
          birthday == o.birthday &&
          parent_type == o.parent_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [firstname, lastname, fullnames, birthday, parent_type].hash
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
        { }.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = TreezorClient.const_get(type).new
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
      hash = { }
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
        { }.tap do |hash|
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
