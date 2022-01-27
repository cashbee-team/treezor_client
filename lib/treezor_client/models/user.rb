=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module TreezorClient
  class User
    attr_accessor :user_id

    attr_accessor :user_type_id

    attr_accessor :user_status

    attr_accessor :user_tag

    attr_accessor :parent_user_id

    attr_accessor :parent_type

    attr_accessor :controlling_person_type

    attr_accessor :employee_type

    attr_accessor :specified_us_person

    attr_accessor :title

    attr_accessor :firstname

    attr_accessor :lastname

    attr_accessor :middle_names

    attr_accessor :birthday

    attr_accessor :email

    attr_accessor :address1

    attr_accessor :address2

    attr_accessor :postcode

    attr_accessor :city

    attr_accessor :state

    attr_accessor :country

    attr_accessor :country_name

    attr_accessor :phone

    attr_accessor :mobile

    attr_accessor :nationality

    attr_accessor :nationality_other

    attr_accessor :place_of_birth

    attr_accessor :birth_country

    attr_accessor :occupation

    attr_accessor :income_range

    attr_accessor :legal_name

    attr_accessor :legal_name_embossed

    attr_accessor :legal_registration_number

    attr_accessor :legal_tva_number

    # Date YYYY-MM-DD
    attr_accessor :legal_registration_date

    attr_accessor :legal_form

    attr_accessor :legal_share_capital

    attr_accessor :legal_sector

    attr_accessor :legal_annual_turn_over

    attr_accessor :legal_net_income_range

    attr_accessor :legal_number_of_employee_range

    attr_accessor :effective_beneficiary

    # | Value | Description | |----|----| | 0 | NONE | | 1 | LIGHT | | 2 | REGULAR | | 4 | REFUSED | 
    attr_accessor :kyc_level

    # | Value | Description | |----|----| | 0 | NONE | | 1 | PENDING | | 2 | VALIDATED | | 3 | REFUSED | 
    attr_accessor :kyc_review

    attr_accessor :kyc_review_comment

    attr_accessor :is_freezed

    attr_accessor :language

    attr_accessor :opt_in_mailing

    attr_accessor :sepa_creditor_identifier

    attr_accessor :tax_number

    attr_accessor :tax_residence

    attr_accessor :position

    attr_accessor :personal_assets

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :created_date

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :modified_date

    attr_accessor :wallet_count

    attr_accessor :payin_count

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
        :'user_id' => :'userId',
        :'user_type_id' => :'userTypeId',
        :'user_status' => :'userStatus',
        :'user_tag' => :'userTag',
        :'parent_user_id' => :'parentUserId',
        :'parent_type' => :'parentType',
        :'controlling_person_type' => :'controllingPersonType',
        :'employee_type' => :'employeeType',
        :'specified_us_person' => :'specifiedUSPerson',
        :'title' => :'title',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'middle_names' => :'middleNames',
        :'birthday' => :'birthday',
        :'email' => :'email',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'postcode' => :'postcode',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'country_name' => :'countryName',
        :'phone' => :'phone',
        :'mobile' => :'mobile',
        :'nationality' => :'nationality',
        :'nationality_other' => :'nationalityOther',
        :'place_of_birth' => :'placeOfBirth',
        :'birth_country' => :'birthCountry',
        :'occupation' => :'occupation',
        :'income_range' => :'incomeRange',
        :'legal_name' => :'legalName',
        :'legal_name_embossed' => :'legalNameEmbossed',
        :'legal_registration_number' => :'legalRegistrationNumber',
        :'legal_tva_number' => :'legalTvaNumber',
        :'legal_registration_date' => :'legalRegistrationDate',
        :'legal_form' => :'legalForm',
        :'legal_share_capital' => :'legalShareCapital',
        :'legal_sector' => :'legalSector',
        :'legal_annual_turn_over' => :'legalAnnualTurnOver',
        :'legal_net_income_range' => :'legalNetIncomeRange',
        :'legal_number_of_employee_range' => :'legalNumberOfEmployeeRange',
        :'effective_beneficiary' => :'effectiveBeneficiary',
        :'kyc_level' => :'kycLevel',
        :'kyc_review' => :'kycReview',
        :'kyc_review_comment' => :'kycReviewComment',
        :'is_freezed' => :'isFreezed',
        :'language' => :'language',
        :'opt_in_mailing' => :'optInMailing',
        :'sepa_creditor_identifier' => :'sepaCreditorIdentifier',
        :'tax_number' => :'taxNumber',
        :'tax_residence' => :'taxResidence',
        :'position' => :'position',
        :'personal_assets' => :'personalAssets',
        :'created_date' => :'createdDate',
        :'modified_date' => :'modifiedDate',
        :'wallet_count' => :'walletCount',
        :'payin_count' => :'payinCount',
        :'total_rows' => :'totalRows'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'user_id' => :'Integer',
        :'user_type_id' => :'Integer',
        :'user_status' => :'String',
        :'user_tag' => :'String',
        :'parent_user_id' => :'Integer',
        :'parent_type' => :'String',
        :'controlling_person_type' => :'Integer',
        :'employee_type' => :'Integer',
        :'specified_us_person' => :'Integer',
        :'title' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'middle_names' => :'String',
        :'birthday' => :'String',
        :'email' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'postcode' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'country_name' => :'String',
        :'phone' => :'String',
        :'mobile' => :'String',
        :'nationality' => :'String',
        :'nationality_other' => :'String',
        :'place_of_birth' => :'String',
        :'birth_country' => :'String',
        :'occupation' => :'String',
        :'income_range' => :'String',
        :'legal_name' => :'String',
        :'legal_name_embossed' => :'String',
        :'legal_registration_number' => :'String',
        :'legal_tva_number' => :'String',
        :'legal_registration_date' => :'String',
        :'legal_form' => :'String',
        :'legal_share_capital' => :'Integer',
        :'legal_sector' => :'String',
        :'legal_annual_turn_over' => :'String',
        :'legal_net_income_range' => :'String',
        :'legal_number_of_employee_range' => :'String',
        :'effective_beneficiary' => :'Integer',
        :'kyc_level' => :'Integer',
        :'kyc_review' => :'Integer',
        :'kyc_review_comment' => :'String',
        :'is_freezed' => :'Integer',
        :'language' => :'String',
        :'opt_in_mailing' => :'Integer',
        :'sepa_creditor_identifier' => :'String',
        :'tax_number' => :'String',
        :'tax_residence' => :'String',
        :'position' => :'String',
        :'personal_assets' => :'String',
        :'created_date' => :'String',
        :'modified_date' => :'String',
        :'wallet_count' => :'Integer',
        :'payin_count' => :'Integer',
        :'total_rows' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'userTypeId')
        self.user_type_id = attributes[:'userTypeId']
      end

      if attributes.has_key?(:'userStatus')
        self.user_status = attributes[:'userStatus']
      end

      if attributes.has_key?(:'userTag')
        self.user_tag = attributes[:'userTag']
      end

      if attributes.has_key?(:'parentUserId')
        self.parent_user_id = attributes[:'parentUserId']
      end

      if attributes.has_key?(:'parentType')
        self.parent_type = attributes[:'parentType']
      end

      if attributes.has_key?(:'controllingPersonType')
        self.controlling_person_type = attributes[:'controllingPersonType']
      end

      if attributes.has_key?(:'employeeType')
        self.employee_type = attributes[:'employeeType']
      end

      if attributes.has_key?(:'specifiedUSPerson')
        self.specified_us_person = attributes[:'specifiedUSPerson']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'middleNames')
        self.middle_names = attributes[:'middleNames']
      end

      if attributes.has_key?(:'birthday')
        self.birthday = attributes[:'birthday']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'postcode')
        self.postcode = attributes[:'postcode']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'countryName')
        self.country_name = attributes[:'countryName']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.has_key?(:'nationality')
        self.nationality = attributes[:'nationality']
      end

      if attributes.has_key?(:'nationalityOther')
        self.nationality_other = attributes[:'nationalityOther']
      end

      if attributes.has_key?(:'placeOfBirth')
        self.place_of_birth = attributes[:'placeOfBirth']
      end

      if attributes.has_key?(:'birthCountry')
        self.birth_country = attributes[:'birthCountry']
      end

      if attributes.has_key?(:'occupation')
        self.occupation = attributes[:'occupation']
      end

      if attributes.has_key?(:'incomeRange')
        self.income_range = attributes[:'incomeRange']
      end

      if attributes.has_key?(:'legalName')
        self.legal_name = attributes[:'legalName']
      end

      if attributes.has_key?(:'legalNameEmbossed')
        self.legal_name_embossed = attributes[:'legalNameEmbossed']
      end

      if attributes.has_key?(:'legalRegistrationNumber')
        self.legal_registration_number = attributes[:'legalRegistrationNumber']
      end

      if attributes.has_key?(:'legalTvaNumber')
        self.legal_tva_number = attributes[:'legalTvaNumber']
      end

      if attributes.has_key?(:'legalRegistrationDate')
        self.legal_registration_date = attributes[:'legalRegistrationDate']
      end

      if attributes.has_key?(:'legalForm')
        self.legal_form = attributes[:'legalForm']
      end

      if attributes.has_key?(:'legalShareCapital')
        self.legal_share_capital = attributes[:'legalShareCapital']
      end

      if attributes.has_key?(:'legalSector')
        self.legal_sector = attributes[:'legalSector']
      end

      if attributes.has_key?(:'legalAnnualTurnOver')
        self.legal_annual_turn_over = attributes[:'legalAnnualTurnOver']
      end

      if attributes.has_key?(:'legalNetIncomeRange')
        self.legal_net_income_range = attributes[:'legalNetIncomeRange']
      end

      if attributes.has_key?(:'legalNumberOfEmployeeRange')
        self.legal_number_of_employee_range = attributes[:'legalNumberOfEmployeeRange']
      end

      if attributes.has_key?(:'effectiveBeneficiary')
        self.effective_beneficiary = attributes[:'effectiveBeneficiary']
      end

      if attributes.has_key?(:'kycLevel')
        self.kyc_level = attributes[:'kycLevel']
      end

      if attributes.has_key?(:'kycReview')
        self.kyc_review = attributes[:'kycReview']
      end

      if attributes.has_key?(:'kycReviewComment')
        self.kyc_review_comment = attributes[:'kycReviewComment']
      end

      if attributes.has_key?(:'isFreezed')
        self.is_freezed = attributes[:'isFreezed']
      end

      if attributes.has_key?(:'language')
        self.language = attributes[:'language']
      end

      if attributes.has_key?(:'optInMailing')
        self.opt_in_mailing = attributes[:'optInMailing']
      end

      if attributes.has_key?(:'sepaCreditorIdentifier')
        self.sepa_creditor_identifier = attributes[:'sepaCreditorIdentifier']
      end

      if attributes.has_key?(:'taxNumber')
        self.tax_number = attributes[:'taxNumber']
      end

      if attributes.has_key?(:'taxResidence')
        self.tax_residence = attributes[:'taxResidence']
      end

      if attributes.has_key?(:'position')
        self.position = attributes[:'position']
      end

      if attributes.has_key?(:'personalAssets')
        self.personal_assets = attributes[:'personalAssets']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'modifiedDate')
        self.modified_date = attributes[:'modifiedDate']
      end

      if attributes.has_key?(:'walletCount')
        self.wallet_count = attributes[:'walletCount']
      end

      if attributes.has_key?(:'payinCount')
        self.payin_count = attributes[:'payinCount']
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
      user_status_validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      return false unless user_status_validator.valid?(@user_status)
      title_validator = EnumAttributeValidator.new('String', ['M', 'MME', 'MLLE'])
      return false unless title_validator.valid?(@title)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_status Object to be assigned
    def user_status=(user_status)
      validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      unless validator.valid?(user_status)
        fail ArgumentError, 'invalid value for "user_status", must be one of #{validator.allowable_values}.'
      end
      @user_status = user_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(title)
      validator = EnumAttributeValidator.new('String', ['M', 'MME', 'MLLE'])
      unless validator.valid?(title)
        fail ArgumentError, 'invalid value for "title", must be one of #{validator.allowable_values}.'
      end
      @title = title
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_id == o.user_id &&
          user_type_id == o.user_type_id &&
          user_status == o.user_status &&
          user_tag == o.user_tag &&
          parent_user_id == o.parent_user_id &&
          parent_type == o.parent_type &&
          controlling_person_type == o.controlling_person_type &&
          employee_type == o.employee_type &&
          specified_us_person == o.specified_us_person &&
          title == o.title &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          middle_names == o.middle_names &&
          birthday == o.birthday &&
          email == o.email &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          postcode == o.postcode &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          country_name == o.country_name &&
          phone == o.phone &&
          mobile == o.mobile &&
          nationality == o.nationality &&
          nationality_other == o.nationality_other &&
          place_of_birth == o.place_of_birth &&
          birth_country == o.birth_country &&
          occupation == o.occupation &&
          income_range == o.income_range &&
          legal_name == o.legal_name &&
          legal_name_embossed == o.legal_name_embossed &&
          legal_registration_number == o.legal_registration_number &&
          legal_tva_number == o.legal_tva_number &&
          legal_registration_date == o.legal_registration_date &&
          legal_form == o.legal_form &&
          legal_share_capital == o.legal_share_capital &&
          legal_sector == o.legal_sector &&
          legal_annual_turn_over == o.legal_annual_turn_over &&
          legal_net_income_range == o.legal_net_income_range &&
          legal_number_of_employee_range == o.legal_number_of_employee_range &&
          effective_beneficiary == o.effective_beneficiary &&
          kyc_level == o.kyc_level &&
          kyc_review == o.kyc_review &&
          kyc_review_comment == o.kyc_review_comment &&
          is_freezed == o.is_freezed &&
          language == o.language &&
          opt_in_mailing == o.opt_in_mailing &&
          sepa_creditor_identifier == o.sepa_creditor_identifier &&
          tax_number == o.tax_number &&
          tax_residence == o.tax_residence &&
          position == o.position &&
          personal_assets == o.personal_assets &&
          created_date == o.created_date &&
          modified_date == o.modified_date &&
          wallet_count == o.wallet_count &&
          payin_count == o.payin_count &&
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
      [user_id, user_type_id, user_status, user_tag, parent_user_id, parent_type, controlling_person_type, employee_type, specified_us_person, title, firstname, lastname, middle_names, birthday, email, address1, address2, postcode, city, state, country, country_name, phone, mobile, nationality, nationality_other, place_of_birth, birth_country, occupation, income_range, legal_name, legal_name_embossed, legal_registration_number, legal_tva_number, legal_registration_date, legal_form, legal_share_capital, legal_sector, legal_annual_turn_over, legal_net_income_range, legal_number_of_employee_range, effective_beneficiary, kyc_level, kyc_review, kyc_review_comment, is_freezed, language, opt_in_mailing, sepa_creditor_identifier, tax_number, tax_residence, position, personal_assets, created_date, modified_date, wallet_count, payin_count, total_rows].hash
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
