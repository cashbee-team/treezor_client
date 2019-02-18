=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module TreezorClient
  class WalletApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # delete a wallet
    # Change wallet's status to **CANCELED**.
    # @param id Wallet&#39;s id
    # @param origin Request&#39;s origin. Possible values are: * OPERATOR * USER 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @return [InlineResponse20027]
    def delete_wallet(id, origin, opts = {})
      data, _status_code, _headers = delete_wallet_with_http_info(id, origin, opts)
      return data
    end

    # delete a wallet
    # Change wallet&#39;s status to **CANCELED**.
    # @param id Wallet&#39;s id
    # @param origin Request&#39;s origin. Possible values are: * OPERATOR * USER 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def delete_wallet_with_http_info(id, origin, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.delete_wallet ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WalletApi.delete_wallet"
      end
      # verify the required parameter 'origin' is set
      if @api_client.config.client_side_validation && origin.nil?
        fail ArgumentError, "Missing the required parameter 'origin' when calling WalletApi.delete_wallet"
      end
      # resource path
      local_var_path = "/wallets/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'origin'] = origin
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
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#delete_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get a wallet
    # 
    # @param id Object internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @return [InlineResponse20027]
    def get_wallet(id, opts = {})
      data, _status_code, _headers = get_wallet_with_http_info(id, opts)
      return data
    end

    # get a wallet
    # 
    # @param id Object internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def get_wallet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_wallet ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WalletApi.get_wallet"
      end
      # resource path
      local_var_path = "/wallets/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # search wallets
    # Get wallets from the system that match the search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :wallet_id Wallet&#39;s unique id.
    # @option opts [String] :wallet_status Wallet&#39;s status:  * **validated**: Wallet is active. It is possible to deposit to or retrieve money from the wallet.  * **cancelled**: Wallet is closed. No action possible, there is no money in the wallet, it was closed by an operator or by the user.  * **pending**: Wallet being validated (e.g. suspected fraud, late submission of documents&#39; validation ... KYC ). In this case, it is not possible to use the wallet for transactions.
    # @option opts [Integer] :user_id Wallet owner&#39;s id.
    # @option opts [Integer] :parent_user_id Parent user id of the wallet owner
    # @option opts [String] :wallet_tag Custom data.
    # @option opts [Integer] :wallet_type_id Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 
    # @option opts [String] :event_name Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 
    # @option opts [String] :event_alias Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding 
    # @option opts [DateTime] :event_payin_start_date  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD HH:MM:SS
    # @option opts [DateTime] :event_payin_end_date Deadline to money deposit on the wallet. Format : YYYY-MM-DD HH:MM:SS 
    # @option opts [Integer] :tariff_id Wallet pricing id.
    # @option opts [Integer] :payin_count Number of payin done on the wallet.
    # @option opts [String] :solde Wallet current balance.
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [InlineResponse20027]
    def get_wallets(opts = {})
      data, _status_code, _headers = get_wallets_with_http_info(opts)
      return data
    end

    # search wallets
    # Get wallets from the system that match the search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :wallet_id Wallet&#39;s unique id.
    # @option opts [String] :wallet_status Wallet&#39;s status:  * **validated**: Wallet is active. It is possible to deposit to or retrieve money from the wallet.  * **cancelled**: Wallet is closed. No action possible, there is no money in the wallet, it was closed by an operator or by the user.  * **pending**: Wallet being validated (e.g. suspected fraud, late submission of documents&#39; validation ... KYC ). In this case, it is not possible to use the wallet for transactions.
    # @option opts [Integer] :user_id Wallet owner&#39;s id.
    # @option opts [Integer] :parent_user_id Parent user id of the wallet owner
    # @option opts [String] :wallet_tag Custom data.
    # @option opts [Integer] :wallet_type_id Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 
    # @option opts [String] :event_name Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 
    # @option opts [String] :event_alias Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding 
    # @option opts [DateTime] :event_payin_start_date  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD HH:MM:SS
    # @option opts [DateTime] :event_payin_end_date Deadline to money deposit on the wallet. Format : YYYY-MM-DD HH:MM:SS 
    # @option opts [Integer] :tariff_id Wallet pricing id.
    # @option opts [Integer] :payin_count Number of payin done on the wallet.
    # @option opts [String] :solde Wallet current balance.
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def get_wallets_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.get_wallets ..."
      end
      # resource path
      local_var_path = "/wallets"

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIP'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'walletId'] = opts[:'wallet_id'] if !opts[:'wallet_id'].nil?
      query_params[:'walletStatus'] = opts[:'wallet_status'] if !opts[:'wallet_status'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'parentUserId'] = opts[:'parent_user_id'] if !opts[:'parent_user_id'].nil?
      query_params[:'walletTag'] = opts[:'wallet_tag'] if !opts[:'wallet_tag'].nil?
      query_params[:'walletTypeId'] = opts[:'wallet_type_id'] if !opts[:'wallet_type_id'].nil?
      query_params[:'eventName'] = opts[:'event_name'] if !opts[:'event_name'].nil?
      query_params[:'eventAlias'] = opts[:'event_alias'] if !opts[:'event_alias'].nil?
      query_params[:'eventPayinStartDate'] = opts[:'event_payin_start_date'] if !opts[:'event_payin_start_date'].nil?
      query_params[:'eventPayinEndDate'] = opts[:'event_payin_end_date'] if !opts[:'event_payin_end_date'].nil?
      query_params[:'tariffId'] = opts[:'tariff_id'] if !opts[:'tariff_id'].nil?
      query_params[:'payinCount'] = opts[:'payin_count'] if !opts[:'payin_count'].nil?
      query_params[:'solde'] = opts[:'solde'] if !opts[:'solde'].nil?
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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#get_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # create a wallet
    # Create a new wallet in the system..
    # @param wallet_type_id Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 
    # @param tariff_id Wallet pricing id.
    # @param user_id Wallet owner&#39;s id.
    # @param currency The currency that will be used for all wallet money transactions format : ISO 4217 3-letter code for each currency : Euro &#x3D; EUR ; US Dollar &#x3D; USD ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ Default currency will be same as the wallet 
    # @param event_name Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :joint_user_id Wallet co-owner&#39;s id. This user will not be allowed to collect the money from the wallet. 
    # @option opts [String] :wallet_tag Custom data
    # @option opts [Float] :load Initial loading amount.
    # @option opts [String] :event_alias Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding. Please note that the eventAlias must be unique. 
    # @option opts [Date] :event_date Wallet event date. Format : YYYY-MM-DD. Default: Created date + 7 days. 
    # @option opts [String] :event_message It can be a description of the wallet.
    # @option opts [Date] :event_payin_start_date  Wallet activation date. The date ferom which you can deposit money on the wallet. Format : YYYY-MM-DD. If null, the default date will be the created date of the wallet.
    # @option opts [Date] :event_payin_end_date Deadline to money deposit on the wallet. Format : YYYY-MM-DD. If null, the money can be deposited indefinitely on the wallet 
    # @return [InlineResponse20027]
    def post_wallets(wallet_type_id, tariff_id, user_id, currency, event_name, opts = {})
      data, _status_code, _headers = post_wallets_with_http_info(wallet_type_id, tariff_id, user_id, currency, event_name, opts)
      return data
    end

    # create a wallet
    # Create a new wallet in the system..
    # @param wallet_type_id Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 
    # @param tariff_id Wallet pricing id.
    # @param user_id Wallet owner&#39;s id.
    # @param currency The currency that will be used for all wallet money transactions format : ISO 4217 3-letter code for each currency : Euro &#x3D; EUR ; US Dollar &#x3D; USD ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ Default currency will be same as the wallet 
    # @param event_name Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :joint_user_id Wallet co-owner&#39;s id. This user will not be allowed to collect the money from the wallet. 
    # @option opts [String] :wallet_tag Custom data
    # @option opts [Float] :load Initial loading amount.
    # @option opts [String] :event_alias Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding. Please note that the eventAlias must be unique. 
    # @option opts [Date] :event_date Wallet event date. Format : YYYY-MM-DD. Default: Created date + 7 days. 
    # @option opts [String] :event_message It can be a description of the wallet.
    # @option opts [Date] :event_payin_start_date  Wallet activation date. The date ferom which you can deposit money on the wallet. Format : YYYY-MM-DD. If null, the default date will be the created date of the wallet.
    # @option opts [Date] :event_payin_end_date Deadline to money deposit on the wallet. Format : YYYY-MM-DD. If null, the money can be deposited indefinitely on the wallet 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def post_wallets_with_http_info(wallet_type_id, tariff_id, user_id, currency, event_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.post_wallets ..."
      end
      # verify the required parameter 'wallet_type_id' is set
      if @api_client.config.client_side_validation && wallet_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_type_id' when calling WalletApi.post_wallets"
      end
      # verify the required parameter 'tariff_id' is set
      if @api_client.config.client_side_validation && tariff_id.nil?
        fail ArgumentError, "Missing the required parameter 'tariff_id' when calling WalletApi.post_wallets"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling WalletApi.post_wallets"
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling WalletApi.post_wallets"
      end
      # verify the required parameter 'event_name' is set
      if @api_client.config.client_side_validation && event_name.nil?
        fail ArgumentError, "Missing the required parameter 'event_name' when calling WalletApi.post_wallets"
      end
      # resource path
      local_var_path = "/wallets"

      # query parameters
      query_params = {}
      query_params[:'walletTypeId'] = wallet_type_id
      query_params[:'tariffId'] = tariff_id
      query_params[:'userId'] = user_id
      query_params[:'currency'] = currency
      query_params[:'eventName'] = event_name
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIP'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'jointUserId'] = opts[:'joint_user_id'] if !opts[:'joint_user_id'].nil?
      query_params[:'walletTag'] = opts[:'wallet_tag'] if !opts[:'wallet_tag'].nil?
      query_params[:'load'] = opts[:'load'] if !opts[:'load'].nil?
      query_params[:'eventAlias'] = opts[:'event_alias'] if !opts[:'event_alias'].nil?
      query_params[:'eventDate'] = opts[:'event_date'] if !opts[:'event_date'].nil?
      query_params[:'eventMessage'] = opts[:'event_message'] if !opts[:'event_message'].nil?
      query_params[:'eventPayinStartDate'] = opts[:'event_payin_start_date'] if !opts[:'event_payin_start_date'].nil?
      query_params[:'eventPayinEndDate'] = opts[:'event_payin_end_date'] if !opts[:'event_payin_end_date'].nil?

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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#post_wallets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update a wallet
    # Modifiy wallet information
    # @param id Object internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :wallet_type_id Change wallet type id
    # @option opts [String] :event_name Change event name
    # @option opts [String] :event_alias Change event alias. Please note that the eventAlias must be unique.
    # @option opts [String] :event_date Change event date
    # @option opts [String] :event_message Change event message
    # @option opts [String] :event_payin_start_date Change event payin starting date
    # @option opts [String] :event_payin_end_date Change event payin end date
    # @option opts [String] :url_image Change URL image
    # @option opts [String] :image_name Change image name
    # @option opts [String] :tariff_id Change tariff id
    # @return [InlineResponse20027]
    def put_wallet(id, opts = {})
      data, _status_code, _headers = put_wallet_with_http_info(id, opts)
      return data
    end

    # update a wallet
    # Modifiy wallet information
    # @param id Object internal id.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :wallet_type_id Change wallet type id
    # @option opts [String] :event_name Change event name
    # @option opts [String] :event_alias Change event alias. Please note that the eventAlias must be unique.
    # @option opts [String] :event_date Change event date
    # @option opts [String] :event_message Change event message
    # @option opts [String] :event_payin_start_date Change event payin starting date
    # @option opts [String] :event_payin_end_date Change event payin end date
    # @option opts [String] :url_image Change URL image
    # @option opts [String] :image_name Change image name
    # @option opts [String] :tariff_id Change tariff id
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def put_wallet_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WalletApi.put_wallet ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WalletApi.put_wallet"
      end
      # resource path
      local_var_path = "/wallets/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'walletTypeId'] = opts[:'wallet_type_id'] if !opts[:'wallet_type_id'].nil?
      query_params[:'eventName'] = opts[:'event_name'] if !opts[:'event_name'].nil?
      query_params[:'eventAlias'] = opts[:'event_alias'] if !opts[:'event_alias'].nil?
      query_params[:'eventDate'] = opts[:'event_date'] if !opts[:'event_date'].nil?
      query_params[:'eventMessage'] = opts[:'event_message'] if !opts[:'event_message'].nil?
      query_params[:'eventPayinStartDate'] = opts[:'event_payin_start_date'] if !opts[:'event_payin_start_date'].nil?
      query_params[:'eventPayinEndDate'] = opts[:'event_payin_end_date'] if !opts[:'event_payin_end_date'].nil?
      query_params[:'urlImage'] = opts[:'url_image'] if !opts[:'url_image'].nil?
      query_params[:'imageName'] = opts[:'image_name'] if !opts[:'image_name'].nil?
      query_params[:'tariffId'] = opts[:'tariff_id'] if !opts[:'tariff_id'].nil?

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WalletApi#put_wallet\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
