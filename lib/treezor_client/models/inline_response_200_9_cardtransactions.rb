=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module TreezorClient
  class InlineResponse2009Cardtransactions
    attr_accessor :cardtransaction_id

    attr_accessor :card_id

    attr_accessor :wallet_id

    attr_accessor :acquirer_id

    attr_accessor :wallet_currency

    attr_accessor :merchant_id

    attr_accessor :merchant_name

    attr_accessor :merchant_city

    attr_accessor :merchant_country

    attr_accessor :mcc_code

    attr_accessor :payment_local_time

    attr_accessor :public_token

    attr_accessor :payment_amount

    # payment currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
    attr_accessor :payment_currency

    attr_accessor :fees

    attr_accessor :payment_country

    attr_accessor :payment_id

    # Payment status.  | Status | Description | | ------ | -------     | | A | Accepted | | C | Cleared | | I | Declined | | S | Settled | | V | Reversed | 
    attr_accessor :payment_status

    attr_accessor :payment_local_amount

    attr_accessor :pos_cardholder_presence

    attr_accessor :pos_postcode

    attr_accessor :pos_country

    attr_accessor :pos_terminal_id

    attr_accessor :pos_card_presence

    attr_accessor :pan_entry_method

    attr_accessor :authorization_note

    # Authorization response code.  | Code | Description | | ---- | ----------- | | 00 | All Good | | 01 | Refer to card issuer Refer | | 03 | Invalid merchant Decline | | 05 | Do not honour Decline | | 10 | Partial Approval Approve | | 13 | Invalid amount Decline | | 14 | Invalid card number (no such number) Decline | | 17 | Customer Cancellation Decline | | 33 | Expired card (Capture) Decline & Pickup | | 41 | Lost card (Capture) Decline & Pickup | | 43 | Stolen card (Capture) Decline & Pickup | | 51 | Insufficient funds Decline | | 54 | Expired card Decline | | 55 | Incorrect PIN Decline | | 57 | Transaction not permitted to cardholder Decline | | 58 | Transaction not permitted to terminal Decline | | 61 | Exceeds withdrawal amount limit Decline | | 62 | Restricted card Decline | | 63 | Security Violation Decline | | 65 | Exceeds withdrawal frequency limit Decline | | 68 | Response received too late Decline | | 70 | Cardholder to contact issuer Decline | | 75 | Allowable number of PIN tries exceeded Decline | | 82 | Timeout at IEM Decline | | 85 | PIN Unblock request Approve | | 91 | Issuer or switch is inoperative Decline | | N7 | Decline for CVV2 failure Decline | 
    attr_accessor :authorization_response_code

    attr_accessor :authorization_issuer_id

    attr_accessor :authorization_issuer_time

    # Authorization Message Type Identifier  | MTI | Description | | --- | ----| | 01xx | Authorization message | | 04xx | reversal message | | 12xx | Financial message | 
    attr_accessor :authorization_mti

    attr_accessor :authorized_balance

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

    attr_accessor :total_limit_atm_year

    attr_accessor :total_limit_atm_month

    attr_accessor :total_limit_atm_week

    attr_accessor :total_limit_atm_day

    attr_accessor :total_limit_atm_all

    attr_accessor :total_limit_payment_year

    attr_accessor :total_limit_payment_month

    attr_accessor :total_limit_payment_week

    attr_accessor :total_limit_payment_day

    attr_accessor :total_limit_payment_all

    attr_accessor :total_rows

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cardtransaction_id' => :'cardtransactionId',
        :'card_id' => :'cardId',
        :'wallet_id' => :'walletId',
        :'acquirer_id' => :'acquirerId',
        :'wallet_currency' => :'walletCurrency',
        :'merchant_id' => :'merchantId',
        :'merchant_name' => :'merchantName',
        :'merchant_city' => :'merchantCity',
        :'merchant_country' => :'merchantCountry',
        :'mcc_code' => :'mccCode',
        :'payment_local_time' => :'paymentLocalTime',
        :'public_token' => :'publicToken',
        :'payment_amount' => :'paymentAmount',
        :'payment_currency' => :'paymentCurrency',
        :'fees' => :'fees',
        :'payment_country' => :'paymentCountry',
        :'payment_id' => :'paymentId',
        :'payment_status' => :'paymentStatus',
        :'payment_local_amount' => :'paymentLocalAmount',
        :'pos_cardholder_presence' => :'posCardholderPresence',
        :'pos_postcode' => :'posPostcode',
        :'pos_country' => :'posCountry',
        :'pos_terminal_id' => :'posTerminalId',
        :'pos_card_presence' => :'posCardPresence',
        :'pan_entry_method' => :'panEntryMethod',
        :'authorization_note' => :'authorizationNote',
        :'authorization_response_code' => :'authorizationResponseCode',
        :'authorization_issuer_id' => :'authorizationIssuerId',
        :'authorization_issuer_time' => :'authorizationIssuerTime',
        :'authorization_mti' => :'authorizationMti',
        :'authorized_balance' => :'authorizedBalance',
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
        :'total_limit_atm_year' => :'totalLimitAtmYear',
        :'total_limit_atm_month' => :'totalLimitAtmMonth',
        :'total_limit_atm_week' => :'totalLimitAtmWeek',
        :'total_limit_atm_day' => :'totalLimitAtmDay',
        :'total_limit_atm_all' => :'totalLimitAtmAll',
        :'total_limit_payment_year' => :'totalLimitPaymentYear',
        :'total_limit_payment_month' => :'totalLimitPaymentMonth',
        :'total_limit_payment_week' => :'totalLimitPaymentWeek',
        :'total_limit_payment_day' => :'totalLimitPaymentDay',
        :'total_limit_payment_all' => :'totalLimitPaymentAll',
        :'total_rows' => :'totalRows'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cardtransaction_id' => :'Integer',
        :'card_id' => :'Integer',
        :'wallet_id' => :'Integer',
        :'acquirer_id' => :'Integer',
        :'wallet_currency' => :'String',
        :'merchant_id' => :'String',
        :'merchant_name' => :'String',
        :'merchant_city' => :'String',
        :'merchant_country' => :'String',
        :'mcc_code' => :'String',
        :'payment_local_time' => :'String',
        :'public_token' => :'String',
        :'payment_amount' => :'String',
        :'payment_currency' => :'String',
        :'fees' => :'String',
        :'payment_country' => :'String',
        :'payment_id' => :'String',
        :'payment_status' => :'String',
        :'payment_local_amount' => :'String',
        :'pos_cardholder_presence' => :'String',
        :'pos_postcode' => :'String',
        :'pos_country' => :'String',
        :'pos_terminal_id' => :'String',
        :'pos_card_presence' => :'String',
        :'pan_entry_method' => :'String',
        :'authorization_note' => :'String',
        :'authorization_response_code' => :'String',
        :'authorization_issuer_id' => :'String',
        :'authorization_issuer_time' => :'String',
        :'authorization_mti' => :'String',
        :'authorized_balance' => :'String',
        :'limit_atm_year' => :'String',
        :'limit_atm_month' => :'String',
        :'limit_atm_week' => :'String',
        :'limit_atm_day' => :'String',
        :'limit_atm_all' => :'String',
        :'limit_payment_year' => :'String',
        :'limit_payment_month' => :'String',
        :'limit_payment_week' => :'String',
        :'limit_payment_day' => :'String',
        :'limit_payment_all' => :'String',
        :'total_limit_atm_year' => :'String',
        :'total_limit_atm_month' => :'String',
        :'total_limit_atm_week' => :'String',
        :'total_limit_atm_day' => :'String',
        :'total_limit_atm_all' => :'String',
        :'total_limit_payment_year' => :'String',
        :'total_limit_payment_month' => :'String',
        :'total_limit_payment_week' => :'String',
        :'total_limit_payment_day' => :'String',
        :'total_limit_payment_all' => :'String',
        :'total_rows' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'cardtransactionId')
        self.cardtransaction_id = attributes[:'cardtransactionId']
      end

      if attributes.has_key?(:'cardId')
        self.card_id = attributes[:'cardId']
      end

      if attributes.has_key?(:'walletId')
        self.wallet_id = attributes[:'walletId']
      end

      if attributes.has_key?(:'acquirerId')
        self.acquirer_id = attributes[:'acquirerId']
      end

      if attributes.has_key?(:'walletCurrency')
        self.wallet_currency = attributes[:'walletCurrency']
      end

      if attributes.has_key?(:'merchantId')
        self.merchant_id = attributes[:'merchantId']
      end

      if attributes.has_key?(:'merchantName')
        self.merchant_name = attributes[:'merchantName']
      end

      if attributes.has_key?(:'merchantCity')
        self.merchant_city = attributes[:'merchantCity']
      end

      if attributes.has_key?(:'merchantCountry')
        self.merchant_country = attributes[:'merchantCountry']
      end

      if attributes.has_key?(:'mccCode')
        self.mcc_code = attributes[:'mccCode']
      end

      if attributes.has_key?(:'paymentLocalTime')
        self.payment_local_time = attributes[:'paymentLocalTime']
      end

      if attributes.has_key?(:'publicToken')
        self.public_token = attributes[:'publicToken']
      end

      if attributes.has_key?(:'paymentAmount')
        self.payment_amount = attributes[:'paymentAmount']
      end

      if attributes.has_key?(:'paymentCurrency')
        self.payment_currency = attributes[:'paymentCurrency']
      end

      if attributes.has_key?(:'fees')
        self.fees = attributes[:'fees']
      end

      if attributes.has_key?(:'paymentCountry')
        self.payment_country = attributes[:'paymentCountry']
      end

      if attributes.has_key?(:'paymentId')
        self.payment_id = attributes[:'paymentId']
      end

      if attributes.has_key?(:'paymentStatus')
        self.payment_status = attributes[:'paymentStatus']
      end

      if attributes.has_key?(:'paymentLocalAmount')
        self.payment_local_amount = attributes[:'paymentLocalAmount']
      end

      if attributes.has_key?(:'posCardholderPresence')
        self.pos_cardholder_presence = attributes[:'posCardholderPresence']
      end

      if attributes.has_key?(:'posPostcode')
        self.pos_postcode = attributes[:'posPostcode']
      end

      if attributes.has_key?(:'posCountry')
        self.pos_country = attributes[:'posCountry']
      end

      if attributes.has_key?(:'posTerminalId')
        self.pos_terminal_id = attributes[:'posTerminalId']
      end

      if attributes.has_key?(:'posCardPresence')
        self.pos_card_presence = attributes[:'posCardPresence']
      end

      if attributes.has_key?(:'panEntryMethod')
        self.pan_entry_method = attributes[:'panEntryMethod']
      end

      if attributes.has_key?(:'authorizationNote')
        self.authorization_note = attributes[:'authorizationNote']
      end

      if attributes.has_key?(:'authorizationResponseCode')
        self.authorization_response_code = attributes[:'authorizationResponseCode']
      end

      if attributes.has_key?(:'authorizationIssuerId')
        self.authorization_issuer_id = attributes[:'authorizationIssuerId']
      end

      if attributes.has_key?(:'authorizationIssuerTime')
        self.authorization_issuer_time = attributes[:'authorizationIssuerTime']
      end

      if attributes.has_key?(:'authorizationMti')
        self.authorization_mti = attributes[:'authorizationMti']
      end

      if attributes.has_key?(:'authorizedBalance')
        self.authorized_balance = attributes[:'authorizedBalance']
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

      if attributes.has_key?(:'totalLimitAtmYear')
        self.total_limit_atm_year = attributes[:'totalLimitAtmYear']
      end

      if attributes.has_key?(:'totalLimitAtmMonth')
        self.total_limit_atm_month = attributes[:'totalLimitAtmMonth']
      end

      if attributes.has_key?(:'totalLimitAtmWeek')
        self.total_limit_atm_week = attributes[:'totalLimitAtmWeek']
      end

      if attributes.has_key?(:'totalLimitAtmDay')
        self.total_limit_atm_day = attributes[:'totalLimitAtmDay']
      end

      if attributes.has_key?(:'totalLimitAtmAll')
        self.total_limit_atm_all = attributes[:'totalLimitAtmAll']
      end

      if attributes.has_key?(:'totalLimitPaymentYear')
        self.total_limit_payment_year = attributes[:'totalLimitPaymentYear']
      end

      if attributes.has_key?(:'totalLimitPaymentMonth')
        self.total_limit_payment_month = attributes[:'totalLimitPaymentMonth']
      end

      if attributes.has_key?(:'totalLimitPaymentWeek')
        self.total_limit_payment_week = attributes[:'totalLimitPaymentWeek']
      end

      if attributes.has_key?(:'totalLimitPaymentDay')
        self.total_limit_payment_day = attributes[:'totalLimitPaymentDay']
      end

      if attributes.has_key?(:'totalLimitPaymentAll')
        self.total_limit_payment_all = attributes[:'totalLimitPaymentAll']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cardtransaction_id == o.cardtransaction_id &&
          card_id == o.card_id &&
          wallet_id == o.wallet_id &&
          acquirer_id == o.acquirer_id &&
          wallet_currency == o.wallet_currency &&
          merchant_id == o.merchant_id &&
          merchant_name == o.merchant_name &&
          merchant_city == o.merchant_city &&
          merchant_country == o.merchant_country &&
          mcc_code == o.mcc_code &&
          payment_local_time == o.payment_local_time &&
          public_token == o.public_token &&
          payment_amount == o.payment_amount &&
          payment_currency == o.payment_currency &&
          fees == o.fees &&
          payment_country == o.payment_country &&
          payment_id == o.payment_id &&
          payment_status == o.payment_status &&
          payment_local_amount == o.payment_local_amount &&
          pos_cardholder_presence == o.pos_cardholder_presence &&
          pos_postcode == o.pos_postcode &&
          pos_country == o.pos_country &&
          pos_terminal_id == o.pos_terminal_id &&
          pos_card_presence == o.pos_card_presence &&
          pan_entry_method == o.pan_entry_method &&
          authorization_note == o.authorization_note &&
          authorization_response_code == o.authorization_response_code &&
          authorization_issuer_id == o.authorization_issuer_id &&
          authorization_issuer_time == o.authorization_issuer_time &&
          authorization_mti == o.authorization_mti &&
          authorized_balance == o.authorized_balance &&
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
          total_limit_atm_year == o.total_limit_atm_year &&
          total_limit_atm_month == o.total_limit_atm_month &&
          total_limit_atm_week == o.total_limit_atm_week &&
          total_limit_atm_day == o.total_limit_atm_day &&
          total_limit_atm_all == o.total_limit_atm_all &&
          total_limit_payment_year == o.total_limit_payment_year &&
          total_limit_payment_month == o.total_limit_payment_month &&
          total_limit_payment_week == o.total_limit_payment_week &&
          total_limit_payment_day == o.total_limit_payment_day &&
          total_limit_payment_all == o.total_limit_payment_all &&
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
      [cardtransaction_id, card_id, wallet_id, acquirer_id, wallet_currency, merchant_id, merchant_name, merchant_city, merchant_country, mcc_code, payment_local_time, public_token, payment_amount, payment_currency, fees, payment_country, payment_id, payment_status, payment_local_amount, pos_cardholder_presence, pos_postcode, pos_country, pos_terminal_id, pos_card_presence, pan_entry_method, authorization_note, authorization_response_code, authorization_issuer_id, authorization_issuer_time, authorization_mti, authorized_balance, limit_atm_year, limit_atm_month, limit_atm_week, limit_atm_day, limit_atm_all, limit_payment_year, limit_payment_month, limit_payment_week, limit_payment_day, limit_payment_all, total_limit_atm_year, total_limit_atm_month, total_limit_atm_week, total_limit_atm_day, total_limit_atm_all, total_limit_payment_year, total_limit_payment_month, total_limit_payment_week, total_limit_payment_day, total_limit_payment_all, total_rows].hash
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
