=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'uri'

module TreezorClient
  class DocumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # create a document
    # Search for documents.
    # @param user_id Document user&#39;s id.
    # @param document_type_id Type of document.  | documentTypeId | Description | | --- | --- | | 2 | Police record | | 4 | Company Registration | | 6 | CV | | 7 | Sworn statement | | 8 | Turnover | | 9 | Identity card | | 11 | Bank Identity Statement | | 12 | Proof of address| | 13 | Mobile phone invoice| | 14 | Invoice, other than Mobile phone invoice| | 15 | A residence permit| | 16 | A driving licence| | 17 | A passport| | 18 | A proxy granting an employee| | 19 | A company registration official paper| | 20 | Official tax certificate| | 21 | Employee payment notice| | 22 | User bank statement| | 23 | Business legal status| | 24 | Tax Statement| | 25 | Exemption Statement| 
    # @param name Document&#39;s name.
    # @param file_content_base64 Document file content. base64 encoded.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :document_tag Custom data.
    # @option opts [Integer] :residence_id Document residence Id. The field is mandatory when the document is of type id 24 or 25. Otherwise it should not be provided.
    # @return [InlineResponse20012]
    def create_documents(user_id, document_type_id, name, file_content_base64, opts = {})
      data, _status_code, _headers = create_documents_with_http_info(user_id, document_type_id, name, file_content_base64, opts)
      data
    end

    # create a document
    # Search for documents.
    # @param user_id Document user&#39;s id.
    # @param document_type_id Type of document.  | documentTypeId | Description | | --- | --- | | 2 | Police record | | 4 | Company Registration | | 6 | CV | | 7 | Sworn statement | | 8 | Turnover | | 9 | Identity card | | 11 | Bank Identity Statement | | 12 | Proof of address| | 13 | Mobile phone invoice| | 14 | Invoice, other than Mobile phone invoice| | 15 | A residence permit| | 16 | A driving licence| | 17 | A passport| | 18 | A proxy granting an employee| | 19 | A company registration official paper| | 20 | Official tax certificate| | 21 | Employee payment notice| | 22 | User bank statement| | 23 | Business legal status| | 24 | Tax Statement| | 25 | Exemption Statement| 
    # @param name Document&#39;s name.
    # @param file_content_base64 Document file content. base64 encoded.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :document_tag Custom data.
    # @option opts [Integer] :residence_id Document residence Id. The field is mandatory when the document is of type id 24 or 25. Otherwise it should not be provided.
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def create_documents_with_http_info(user_id, document_type_id, name, file_content_base64, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.create_documents ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling DocumentApi.create_documents"
      end
      # verify the required parameter 'document_type_id' is set
      if @api_client.config.client_side_validation && document_type_id.nil?
        fail ArgumentError, "Missing the required parameter 'document_type_id' when calling DocumentApi.create_documents"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DocumentApi.create_documents"
      end
      # verify the required parameter 'file_content_base64' is set
      if @api_client.config.client_side_validation && file_content_base64.nil?
        fail ArgumentError, "Missing the required parameter 'file_content_base64' when calling DocumentApi.create_documents"
      end
      if @api_client.config.client_side_validation && !opts[:'residence_id'].nil? && opts[:'residence_id'] < 1
        fail ArgumentError, 'invalid value for "opts[:"residence_id"]" when calling DocumentApi.create_documents, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = {}
      query_params[:'userId'] = user_id
      query_params[:'documentTypeId'] = document_type_id
      query_params[:'name'] = name
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'documentTag'] = opts[:'document_tag'] if !opts[:'document_tag'].nil?
      query_params[:'residenceId'] = opts[:'residence_id'] if !opts[:'residence_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params['fileContentBase64'] = file_content_base64

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#create_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # delete document
    # Remove a document from the system.
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def delete_document(id, opts = {})
      data, _status_code, _headers = delete_document_with_http_info(id, opts)
      data
    end

    # delete document
    # Remove a document from the system.
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def delete_document_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.delete_document ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentApi.delete_document"
      end
      # resource path
      local_var_path = '/documents/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#delete_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get a document
    # get a document
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def get_document(id, opts = {})
      data, _status_code, _headers = get_document_with_http_info(id, opts)
      data
    end

    # get a document
    # get a document
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def get_document_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_document ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentApi.get_document"
      end
      # resource path
      local_var_path = '/documents/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # search documents
    # Search for documents.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :document_id Document&#39;s unique id.
    # @option opts [String] :document_tag Custom data.
    # @option opts [String] :document_status The status of the document. Possible values: * PENDING * CANCELED * VALIDATED * REFUSED 
    # @option opts [Integer] :document_type_id Document type id.
    # @option opts [String] :document_type Document&#39;s type.
    # @option opts [Integer] :user_id Document user&#39;s id.
    # @option opts [String] :user_name Document user&#39;s name.
    # @option opts [String] :user_email Document user&#39;s email.
    # @option opts [String] :file_name Document&#39;s name.
    # @option opts [Integer] :file_size Document&#39;s size.
    # @option opts [Integer] :file_type Document&#39;s type.
    # @option opts [String] :is_agent is agent field.
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [InlineResponse20012]
    def get_documents(opts = {})
      data, _status_code, _headers = get_documents_with_http_info(opts)
      data
    end

    # search documents
    # Search for documents.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
    # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
    # @option opts [Integer] :document_id Document&#39;s unique id.
    # @option opts [String] :document_tag Custom data.
    # @option opts [String] :document_status The status of the document. Possible values: * PENDING * CANCELED * VALIDATED * REFUSED 
    # @option opts [Integer] :document_type_id Document type id.
    # @option opts [String] :document_type Document&#39;s type.
    # @option opts [Integer] :user_id Document user&#39;s id.
    # @option opts [String] :user_name Document user&#39;s name.
    # @option opts [String] :user_email Document user&#39;s email.
    # @option opts [String] :file_name Document&#39;s name.
    # @option opts [Integer] :file_size Document&#39;s size.
    # @option opts [Integer] :file_type Document&#39;s type.
    # @option opts [String] :is_agent is agent field.
    # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
    # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
    # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
    # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def get_documents_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.get_documents ...'
      end
      if @api_client.config.client_side_validation && opts[:'document_status'] && !['PENDING', 'CANCELED', 'VALIDATED', 'REFUSED'].include?(opts[:'document_status'])
        fail ArgumentError, 'invalid value for "document_status", must be one of PENDING, CANCELED, VALIDATED, REFUSED'
      end
      # resource path
      local_var_path = '/documents'

      # query parameters
      query_params = {}
      query_params[:'accessSignature'] = opts[:'access_signature'] if !opts[:'access_signature'].nil?
      query_params[:'accessTag'] = opts[:'access_tag'] if !opts[:'access_tag'].nil?
      query_params[:'accessUserId'] = opts[:'access_user_id'] if !opts[:'access_user_id'].nil?
      query_params[:'accessUserIp'] = opts[:'access_user_ip'] if !opts[:'access_user_ip'].nil?
      query_params[:'documentId'] = opts[:'document_id'] if !opts[:'document_id'].nil?
      query_params[:'documentTag'] = opts[:'document_tag'] if !opts[:'document_tag'].nil?
      query_params[:'documentStatus'] = opts[:'document_status'] if !opts[:'document_status'].nil?
      query_params[:'documentTypeId'] = opts[:'document_type_id'] if !opts[:'document_type_id'].nil?
      query_params[:'documentType'] = opts[:'document_type'] if !opts[:'document_type'].nil?
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'userName'] = opts[:'user_name'] if !opts[:'user_name'].nil?
      query_params[:'userEmail'] = opts[:'user_email'] if !opts[:'user_email'].nil?
      query_params[:'fileName'] = opts[:'file_name'] if !opts[:'file_name'].nil?
      query_params[:'fileSize'] = opts[:'file_size'] if !opts[:'file_size'].nil?
      query_params[:'fileType'] = opts[:'file_type'] if !opts[:'file_type'].nil?
      query_params[:'isAgent'] = opts[:'is_agent'] if !opts[:'is_agent'].nil?
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
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#get_documents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # update a document
    # Update a document.
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def put_document(id, opts = {})
      data, _status_code, _headers = put_document_with_http_info(id, opts)
      data
    end

    # update a document
    # Update a document.
    # @param id Document&#39;s internal id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def put_document_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DocumentApi.put_document ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DocumentApi.put_document"
      end
      # resource path
      local_var_path = '/documents/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocumentApi#put_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
