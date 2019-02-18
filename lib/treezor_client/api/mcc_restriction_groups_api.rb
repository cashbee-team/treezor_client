=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module TreezorClient
  class MccRestrictionGroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # cancel a mcc group
    # Cancel a mcc restriction group from the system.
    # @param id MCC restriction Group internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @return [InlineResponse20014]
    def delete_mcc_restriction_groups(id, opts = {})
      data, _status_code, _headers = delete_mcc_restriction_groups_with_http_info(id, opts)
      return data
    end

    # cancel a mcc group
    # Cancel a mcc restriction group from the system.
    # @param id MCC restriction Group internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def delete_mcc_restriction_groups_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MccRestrictionGroupsApi.delete_mcc_restriction_groups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MccRestrictionGroupsApi.delete_mcc_restriction_groups"
      end
      # resource path
      local_var_path = "/mccRestrictionGroups/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MccRestrictionGroupsApi#delete_mcc_restriction_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # search mcc restriction groups
    # Get mcc restriction groups that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @option opts [String] :filter You can filter the API response by using filter(s). Filterable fields are :   - id   - name   - isWhitelist   - status   - startDate   - createdDate    Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3.    A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;.    Where :     - fieldName : the name of a filterable field of this object.      - expression : the values to be included or excluded (see the table below for more information)      - criterion : a filter criterion.    Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |   |----------|------------------------|------------------------------------------|--------------------|   |     &gt;    |      greater than      |            alphanumeric string           |         100        |   |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |   |     &lt;    |        less than       |            alphanumeric string           |         100        |   |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |   |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |   |   like   |          like          |            alphanumeric string           |         100        |   |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |   |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        | 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @return [InlineResponse20014]
    def get_mcc_restriction_groups(opts = {})
      data, _status_code, _headers = get_mcc_restriction_groups_with_http_info(opts)
      return data
    end

    # search mcc restriction groups
    # Get mcc restriction groups that match search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @option opts [String] :filter You can filter the API response by using filter(s). Filterable fields are :   - id   - name   - isWhitelist   - status   - startDate   - createdDate    Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3.    A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;.    Where :     - fieldName : the name of a filterable field of this object.      - expression : the values to be included or excluded (see the table below for more information)      - criterion : a filter criterion.    Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |   |----------|------------------------|------------------------------------------|--------------------|   |     &gt;    |      greater than      |            alphanumeric string           |         100        |   |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |   |     &lt;    |        less than       |            alphanumeric string           |         100        |   |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |   |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |   |   like   |          like          |            alphanumeric string           |         100        |   |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |   |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        | 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def get_mcc_restriction_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MccRestrictionGroupsApi.get_mcc_restriction_groups ..."
      end
      # resource path
      local_var_path = "/mccRestrictionGroups"

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MccRestrictionGroupsApi#get_mcc_restriction_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get a mcc group
    # Get a mcc group from the system.
    # @param id MCC restriction Group internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @return [InlineResponse20014]
    def get_mcc_restriction_groups_id(id, opts = {})
      data, _status_code, _headers = get_mcc_restriction_groups_id_with_http_info(id, opts)
      return data
    end

    # get a mcc group
    # Get a mcc group from the system.
    # @param id MCC restriction Group internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def get_mcc_restriction_groups_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MccRestrictionGroupsApi.get_mcc_restriction_groups_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MccRestrictionGroupsApi.get_mcc_restriction_groups_id"
      end
      # resource path
      local_var_path = "/mccRestrictionGroups/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MccRestrictionGroupsApi#get_mcc_restriction_groups_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create a mccRestrictionGroup
    # Create a new mcc restriction group in the system.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @option opts [Body5] :body 
    # @return [InlineResponse20014]
    def post_mcc_restriction_group(opts = {})
      data, _status_code, _headers = post_mcc_restriction_group_with_http_info(opts)
      return data
    end

    # create a mccRestrictionGroup
    # Create a new mcc restriction group in the system.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Array<String>] :fields List of the object&#39;s properties you want to pick up.
    # @option opts [Body5] :body 
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def post_mcc_restriction_group_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MccRestrictionGroupsApi.post_mcc_restriction_group ..."
      end
      # resource path
      local_var_path = "/mccRestrictionGroups"

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MccRestrictionGroupsApi#post_mcc_restriction_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # edit a mcc restriction group
    # Edit a mcc restriction group in the system.
    # @param id MCC group&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Body6] :body 
    # @return [InlineResponse20014]
    def put_mcc_restriction_groups(id, opts = {})
      data, _status_code, _headers = put_mcc_restriction_groups_with_http_info(id, opts)
      return data
    end

    # edit a mcc restriction group
    # Edit a mcc restriction group in the system.
    # @param id MCC group&#39;s id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Body6] :body 
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def put_mcc_restriction_groups_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MccRestrictionGroupsApi.put_mcc_restriction_groups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling MccRestrictionGroupsApi.put_mcc_restriction_groups"
      end
      # resource path
      local_var_path = "/mccRestrictionGroups/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MccRestrictionGroupsApi#put_mcc_restriction_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
