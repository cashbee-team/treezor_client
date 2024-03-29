=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module TreezorClient
  class Payinrefund
    attr_accessor :payinrefund_id

    attr_accessor :payinrefund_tag

    attr_accessor :payinrefund_status

    attr_accessor :wallet_id

    attr_accessor :payin_id

    attr_accessor :payinrefund_date

    attr_accessor :amount

    attr_accessor :currency

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :created_date

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :modified_date

    attr_accessor :total_rows

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
        :'payinrefund_id' => :'payinrefundId',
        :'payinrefund_tag' => :'payinrefundTag',
        :'payinrefund_status' => :'payinrefundStatus',
        :'wallet_id' => :'walletId',
        :'payin_id' => :'payinId',
        :'payinrefund_date' => :'payinrefundDate',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'created_date' => :'createdDate',
        :'modified_date' => :'modifiedDate',
        :'total_rows' => :'totalRows'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'payinrefund_id' => :'Integer',
        :'payinrefund_tag' => :'String',
        :'payinrefund_status' => :'String',
        :'wallet_id' => :'Integer',
        :'payin_id' => :'String',
        :'payinrefund_date' => :'Integer',
        :'amount' => :'String',
        :'currency' => :'String',
        :'created_date' => :'String',
        :'modified_date' => :'String',
        :'total_rows' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'payinrefundId')
        self.payinrefund_id = attributes[:'payinrefundId']
      end

      if attributes.has_key?(:'payinrefundTag')
        self.payinrefund_tag = attributes[:'payinrefundTag']
      end

      if attributes.has_key?(:'payinrefundStatus')
        self.payinrefund_status = attributes[:'payinrefundStatus']
      end

      if attributes.has_key?(:'walletId')
        self.wallet_id = attributes[:'walletId']
      end

      if attributes.has_key?(:'payinId')
        self.payin_id = attributes[:'payinId']
      end

      if attributes.has_key?(:'payinrefundDate')
        self.payinrefund_date = attributes[:'payinrefundDate']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'modifiedDate')
        self.modified_date = attributes[:'modifiedDate']
      end

      if attributes.has_key?(:'totalRows')
        self.total_rows = attributes[:'totalRows']
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
      payinrefund_status_validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      return false unless payinrefund_status_validator.valid?(@payinrefund_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payinrefund_status Object to be assigned
    def payinrefund_status=(payinrefund_status)
      validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      unless validator.valid?(payinrefund_status)
        fail ArgumentError, 'invalid value for "payinrefund_status", must be one of #{validator.allowable_values}.'
      end
      @payinrefund_status = payinrefund_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payinrefund_id == o.payinrefund_id &&
          payinrefund_tag == o.payinrefund_tag &&
          payinrefund_status == o.payinrefund_status &&
          wallet_id == o.wallet_id &&
          payin_id == o.payin_id &&
          payinrefund_date == o.payinrefund_date &&
          amount == o.amount &&
          currency == o.currency &&
          created_date == o.created_date &&
          modified_date == o.modified_date &&
          total_rows == o.total_rows
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [payinrefund_id, payinrefund_tag, payinrefund_status, wallet_id, payin_id, payinrefund_date, amount, currency, created_date, modified_date, total_rows].hash
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
