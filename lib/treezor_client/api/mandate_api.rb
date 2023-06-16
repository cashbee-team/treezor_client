=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module TreezorClient
  class MandateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # revoke a mandate
    # Change mandate's status to canceled.
    # @param id Mandate&#39;s internal id.
    # @param origin The origin of the request for revocation
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20014]
    def delete_mandate(id, origin, opts = { })
      data, _status_code, _headers = delete_mandate_with_http_info(id, origin, opts)
      data
    end

    # revoke a mandate
    # Change mandate&#39;s status to canceled.
    # @param id Mandate&#39;s internal id.
    # @param origin The origin of the request for revocation
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def delete_mandate_with_http_info(id, origin, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.delete_mandate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MandateApi.delete_mandate"
      end
      # verify the required parameter 'origin' is set
      if @api_client.config.client_side_validation && origin.nil?
        fail ArgumentError, "Missing the required parameter 'origin' when calling MandateApi.delete_mandate"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['CREDITOR', 'DEBITOR'].include?(origin)
        fail ArgumentError, "invalid value for 'origin', must be one of CREDITOR, DEBITOR"
      end
      # resource path
      local_var_path = '/mandates/{id}'.sub("{id}", id.to_s)

      # query parameters
      query_params = { }
      query_params[:'origin'] = origin

      # header parameters
      header_params = { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#delete_mandate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get mandate
    # Get a mandate from the system.
    # @param id Mandate&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20014]
    def get_mandate(id, opts = { })
      data, _status_code, _headers = get_mandate_with_http_info(id, opts)
      data
    end

    # get mandate
    # Get a mandate from the system.
    # @param id Mandate&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def get_mandate_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.get_mandate ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MandateApi.get_mandate"
      end
      # resource path
      local_var_path = '/mandates/{id}'.sub("{id}", id.to_s)

      # query parameters
      query_params = { }

      # header parameters
      header_params = { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#get_mandate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # search mandates
    # Get mandates that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :mandate_id Mandate&#39;s Id
    # @option opts [Integer] :user_id User&#39;s id who initiates the mandate request.
    # @option opts [String] :unique_mandate_reference Unique Mandate Reference (UMR) of the searched mandate. It is a sequence of characters that ensures the mandate traceability. UMR coupled with SCI allows to uniquely identify a creditor and a contract for any mandate. It is provided at the mandate creation.
    # @option opts [String] :mandate_status Mandate&#39;s status. Possible values: * CANCELED * PENDING * VALIDATED 
    # @option opts [String] :filter You can filter the API response by using filter(s). Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;. Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     &gt;    |      greater than      |            alphanumeric string           |         100        |  |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |  |     &lt;    |        less than       |            alphanumeric string           |         100        |  |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |  |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        | 
    # @return [InlineResponse20014]
    def get_mandates(opts = { })
      data, _status_code, _headers = get_mandates_with_http_info(opts)
      data
    end

    # search mandates
    # Get mandates that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :mandate_id Mandate&#39;s Id
    # @option opts [Integer] :user_id User&#39;s id who initiates the mandate request.
    # @option opts [String] :unique_mandate_reference Unique Mandate Reference (UMR) of the searched mandate. It is a sequence of characters that ensures the mandate traceability. UMR coupled with SCI allows to uniquely identify a creditor and a contract for any mandate. It is provided at the mandate creation.
    # @option opts [String] :mandate_status Mandate&#39;s status. Possible values: * CANCELED * PENDING * VALIDATED 
    # @option opts [String] :filter You can filter the API response by using filter(s). Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;. Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     &gt;    |      greater than      |            alphanumeric string           |         100        |  |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |  |     &lt;    |        less than       |            alphanumeric string           |         100        |  |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |  |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        | 
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def get_mandates_with_http_info(opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.get_mandates ...'
      end
      # resource path
      local_var_path = '/mandates'

      # query parameters
      query_params = { }
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'mandateId'] = opts[:'mandate_id'] if !opts[:'mandate_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'uniqueMandateReference'] = opts[:'unique_mandate_reference'] if !opts[:'unique_mandate_reference'].nil?
      query_params[:'mandateStatus'] = opts[:'mandate_status'] if !opts[:'mandate_status'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#get_mandates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # send an OTP
    # Send an OTP to sign a specific mandate. The OTP will be sent to the user's mobile phone OR to a specific mobile phone number in the request. 
    # @param id Mandate&#39;s id.
    # @param access_token Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
    # @param access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @param user_id User&#39;s id who initiates the mandate request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_mobile Debtor&#39;s mobile phone number. Used to send the OTP for signature
    # @return [InlineResponse20014]
    def mandates_id_resend_otp_put(id, access_token, access_signature, user_id, opts = { })
      data, _status_code, _headers = mandates_id_resend_otp_put_with_http_info(id, access_token, access_signature, user_id, opts)
      data
    end

    # send an OTP
    # Send an OTP to sign a specific mandate. The OTP will be sent to the user&#39;s mobile phone OR to a specific mobile phone number in the request. 
    # @param id Mandate&#39;s id.
    # @param access_token Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
    # @param access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @param user_id User&#39;s id who initiates the mandate request.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_mobile Debtor&#39;s mobile phone number. Used to send the OTP for signature
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def mandates_id_resend_otp_put_with_http_info(id, access_token, access_signature, user_id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.mandates_id_resend_otp_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MandateApi.mandates_id_resend_otp_put"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling MandateApi.mandates_id_resend_otp_put"
      end
      # verify the required parameter 'access_signature' is set
      if @api_client.config.client_side_validation && access_signature.nil?
        fail ArgumentError, "Missing the required parameter 'access_signature' when calling MandateApi.mandates_id_resend_otp_put"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling MandateApi.mandates_id_resend_otp_put"
      end
      # resource path
      local_var_path = '/mandates/{id}/ResendOtp/'.sub("{id}", id.to_s)

      # query parameters
      query_params = { }
      query_params[:'accessToken'] = access_token
      query_params[:'accessSignature'] = access_signature
      query_params[:'userId'] = user_id
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'debtorMobile'] = opts[:'debtor_mobile'] if !opts[:'debtor_mobile'].nil?

      # header parameters
      header_params = { }

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#mandates_id_resend_otp_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # sign a mandate
    # Sign a mandate with the received OTP.
    # @param id Mandate&#39;s id.
    # @param access_token Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
    # @param access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @param user_id User&#39;s is who initiates the mandate request.
    # @param otp The One-time password that the user got once mandate created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_signature_ip IP address from which the mandate will be signed.
    # @return [InlineResponse20014]
    def mandates_id_sign_put(id, access_token, access_signature, user_id, otp, opts = { })
      data, _status_code, _headers = mandates_id_sign_put_with_http_info(id, access_token, access_signature, user_id, otp, opts)
      data
    end

    # sign a mandate
    # Sign a mandate with the received OTP.
    # @param id Mandate&#39;s id.
    # @param access_token Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
    # @param access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @param user_id User&#39;s is who initiates the mandate request.
    # @param otp The One-time password that the user got once mandate created.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_signature_ip IP address from which the mandate will be signed.
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def mandates_id_sign_put_with_http_info(id, access_token, access_signature, user_id, otp, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.mandates_id_sign_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MandateApi.mandates_id_sign_put"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling MandateApi.mandates_id_sign_put"
      end
      # verify the required parameter 'access_signature' is set
      if @api_client.config.client_side_validation && access_signature.nil?
        fail ArgumentError, "Missing the required parameter 'access_signature' when calling MandateApi.mandates_id_sign_put"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling MandateApi.mandates_id_sign_put"
      end
      # verify the required parameter 'otp' is set
      if @api_client.config.client_side_validation && otp.nil?
        fail ArgumentError, "Missing the required parameter 'otp' when calling MandateApi.mandates_id_sign_put"
      end
      # resource path
      local_var_path = '/mandates/{id}/Sign/'.sub("{id}", id.to_s)

      # query parameters
      query_params = { }
      query_params[:'accessToken'] = access_token
      query_params[:'accessSignature'] = access_signature
      query_params[:'userId'] = user_id
      query_params[:'otp'] = otp
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'debtorSignatureIp'] = opts[:'debtor_signature_ip'] if !opts[:'debtor_signature_ip'].nil?

      # header parameters
      header_params = { }

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#mandates_id_sign_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # create a mandate
    # Create a new mandate in the system. 
    # @param sdd_type Type of mandate.  | Type | Description | | ---- | ----------- | | core | Sepa Direct Debit Core | | b2b | Sepa Direct Debit Business 2 Business  | 
    # @param is_paper Indicate if it&#39;s a paper mandate or not
    # @param user_id User&#39;s id who initiates the mandate request. The creditor.
    # @param debtor_name Debtor&#39;s full name
    # @param debtor_address Debtor&#39;s address.
    # @param debtor_city Debtor&#39;s city.
    # @param debtor_zip_code Debtor&#39;s zip code
    # @param debtor_country Debtor&#39;s country
    # @param debtor_iban Debtor&#39;s IBAN
    # @param sequence_type Type of mandate.  | Type | Description | | ---- | ----------- | | one-off | One-off payment | | recurrent | Recurrent payment |  Default value: one-off. 
    # @param created_ip IP address of the system that created mandate.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_bic Debtor&#39;s BIC (or SWIFT)
    # @option opts [String] :signature_date Signature date of the mandate. Required if is paper.
    # @option opts [String] :user_id_ultimate_creditor For SDDE Core third party credior mode
    # @return [InlineResponse20014]
    def post_mandates(sdd_type, is_paper, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, sequence_type, created_ip, opts = { })
      data, _status_code, _headers = post_mandates_with_http_info(sdd_type, is_paper, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, sequence_type, created_ip, opts)
      data
    end

    # create a mandate
    # Create a new mandate in the system. 
    # @param sdd_type Type of mandate.  | Type | Description | | ---- | ----------- | | core | Sepa Direct Debit Core | | b2b | Sepa Direct Debit Business 2 Business  | 
    # @param is_paper Indicate if it&#39;s a paper mandate or not
    # @param user_id User&#39;s id who initiates the mandate request. The creditor.
    # @param debtor_name Debtor&#39;s full name
    # @param debtor_address Debtor&#39;s address.
    # @param debtor_city Debtor&#39;s city.
    # @param debtor_zip_code Debtor&#39;s zip code
    # @param debtor_country Debtor&#39;s country
    # @param debtor_iban Debtor&#39;s IBAN
    # @param sequence_type Type of mandate.  | Type | Description | | ---- | ----------- | | one-off | One-off payment | | recurrent | Recurrent payment |  Default value: one-off. 
    # @param created_ip IP address of the system that created mandate.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :debtor_bic Debtor&#39;s BIC (or SWIFT)
    # @option opts [String] :signature_date Signature date of the mandate. Required if is paper.
    # @option opts [String] :user_id_ultimate_creditor For SDDE Core third party credior mode
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def post_mandates_with_http_info(sdd_type, is_paper, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, sequence_type, created_ip, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MandateApi.post_mandates ...'
      end
      # verify the required parameter 'sdd_type' is set
      if @api_client.config.client_side_validation && sdd_type.nil?
        fail ArgumentError, "Missing the required parameter 'sdd_type' when calling MandateApi.post_mandates"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['core', 'b2b'].include?(sdd_type)
        fail ArgumentError, "invalid value for 'sdd_type', must be one of core, b2b"
      end
      # verify the required parameter 'is_paper' is set
      if @api_client.config.client_side_validation && is_paper.nil?
        fail ArgumentError, "Missing the required parameter 'is_paper' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_name' is set
      if @api_client.config.client_side_validation && debtor_name.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_name' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_address' is set
      if @api_client.config.client_side_validation && debtor_address.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_address' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_city' is set
      if @api_client.config.client_side_validation && debtor_city.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_city' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_zip_code' is set
      if @api_client.config.client_side_validation && debtor_zip_code.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_zip_code' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_country' is set
      if @api_client.config.client_side_validation && debtor_country.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_country' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'debtor_iban' is set
      if @api_client.config.client_side_validation && debtor_iban.nil?
        fail ArgumentError, "Missing the required parameter 'debtor_iban' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'sequence_type' is set
      if @api_client.config.client_side_validation && sequence_type.nil?
        fail ArgumentError, "Missing the required parameter 'sequence_type' when calling MandateApi.post_mandates"
      end
      # verify the required parameter 'created_ip' is set
      if @api_client.config.client_side_validation && created_ip.nil?
        fail ArgumentError, "Missing the required parameter 'created_ip' when calling MandateApi.post_mandates"
      end
      # resource path
      local_var_path = '/mandates'

      # query parameters
      query_params = { }
      query_params[:'sddType'] = sdd_type
      query_params[:'isPaper'] = is_paper
      query_params[:'userId'] = user_id
      query_params[:'debtorName'] = debtor_name
      query_params[:'debtorAddress'] = debtor_address
      query_params[:'debtorCity'] = debtor_city
      query_params[:'debtorZipCode'] = debtor_zip_code
      query_params[:'debtorCountry'] = debtor_country
      query_params[:'debtorIban'] = debtor_iban
      query_params[:'sequenceType'] = sequence_type
      query_params[:'createdIp'] = created_ip
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'debtorBic'] = opts[:'debtor_bic'] if !opts[:'debtor_bic'].nil?
      query_params[:'signatureDate'] = opts[:'signature_date'] if !opts[:'signature_date'].nil?
      query_params[:'userIdUltimateCreditor'] = opts[:'user_id_ultimate_creditor'] if !opts[:'user_id_ultimate_creditor'].nil?

      # header parameters
      header_params = { }
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = { }

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MandateApi#post_mandates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
