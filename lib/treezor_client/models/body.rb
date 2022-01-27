=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module TreezorClient
  class Body
    # Custom data that could be used by caller to search the instance.
    attr_accessor :tag

    # Beneficiary's userId
    attr_accessor :user_id

    # Name choosen by end user to easily recognize the beneficiary.
    attr_accessor :nick_name

    # Beneficiary name, linked to bank account.
    attr_accessor :name

    # Beneficiary address, linked to bank account.
    attr_accessor :address

    # Beneficiary International Bank Account Number. Mandatory if usableForSct is true.
    attr_accessor :iban

    # Beneficiary Bank Identifier Code. Mandatory if usableForSct is true.
    attr_accessor :bic

    # Beneficiary SEPA Creditor Identifier. Mandatory to validate incoming direct debit, useless other wise. Between 8 and 35 caracters. If sddB2bWhitelist or sddCoreBlacklist is provided then sepaCreditorIdentifier is mandatory.
    attr_accessor :sepa_creditor_identifier

    # Each unique mandate reference, with its frequency type, must be explicitely allowed when doing B2B Direct Debit. Furthermore, a mandate not used during more than 36 months will be automatically rejected even if in the white list. If provided, sepaCreditorIdentifier is mandatory.
    attr_accessor :sdd_b2b_whitelist

    # Core Direct Debit are accepted by default. If a Core mandate is to be refused on reception, it has to be added to this list. If wild char * (star) is used instead of a UMR, all Direct Debit from this beneficiary will be refused. If provided, sepaCreditorIdentifier is mandatory.
    attr_accessor :sdd_core_blacklist

    # Indicated if the beneficiary can be used for SEPA Credit Transfer. This field is a conveniant way to filter all beneficiaries for a user that would like to do a Credit Transfer. Indeed, beneficaries are created automatically when receiving a Core Direct Debit and therefor by looking at the list you won't be able to idnetify which beneficary to use on SCT.
    attr_accessor :usable_for_sct

    # List of the object's properties you want to pick up.
    attr_accessor :fields

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tag' => :'tag',
        :'user_id' => :'userId',
        :'nick_name' => :'nickName',
        :'name' => :'name',
        :'address' => :'address',
        :'iban' => :'iban',
        :'bic' => :'bic',
        :'sepa_creditor_identifier' => :'sepaCreditorIdentifier',
        :'sdd_b2b_whitelist' => :'sddB2bWhitelist',
        :'sdd_core_blacklist' => :'sddCoreBlacklist',
        :'usable_for_sct' => :'usableForSct',
        :'fields' => :'fields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tag' => :'String',
        :'user_id' => :'Integer',
        :'nick_name' => :'String',
        :'name' => :'String',
        :'address' => :'String',
        :'iban' => :'String',
        :'bic' => :'String',
        :'sepa_creditor_identifier' => :'String',
        :'sdd_b2b_whitelist' => :'Array<BeneficiariesSddB2bWhitelist>',
        :'sdd_core_blacklist' => :'Array<String>',
        :'usable_for_sct' => :'BOOLEAN',
        :'fields' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'nickName')
        self.nick_name = attributes[:'nickName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'bic')
        self.bic = attributes[:'bic']
      end

      if attributes.has_key?(:'sepaCreditorIdentifier')
        self.sepa_creditor_identifier = attributes[:'sepaCreditorIdentifier']
      end

      if attributes.has_key?(:'sddB2bWhitelist')
        if (value = attributes[:'sddB2bWhitelist']).is_a?(Array)
          self.sdd_b2b_whitelist = value
        end
      end

      if attributes.has_key?(:'sddCoreBlacklist')
        if (value = attributes[:'sddCoreBlacklist']).is_a?(Array)
          self.sdd_core_blacklist = value
        end
      end

      if attributes.has_key?(:'usableForSct')
        self.usable_for_sct = attributes[:'usableForSct']
      else
        self.usable_for_sct = false
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @user_id.nil?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tag == o.tag &&
          user_id == o.user_id &&
          nick_name == o.nick_name &&
          name == o.name &&
          address == o.address &&
          iban == o.iban &&
          bic == o.bic &&
          sepa_creditor_identifier == o.sepa_creditor_identifier &&
          sdd_b2b_whitelist == o.sdd_b2b_whitelist &&
          sdd_core_blacklist == o.sdd_core_blacklist &&
          usable_for_sct == o.usable_for_sct &&
          fields == o.fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tag, user_id, nick_name, name, address, iban, bic, sepa_creditor_identifier, sdd_b2b_whitelist, sdd_core_blacklist, usable_for_sct, fields].hash
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
