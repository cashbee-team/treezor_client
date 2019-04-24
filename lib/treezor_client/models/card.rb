=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'date'

module TreezorClient
  class Card
    attr_accessor :card_id

    attr_accessor :user_id

    attr_accessor :wallet_id

    attr_accessor :wallet_cardtransaction_id

    attr_accessor :mcc_restriction_group_id

    attr_accessor :merchant_restriction_group_id

    attr_accessor :country_restriction_group_id

    attr_accessor :public_token

    attr_accessor :card_tag

    attr_accessor :status_code

    attr_accessor :is_live

    attr_accessor :pin_try_exceeds

    attr_accessor :masked_pan

    attr_accessor :embossed_name

    # Date YYYY-MM-DD
    attr_accessor :expiry_date

    attr_accessor :cvv

    # Date YYYY-MM-DD
    attr_accessor :start_date

    # Date YYYY-MM-DD
    attr_accessor :end_date

    attr_accessor :country_code

    attr_accessor :currency_code

    attr_accessor :lang

    attr_accessor :delivery_title

    attr_accessor :delivery_lastname

    attr_accessor :delivery_firstname

    attr_accessor :delivery_address1

    attr_accessor :delivery_address2

    attr_accessor :delivery_address3

    attr_accessor :delivery_city

    attr_accessor :delivery_postcode

    attr_accessor :delivery_country

    attr_accessor :mobile_sent

    attr_accessor :limits_group

    attr_accessor :perms_group

    attr_accessor :card_design

    attr_accessor :virtual_converted

    attr_accessor :option_atm

    attr_accessor :option_foreign

    attr_accessor :option_online

    attr_accessor :option_nfc

    attr_accessor :limit_atm_year

    attr_accessor :limit_atm_month

    attr_accessor :limit_atm_week

    attr_accessor :limit_atm_day

    attr_accessor :limit_atm_all

    attr_accessor :limit_payment_year

    attr_accessor :limit_payment_month

    attr_accessor :limit_payment_week

    attr_accessor :limit_payment_day

    attr_accessor :limit_payment_all

    attr_accessor :payment_daily_limit

    attr_accessor :total_atm_year

    attr_accessor :total_atm_month

    attr_accessor :total_atm_week

    attr_accessor :total_atm_day

    attr_accessor :total_atm_all

    attr_accessor :total_payment_year

    attr_accessor :total_payment_month

    attr_accessor :total_payment_week

    attr_accessor :total_payment_day

    attr_accessor :total_payment_all

    attr_accessor :created_by

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :created_date

    attr_accessor :modified_by

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
        :'card_id' => :'cardId',
        :'user_id' => :'userId',
        :'wallet_id' => :'walletId',
        :'wallet_cardtransaction_id' => :'walletCardtransactionId',
        :'mcc_restriction_group_id' => :'mccRestrictionGroupId',
        :'merchant_restriction_group_id' => :'merchantRestrictionGroupId',
        :'country_restriction_group_id' => :'countryRestrictionGroupId',
        :'public_token' => :'publicToken',
        :'card_tag' => :'cardTag',
        :'status_code' => :'statusCode',
        :'is_live' => :'isLive',
        :'pin_try_exceeds' => :'pinTryExceeds',
        :'masked_pan' => :'maskedPan',
        :'embossed_name' => :'embossedName',
        :'expiry_date' => :'expiryDate',
        :'cvv' => :'CVV',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'country_code' => :'countryCode',
        :'currency_code' => :'currencyCode',
        :'lang' => :'lang',
        :'delivery_title' => :'deliveryTitle',
        :'delivery_lastname' => :'deliveryLastname',
        :'delivery_firstname' => :'deliveryFirstname',
        :'delivery_address1' => :'deliveryAddress1',
        :'delivery_address2' => :'deliveryAddress2',
        :'delivery_address3' => :'deliveryAddress3',
        :'delivery_city' => :'deliveryCity',
        :'delivery_postcode' => :'deliveryPostcode',
        :'delivery_country' => :'deliveryCountry',
        :'mobile_sent' => :'mobileSent',
        :'limits_group' => :'limitsGroup',
        :'perms_group' => :'permsGroup',
        :'card_design' => :'cardDesign',
        :'virtual_converted' => :'virtualConverted',
        :'option_atm' => :'optionAtm',
        :'option_foreign' => :'optionForeign',
        :'option_online' => :'optionOnline',
        :'option_nfc' => :'optionNfc',
        :'limit_atm_year' => :'limitAtmYear',
        :'limit_atm_month' => :'limitAtmMonth',
        :'limit_atm_week' => :'limitAtmWeek',
        :'limit_atm_day' => :'limitAtmDay',
        :'limit_atm_all' => :'limitAtmAll',
        :'limit_payment_year' => :'limitPaymentYear',
        :'limit_payment_month' => :'limitPaymentMonth',
        :'limit_payment_week' => :'limitPaymentWeek',
        :'limit_payment_day' => :'limitPaymentDay',
        :'limit_payment_all' => :'limitPaymentAll',
        :'payment_daily_limit' => :'paymentDailyLimit',
        :'total_atm_year' => :'totalAtmYear',
        :'total_atm_month' => :'totalAtmMonth',
        :'total_atm_week' => :'totalAtmWeek',
        :'total_atm_day' => :'totalAtmDay',
        :'total_atm_all' => :'totalAtmAll',
        :'total_payment_year' => :'totalPaymentYear',
        :'total_payment_month' => :'totalPaymentMonth',
        :'total_payment_week' => :'totalPaymentWeek',
        :'total_payment_day' => :'totalPaymentDay',
        :'total_payment_all' => :'totalPaymentAll',
        :'created_by' => :'createdBy',
        :'created_date' => :'createdDate',
        :'modified_by' => :'modifiedBy',
        :'modified_date' => :'modifiedDate',
        :'total_rows' => :'totalRows'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'card_id' => :'Integer',
        :'user_id' => :'Integer',
        :'wallet_id' => :'Integer',
        :'wallet_cardtransaction_id' => :'Integer',
        :'mcc_restriction_group_id' => :'Integer',
        :'merchant_restriction_group_id' => :'Integer',
        :'country_restriction_group_id' => :'Integer',
        :'public_token' => :'String',
        :'card_tag' => :'String',
        :'status_code' => :'String',
        :'is_live' => :'Integer',
        :'pin_try_exceeds' => :'Integer',
        :'masked_pan' => :'Integer',
        :'embossed_name' => :'String',
        :'expiry_date' => :'String',
        :'cvv' => :'String',
        :'start_date' => :'String',
        :'end_date' => :'String',
        :'country_code' => :'String',
        :'currency_code' => :'String',
        :'lang' => :'String',
        :'delivery_title' => :'String',
        :'delivery_lastname' => :'String',
        :'delivery_firstname' => :'String',
        :'delivery_address1' => :'String',
        :'delivery_address2' => :'String',
        :'delivery_address3' => :'String',
        :'delivery_city' => :'String',
        :'delivery_postcode' => :'String',
        :'delivery_country' => :'String',
        :'mobile_sent' => :'String',
        :'limits_group' => :'String',
        :'perms_group' => :'String',
        :'card_design' => :'String',
        :'virtual_converted' => :'Integer',
        :'option_atm' => :'Integer',
        :'option_foreign' => :'Integer',
        :'option_online' => :'Integer',
        :'option_nfc' => :'Integer',
        :'limit_atm_year' => :'Integer',
        :'limit_atm_month' => :'Integer',
        :'limit_atm_week' => :'Integer',
        :'limit_atm_day' => :'Integer',
        :'limit_atm_all' => :'Integer',
        :'limit_payment_year' => :'Integer',
        :'limit_payment_month' => :'Integer',
        :'limit_payment_week' => :'Integer',
        :'limit_payment_day' => :'Integer',
        :'limit_payment_all' => :'Integer',
        :'payment_daily_limit' => :'Float',
        :'total_atm_year' => :'Integer',
        :'total_atm_month' => :'Integer',
        :'total_atm_week' => :'Integer',
        :'total_atm_day' => :'Integer',
        :'total_atm_all' => :'Integer',
        :'total_payment_year' => :'Integer',
        :'total_payment_month' => :'Integer',
        :'total_payment_week' => :'Integer',
        :'total_payment_day' => :'Integer',
        :'total_payment_all' => :'Integer',
        :'created_by' => :'Integer',
        :'created_date' => :'String',
        :'modified_by' => :'Integer',
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

      if attributes.has_key?(:'cardId')
        self.card_id = attributes[:'cardId']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'walletId')
        self.wallet_id = attributes[:'walletId']
      end

      if attributes.has_key?(:'walletCardtransactionId')
        self.wallet_cardtransaction_id = attributes[:'walletCardtransactionId']
      end

      if attributes.has_key?(:'mccRestrictionGroupId')
        self.mcc_restriction_group_id = attributes[:'mccRestrictionGroupId']
      end

      if attributes.has_key?(:'merchantRestrictionGroupId')
        self.merchant_restriction_group_id = attributes[:'merchantRestrictionGroupId']
      end

      if attributes.has_key?(:'countryRestrictionGroupId')
        self.country_restriction_group_id = attributes[:'countryRestrictionGroupId']
      end

      if attributes.has_key?(:'publicToken')
        self.public_token = attributes[:'publicToken']
      end

      if attributes.has_key?(:'cardTag')
        self.card_tag = attributes[:'cardTag']
      end

      if attributes.has_key?(:'statusCode')
        self.status_code = attributes[:'statusCode']
      end

      if attributes.has_key?(:'isLive')
        self.is_live = attributes[:'isLive']
      end

      if attributes.has_key?(:'pinTryExceeds')
        self.pin_try_exceeds = attributes[:'pinTryExceeds']
      end

      if attributes.has_key?(:'maskedPan')
        self.masked_pan = attributes[:'maskedPan']
      end

      if attributes.has_key?(:'embossedName')
        self.embossed_name = attributes[:'embossedName']
      end

      if attributes.has_key?(:'expiryDate')
        self.expiry_date = attributes[:'expiryDate']
      end

      if attributes.has_key?(:'CVV')
        self.cvv = attributes[:'CVV']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'countryCode')
        self.country_code = attributes[:'countryCode']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'lang')
        self.lang = attributes[:'lang']
      end

      if attributes.has_key?(:'deliveryTitle')
        self.delivery_title = attributes[:'deliveryTitle']
      end

      if attributes.has_key?(:'deliveryLastname')
        self.delivery_lastname = attributes[:'deliveryLastname']
      end

      if attributes.has_key?(:'deliveryFirstname')
        self.delivery_firstname = attributes[:'deliveryFirstname']
      end

      if attributes.has_key?(:'deliveryAddress1')
        self.delivery_address1 = attributes[:'deliveryAddress1']
      end

      if attributes.has_key?(:'deliveryAddress2')
        self.delivery_address2 = attributes[:'deliveryAddress2']
      end

      if attributes.has_key?(:'deliveryAddress3')
        self.delivery_address3 = attributes[:'deliveryAddress3']
      end

      if attributes.has_key?(:'deliveryCity')
        self.delivery_city = attributes[:'deliveryCity']
      end

      if attributes.has_key?(:'deliveryPostcode')
        self.delivery_postcode = attributes[:'deliveryPostcode']
      end

      if attributes.has_key?(:'deliveryCountry')
        self.delivery_country = attributes[:'deliveryCountry']
      end

      if attributes.has_key?(:'mobileSent')
        self.mobile_sent = attributes[:'mobileSent']
      end

      if attributes.has_key?(:'limitsGroup')
        self.limits_group = attributes[:'limitsGroup']
      end

      if attributes.has_key?(:'permsGroup')
        self.perms_group = attributes[:'permsGroup']
      end

      if attributes.has_key?(:'cardDesign')
        self.card_design = attributes[:'cardDesign']
      end

      if attributes.has_key?(:'virtualConverted')
        self.virtual_converted = attributes[:'virtualConverted']
      end

      if attributes.has_key?(:'optionAtm')
        self.option_atm = attributes[:'optionAtm']
      end

      if attributes.has_key?(:'optionForeign')
        self.option_foreign = attributes[:'optionForeign']
      end

      if attributes.has_key?(:'optionOnline')
        self.option_online = attributes[:'optionOnline']
      end

      if attributes.has_key?(:'optionNfc')
        self.option_nfc = attributes[:'optionNfc']
      end

      if attributes.has_key?(:'limitAtmYear')
        self.limit_atm_year = attributes[:'limitAtmYear']
      end

      if attributes.has_key?(:'limitAtmMonth')
        self.limit_atm_month = attributes[:'limitAtmMonth']
      end

      if attributes.has_key?(:'limitAtmWeek')
        self.limit_atm_week = attributes[:'limitAtmWeek']
      end

      if attributes.has_key?(:'limitAtmDay')
        self.limit_atm_day = attributes[:'limitAtmDay']
      end

      if attributes.has_key?(:'limitAtmAll')
        self.limit_atm_all = attributes[:'limitAtmAll']
      end

      if attributes.has_key?(:'limitPaymentYear')
        self.limit_payment_year = attributes[:'limitPaymentYear']
      end

      if attributes.has_key?(:'limitPaymentMonth')
        self.limit_payment_month = attributes[:'limitPaymentMonth']
      end

      if attributes.has_key?(:'limitPaymentWeek')
        self.limit_payment_week = attributes[:'limitPaymentWeek']
      end

      if attributes.has_key?(:'limitPaymentDay')
        self.limit_payment_day = attributes[:'limitPaymentDay']
      end

      if attributes.has_key?(:'limitPaymentAll')
        self.limit_payment_all = attributes[:'limitPaymentAll']
      end

      if attributes.has_key?(:'paymentDailyLimit')
        self.payment_daily_limit = attributes[:'paymentDailyLimit']
      end

      if attributes.has_key?(:'totalAtmYear')
        self.total_atm_year = attributes[:'totalAtmYear']
      end

      if attributes.has_key?(:'totalAtmMonth')
        self.total_atm_month = attributes[:'totalAtmMonth']
      end

      if attributes.has_key?(:'totalAtmWeek')
        self.total_atm_week = attributes[:'totalAtmWeek']
      end

      if attributes.has_key?(:'totalAtmDay')
        self.total_atm_day = attributes[:'totalAtmDay']
      end

      if attributes.has_key?(:'totalAtmAll')
        self.total_atm_all = attributes[:'totalAtmAll']
      end

      if attributes.has_key?(:'totalPaymentYear')
        self.total_payment_year = attributes[:'totalPaymentYear']
      end

      if attributes.has_key?(:'totalPaymentMonth')
        self.total_payment_month = attributes[:'totalPaymentMonth']
      end

      if attributes.has_key?(:'totalPaymentWeek')
        self.total_payment_week = attributes[:'totalPaymentWeek']
      end

      if attributes.has_key?(:'totalPaymentDay')
        self.total_payment_day = attributes[:'totalPaymentDay']
      end

      if attributes.has_key?(:'totalPaymentAll')
        self.total_payment_all = attributes[:'totalPaymentAll']
      end

      if attributes.has_key?(:'createdBy')
        self.created_by = attributes[:'createdBy']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'modifiedBy')
        self.modified_by = attributes[:'modifiedBy']
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
      status_code_validator = EnumAttributeValidator.new('String', ['UNLOCK', 'LOCK', 'LOST', 'STOLEN'])
      return false unless status_code_validator.valid?(@status_code)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_code Object to be assigned
    def status_code=(status_code)
      validator = EnumAttributeValidator.new('String', ['UNLOCK', 'LOCK', 'LOST', 'STOLEN'])
      unless validator.valid?(status_code)
        fail ArgumentError, 'invalid value for "status_code", must be one of #{validator.allowable_values}.'
      end
      @status_code = status_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          card_id == o.card_id &&
          user_id == o.user_id &&
          wallet_id == o.wallet_id &&
          wallet_cardtransaction_id == o.wallet_cardtransaction_id &&
          mcc_restriction_group_id == o.mcc_restriction_group_id &&
          merchant_restriction_group_id == o.merchant_restriction_group_id &&
          country_restriction_group_id == o.country_restriction_group_id &&
          public_token == o.public_token &&
          card_tag == o.card_tag &&
          status_code == o.status_code &&
          is_live == o.is_live &&
          pin_try_exceeds == o.pin_try_exceeds &&
          masked_pan == o.masked_pan &&
          embossed_name == o.embossed_name &&
          expiry_date == o.expiry_date &&
          cvv == o.cvv &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          country_code == o.country_code &&
          currency_code == o.currency_code &&
          lang == o.lang &&
          delivery_title == o.delivery_title &&
          delivery_lastname == o.delivery_lastname &&
          delivery_firstname == o.delivery_firstname &&
          delivery_address1 == o.delivery_address1 &&
          delivery_address2 == o.delivery_address2 &&
          delivery_address3 == o.delivery_address3 &&
          delivery_city == o.delivery_city &&
          delivery_postcode == o.delivery_postcode &&
          delivery_country == o.delivery_country &&
          mobile_sent == o.mobile_sent &&
          limits_group == o.limits_group &&
          perms_group == o.perms_group &&
          card_design == o.card_design &&
          virtual_converted == o.virtual_converted &&
          option_atm == o.option_atm &&
          option_foreign == o.option_foreign &&
          option_online == o.option_online &&
          option_nfc == o.option_nfc &&
          limit_atm_year == o.limit_atm_year &&
          limit_atm_month == o.limit_atm_month &&
          limit_atm_week == o.limit_atm_week &&
          limit_atm_day == o.limit_atm_day &&
          limit_atm_all == o.limit_atm_all &&
          limit_payment_year == o.limit_payment_year &&
          limit_payment_month == o.limit_payment_month &&
          limit_payment_week == o.limit_payment_week &&
          limit_payment_day == o.limit_payment_day &&
          limit_payment_all == o.limit_payment_all &&
          payment_daily_limit == o.payment_daily_limit &&
          total_atm_year == o.total_atm_year &&
          total_atm_month == o.total_atm_month &&
          total_atm_week == o.total_atm_week &&
          total_atm_day == o.total_atm_day &&
          total_atm_all == o.total_atm_all &&
          total_payment_year == o.total_payment_year &&
          total_payment_month == o.total_payment_month &&
          total_payment_week == o.total_payment_week &&
          total_payment_day == o.total_payment_day &&
          total_payment_all == o.total_payment_all &&
          created_by == o.created_by &&
          created_date == o.created_date &&
          modified_by == o.modified_by &&
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
      [card_id, user_id, wallet_id, wallet_cardtransaction_id, mcc_restriction_group_id, merchant_restriction_group_id, country_restriction_group_id, public_token, card_tag, status_code, is_live, pin_try_exceeds, masked_pan, embossed_name, expiry_date, cvv, start_date, end_date, country_code, currency_code, lang, delivery_title, delivery_lastname, delivery_firstname, delivery_address1, delivery_address2, delivery_address3, delivery_city, delivery_postcode, delivery_country, mobile_sent, limits_group, perms_group, card_design, virtual_converted, option_atm, option_foreign, option_online, option_nfc, limit_atm_year, limit_atm_month, limit_atm_week, limit_atm_day, limit_atm_all, limit_payment_year, limit_payment_month, limit_payment_week, limit_payment_day, limit_payment_all, payment_daily_limit, total_atm_year, total_atm_month, total_atm_week, total_atm_day, total_atm_all, total_payment_year, total_payment_month, total_payment_week, total_payment_day, total_payment_all, created_by, created_date, modified_by, modified_date, total_rows].hash
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
