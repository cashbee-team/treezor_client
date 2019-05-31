=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'uri'

module TreezorClient
  class TransferApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # cancel a transfer
    # Change transfer's status to CANCELED. A validated transfer can't be cancelled.
    # @param id Transfert internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20023]
    def delete_transfer(id, opts = {})
      data, _status_code, _headers = delete_transfer_with_http_info(id, opts)
      data
    end

    # cancel a transfer
    # Change transfer&#39;s status to CANCELED. A validated transfer can&#39;t be cancelled.
    # @param id Transfert internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def delete_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.delete_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransferApi.delete_transfer"
      end
      # resource path
      local_var_path = '/transfers/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#delete_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get a transfer
    # Get a transfert from the system.
    # @param id Transfers internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20023]
    def get_transfer(id, opts = {})
      data, _status_code, _headers = get_transfer_with_http_info(id, opts)
      data
    end

    # get a transfer
    # Get a transfert from the system.
    # @param id Transfers internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def get_transfer_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.get_transfer ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransferApi.get_transfer"
      end
      # resource path
      local_var_path = '/transfers/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#get_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # search transfers
    # Search for transfers in the system. The request must contains at least one of those inputs  walletId, beneficiaryWalletId, userId, beneficiaryUserId, transferId, transferTag
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :transfer_id Transfer&#39;s id.
    # @option opts [String] :transfer_tag Custom data.
    # @option opts [String] :transfer_status Transfer&#39;s status. Possible values: * PENDING * CANCELED * VALIDATED 
    # @option opts [Integer] :wallet_id Debited wallet&#39;s id.
    # @option opts [Integer] :beneficiary_wallet_id Credited wallet&#39;s id.
    # @option opts [Integer] :user_id Debited wallet user&#39;s id.
    # @option opts [Integer] :beneficiary_user_id Credited wallet user&#39;s id.
    # @option opts [DateTime] :transfer_date Transfer&#39;s date. Format : YYYY-MM-DD HH:MM:SS 
    # @option opts [String] :amount Transfert&#39;s amount.
    # @option opts [String] :currency Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
    # @option opts [Integer] :transfer_type_id The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet | | 2 | Card transaction | | 3 | Client fees | | 4 | Credit note | 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [InlineResponse20023]
    def get_transfers(opts = {})
      data, _status_code, _headers = get_transfers_with_http_info(opts)
      data
    end

    # search transfers
    # Search for transfers in the system. The request must contains at least one of those inputs  walletId, beneficiaryWalletId, userId, beneficiaryUserId, transferId, transferTag
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :transfer_id Transfer&#39;s id.
    # @option opts [String] :transfer_tag Custom data.
    # @option opts [String] :transfer_status Transfer&#39;s status. Possible values: * PENDING * CANCELED * VALIDATED 
    # @option opts [Integer] :wallet_id Debited wallet&#39;s id.
    # @option opts [Integer] :beneficiary_wallet_id Credited wallet&#39;s id.
    # @option opts [Integer] :user_id Debited wallet user&#39;s id.
    # @option opts [Integer] :beneficiary_user_id Credited wallet user&#39;s id.
    # @option opts [DateTime] :transfer_date Transfer&#39;s date. Format : YYYY-MM-DD HH:MM:SS 
    # @option opts [String] :amount Transfert&#39;s amount.
    # @option opts [String] :currency Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
    # @option opts [Integer] :transfer_type_id The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet | | 2 | Card transaction | | 3 | Client fees | | 4 | Credit note | 
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def get_transfers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.get_transfers ...'
      end
      # resource path
      local_var_path = '/transfers'

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'transferId'] = opts[:'transfer_id'] if !opts[:'transfer_id'].nil?
      query_params[:'transferTag'] = opts[:'transfer_tag'] if !opts[:'transfer_tag'].nil?
      query_params[:'transferStatus'] = opts[:'transfer_status'] if !opts[:'transfer_status'].nil?
      query_params[:'walletId'] = opts[:'wallet_id'] if !opts[:'wallet_id'].nil?
      query_params[:'beneficiaryWalletId'] = opts[:'beneficiary_wallet_id'] if !opts[:'beneficiary_wallet_id'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'beneficiaryUserId'] = opts[:'beneficiary_user_id'] if !opts[:'beneficiary_user_id'].nil?
      query_params[:'transferDate'] = opts[:'transfer_date'] if !opts[:'transfer_date'].nil?
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'transferTypeId'] = opts[:'transfer_type_id'] if !opts[:'transfer_type_id'].nil?
      query_params[:'pageNumber'] = opts[:'page_number'] if !opts[:'page_number'].nil?
      query_params[:'pageCount'] = opts[:'page_count'] if !opts[:'page_count'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'createdDateFrom'] = opts[:'created_date_from'] if !opts[:'created_date_from'].nil?
      query_params[:'createdDateTo'] = opts[:'created_date_to'] if !opts[:'created_date_to'].nil?
      query_params[:'updatedDateFrom'] = opts[:'updated_date_from'] if !opts[:'updated_date_from'].nil?
      query_params[:'updatedDateTo'] = opts[:'updated_date_to'] if !opts[:'updated_date_to'].nil?

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
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#get_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # create a transfer
    # Create a new transfer in the system.
    # @param wallet_id Debited wallet&#39;s ID
    # @param beneficiary_wallet_id Credited wallet&#39;s ID
    # @param amount Transfer&#39;s amount
    # @param currency Transfert&#39;s currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :transfer_tag Custom data.
    # @option opts [String] :label Custom data.
    # @option opts [Integer] :transfer_type_id The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet (default value) | | 3 | Client fees | | 4 | Credit note | 
    # @return [InlineResponse20023]
    def post_transfers(wallet_id, beneficiary_wallet_id, amount, currency, opts = {})
      data, _status_code, _headers = post_transfers_with_http_info(wallet_id, beneficiary_wallet_id, amount, currency, opts)
      data
    end

    # create a transfer
    # Create a new transfer in the system.
    # @param wallet_id Debited wallet&#39;s ID
    # @param beneficiary_wallet_id Credited wallet&#39;s ID
    # @param amount Transfer&#39;s amount
    # @param currency Transfert&#39;s currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :transfer_tag Custom data.
    # @option opts [String] :label Custom data.
    # @option opts [Integer] :transfer_type_id The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet (default value) | | 3 | Client fees | | 4 | Credit note | 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def post_transfers_with_http_info(wallet_id, beneficiary_wallet_id, amount, currency, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransferApi.post_transfers ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling TransferApi.post_transfers"
      end
      # verify the required parameter 'beneficiary_wallet_id' is set
      if @api_client.config.client_side_validation && beneficiary_wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'beneficiary_wallet_id' when calling TransferApi.post_transfers"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransferApi.post_transfers"
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling TransferApi.post_transfers"
      end
      # resource path
      local_var_path = '/transfers'

      # query parameters
      query_params = {}
      query_params[:'walletId'] = wallet_id
      query_params[:'beneficiaryWalletId'] = beneficiary_wallet_id
      query_params[:'amount'] = amount
      query_params[:'currency'] = currency
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'transferTag'] = opts[:'transfer_tag'] if !opts[:'transfer_tag'].nil?
      query_params[:'label'] = opts[:'label'] if !opts[:'label'].nil?
      query_params[:'transferTypeId'] = opts[:'transfer_type_id'] if !opts[:'transfer_type_id'].nil?

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransferApi#post_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
