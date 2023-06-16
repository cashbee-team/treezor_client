=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module TreezorClient
  class VirtualibansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # get a virtualiban by Id
    # Get a virtualiban from the system by its id.
    # @param id VirtualIban&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20027]
    def getvirtualiban(id, opts = { })
      data, _status_code, _headers = getvirtualiban_with_http_info(id, opts)
      data
    end

    # get a virtualiban by Id
    # Get a virtualiban from the system by its id.
    # @param id VirtualIban&#39;s id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def getvirtualiban_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VirtualibansApi.getvirtualiban ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VirtualibansApi.getvirtualiban"
      end
      # resource path
      local_var_path = '/virtualibans/{id}'.sub("{id}", id.to_s)

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
        :return_type   => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VirtualibansApi#getvirtualiban\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # search virtualibans
    # Get virtualiban that match search criteria.
    # @param valid_from The beginning date of validity.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :virtual_iban_id VirtualIban&#39;s id.
    # @option opts [Integer] :wallet_id VirtualIban&#39;s wallet id.
    # @option opts [Integer] :type_id VirtualIban&#39;s type id.
    # @option opts [Integer] :tag A tag generated by the client
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN.
    # @option opts [Date] :valid_to The limit date of validity.
    # @option opts [String] :max_usage The maximum number of usage authorized.
    # @option opts [Float] :max_amount The maximum amount authorized.
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : createdDate. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @return [InlineResponse20027]
    def getvirtualibans(valid_from, opts = { })
      data, _status_code, _headers = getvirtualibans_with_http_info(valid_from, opts)
      data
    end

    # search virtualibans
    # Get virtualiban that match search criteria.
    # @param valid_from The beginning date of validity.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :virtual_iban_id VirtualIban&#39;s id.
    # @option opts [Integer] :wallet_id VirtualIban&#39;s wallet id.
    # @option opts [Integer] :type_id VirtualIban&#39;s type id.
    # @option opts [Integer] :tag A tag generated by the client
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN.
    # @option opts [Date] :valid_to The limit date of validity.
    # @option opts [String] :max_usage The maximum number of usage authorized.
    # @option opts [Float] :max_amount The maximum amount authorized.
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : createdDate. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def getvirtualibans_with_http_info(valid_from, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VirtualibansApi.getvirtualibans ...'
      end
      # verify the required parameter 'valid_from' is set
      if @api_client.config.client_side_validation && valid_from.nil?
        fail ArgumentError, "Missing the required parameter 'valid_from' when calling VirtualibansApi.getvirtualibans"
      end
      # resource path
      local_var_path = '/virtualibans'

      # query parameters
      query_params = { }
      query_params[:'validFrom'] = valid_from
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIP'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'virtualIbanId'] = opts[:'virtual_iban_id'] if !opts[:'virtual_iban_id'].nil?
      query_params[:'walletId'] = opts[:'wallet_id'] if !opts[:'wallet_id'].nil?
      query_params[:'typeId'] = opts[:'type_id'] if !opts[:'type_id'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'reference'] = opts[:'reference'] if !opts[:'reference'].nil?
      query_params[:'validTo'] = opts[:'valid_to'] if !opts[:'valid_to'].nil?
      query_params[:'maxUsage'] = opts[:'max_usage'] if !opts[:'max_usage'].nil?
      query_params[:'maxAmount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'createdDateFrom'] = opts[:'created_date_from'] if !opts[:'created_date_from'].nil?
      query_params[:'createdDateTo'] = opts[:'created_date_to'] if !opts[:'created_date_to'].nil?
      query_params[:'updatedDateFrom'] = opts[:'updated_date_from'] if !opts[:'updated_date_from'].nil?
      query_params[:'updatedDateTo'] = opts[:'updated_date_to'] if !opts[:'updated_date_to'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

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
        :return_type   => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VirtualibansApi#getvirtualibans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # create a virtual IBAN
    # Create a new virtual IBAN in in the system.
    # @param wallet_id The Id Of the Wallet. The Wallet must be in validated status. The wallet must be of type \&quot;payment\&quot; or \&quot;electronic money\&quot;
    # @param type_id | Type Id | Virtual IBAN Type| | ---| --- | | 1 | DEBIT | | 2 | CREDIT | 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :tag A tag generated by the client
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN. Less than 255 characters.
    # @option opts [Date] :valid_from The beginning date of validity. The beginning date must not be less than today&#39;s date.
    # @option opts [Date] :valid_to The limit date of validity. Cannot be less or equal to the validFrom date.
    # @option opts [Integer] :max_usage The maximum number of usage authorized. If you want to set no maximum usage limitation you can omit the parameter or set it to null. If you want to limit usage please send an integer in that field. This integer cannot be less than 1.
    # @option opts [Float] :max_amount The maximum amount authorized.If you want to set no maximum usage amount limitation you can omit the parameter or set it to null. If you want to limit the amount please send a DECIMAL (with a point as separator) in that field. This decimal cannot be less than 0.00.
    # @return [InlineResponse20027]
    def post_virtual_iban(wallet_id, type_id, opts = { })
      data, _status_code, _headers = post_virtual_iban_with_http_info(wallet_id, type_id, opts)
      data
    end

    # create a virtual IBAN
    # Create a new virtual IBAN in in the system.
    # @param wallet_id The Id Of the Wallet. The Wallet must be in validated status. The wallet must be of type \&quot;payment\&quot; or \&quot;electronic money\&quot;
    # @param type_id | Type Id | Virtual IBAN Type| | ---| --- | | 1 | DEBIT | | 2 | CREDIT | 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :tag A tag generated by the client
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN. Less than 255 characters.
    # @option opts [Date] :valid_from The beginning date of validity. The beginning date must not be less than today&#39;s date.
    # @option opts [Date] :valid_to The limit date of validity. Cannot be less or equal to the validFrom date.
    # @option opts [Integer] :max_usage The maximum number of usage authorized. If you want to set no maximum usage limitation you can omit the parameter or set it to null. If you want to limit usage please send an integer in that field. This integer cannot be less than 1.
    # @option opts [Float] :max_amount The maximum amount authorized.If you want to set no maximum usage amount limitation you can omit the parameter or set it to null. If you want to limit the amount please send a DECIMAL (with a point as separator) in that field. This decimal cannot be less than 0.00.
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def post_virtual_iban_with_http_info(wallet_id, type_id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VirtualibansApi.post_virtual_iban ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling VirtualibansApi.post_virtual_iban"
      end
      # verify the required parameter 'type_id' is set
      if @api_client.config.client_side_validation && type_id.nil?
        fail ArgumentError, "Missing the required parameter 'type_id' when calling VirtualibansApi.post_virtual_iban"
      end
      # resource path
      local_var_path = '/virtualibans'

      # query parameters
      query_params = { }
      query_params[:'walletId'] = wallet_id
      query_params[:'typeId'] = type_id
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'tag'] = opts[:'tag'] if !opts[:'tag'].nil?
      query_params[:'reference'] = opts[:'reference'] if !opts[:'reference'].nil?
      query_params[:'validFrom'] = opts[:'valid_from'] if !opts[:'valid_from'].nil?
      query_params[:'validTo'] = opts[:'valid_to'] if !opts[:'valid_to'].nil?
      query_params[:'maxUsage'] = opts[:'max_usage'] if !opts[:'max_usage'].nil?
      query_params[:'maxAmount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?

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
        :return_type   => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VirtualibansApi#post_virtual_iban\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # update a Virtual IBAN
    # Update Virtual IBAN's information.
    # @param id VirtualIban&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN.
    # @option opts [Date] :valid_from The beginning date of validity. Date of validity can be changed. It must follow the rules explained in the POST endpoint.
    # @option opts [Date] :valid_to The limit date of validity. It must follow the rules of creation. It must follow the rules explained in the POST endpoint.
    # @option opts [Integer] :max_usage The maximum number of usage authorized. It must follow the rules explained in the POST endpoint AND the maximum usage cannot be strictly less than the transaction counter of the Virtual Iban.
    # @option opts [Float] :max_amount The maximum amount authorized. It must follow the rules explained in the POST endpoint AND the maximum amount cannot be strictly less than the cumulated amount of this Virtual Iban.
    # @return [InlineResponse20027]
    def put_virtual_iban(id, opts = { })
      data, _status_code, _headers = put_virtual_iban_with_http_info(id, opts)
      data
    end

    # update a Virtual IBAN
    # Update Virtual IBAN&#39;s information.
    # @param id VirtualIban&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :reference The client&#39;s internal reference of the vitual IBAN.
    # @option opts [Date] :valid_from The beginning date of validity. Date of validity can be changed. It must follow the rules explained in the POST endpoint.
    # @option opts [Date] :valid_to The limit date of validity. It must follow the rules of creation. It must follow the rules explained in the POST endpoint.
    # @option opts [Integer] :max_usage The maximum number of usage authorized. It must follow the rules explained in the POST endpoint AND the maximum usage cannot be strictly less than the transaction counter of the Virtual Iban.
    # @option opts [Float] :max_amount The maximum amount authorized. It must follow the rules explained in the POST endpoint AND the maximum amount cannot be strictly less than the cumulated amount of this Virtual Iban.
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def put_virtual_iban_with_http_info(id, opts = { })
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VirtualibansApi.put_virtual_iban ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VirtualibansApi.put_virtual_iban"
      end
      # resource path
      local_var_path = '/virtualibans/{id}'.sub("{id}", id.to_s)

      # query parameters
      query_params = { }
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'reference'] = opts[:'reference'] if !opts[:'reference'].nil?
      query_params[:'validFrom'] = opts[:'valid_from'] if !opts[:'valid_from'].nil?
      query_params[:'validTo'] = opts[:'valid_to'] if !opts[:'valid_to'].nil?
      query_params[:'maxUsage'] = opts[:'max_usage'] if !opts[:'max_usage'].nil?
      query_params[:'maxAmount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params  => query_params,
        :form_params   => form_params,
        :body          => post_body,
        :auth_names    => auth_names,
        :return_type   => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VirtualibansApi#put_virtual_iban\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
