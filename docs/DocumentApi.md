# TreezorClient::DocumentApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_documents**](DocumentApi.md#create_documents) | **POST** /documents | create a document
[**delete_document**](DocumentApi.md#delete_document) | **DELETE** /documents/{id} | delete document
[**get_document**](DocumentApi.md#get_document) | **GET** /documents/{id} | get a document
[**get_documents**](DocumentApi.md#get_documents) | **GET** /documents | search documents
[**put_document**](DocumentApi.md#put_document) | **PUT** /documents/{id} | update a document


# **create_documents**
> InlineResponse20012 create_documents(user_id, document_type_id, name, file_content_base64, opts)

create a document

Search for documents.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::DocumentApi.new

user_id = 'user_id_example' # String | Document user's id.

document_type_id = 56 # Integer | Type of document.  | documentTypeId | Description | | --- | --- | | 2 | Police record | | 4 | Company Registration | | 6 | CV | | 7 | Sworn statement | | 8 | Turnover | | 9 | Identity card | | 11 | Bank Identity Statement | | 12 | Proof of address| | 13 | Mobile phone invoice| | 14 | Invoice, other than Mobile phone invoice| | 15 | A residence permit| | 16 | A driving licence| | 17 | A passport| | 18 | A proxy granting an employee| | 19 | A company registration official paper| | 20 | Official tax certificate| | 21 | Employee payment notice| | 22 | User bank statement| | 23 | Business legal status| | 24 | Tax Statement| | 25 | Exemption Statement| 

name = 'name_example' # String | Document's name.

file_content_base64 = 'B' # String | Document file content. base64 encoded.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  document_tag: 56, # Integer | Custom data.
  residence_id: 789 # Integer | Document residence Id. The field is mandatory when the document is of type id 24 or 25. Otherwise it should not be provided.
}

begin
  #create a document
  result = api_instance.create_documents(user_id, document_type_id, name, file_content_base64, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling DocumentApi->create_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| Document user&#39;s id. | 
 **document_type_id** | **Integer**| Type of document.  | documentTypeId | Description | | --- | --- | | 2 | Police record | | 4 | Company Registration | | 6 | CV | | 7 | Sworn statement | | 8 | Turnover | | 9 | Identity card | | 11 | Bank Identity Statement | | 12 | Proof of address| | 13 | Mobile phone invoice| | 14 | Invoice, other than Mobile phone invoice| | 15 | A residence permit| | 16 | A driving licence| | 17 | A passport| | 18 | A proxy granting an employee| | 19 | A company registration official paper| | 20 | Official tax certificate| | 21 | Employee payment notice| | 22 | User bank statement| | 23 | Business legal status| | 24 | Tax Statement| | 25 | Exemption Statement|  | 
 **name** | **String**| Document&#39;s name. | 
 **file_content_base64** | **String**| Document file content. base64 encoded. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **document_tag** | **Integer**| Custom data. | [optional] 
 **residence_id** | **Integer**| Document residence Id. The field is mandatory when the document is of type id 24 or 25. Otherwise it should not be provided. | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_document**
> InlineResponse20012 delete_document(id)

delete document

Remove a document from the system.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::DocumentApi.new

id = 789 # Integer | Document's internal id.


begin
  #delete document
  result = api_instance.delete_document(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling DocumentApi->delete_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Document&#39;s internal id. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_document**
> InlineResponse20012 get_document(id)

get a document

get a document

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::DocumentApi.new

id = 789 # Integer | Document's internal id.


begin
  #get a document
  result = api_instance.get_document(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling DocumentApi->get_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Document&#39;s internal id. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_documents**
> InlineResponse20012 get_documents(opts)

search documents

Search for documents.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::DocumentApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  document_id: 56, # Integer | Document's unique id.
  document_tag: 'document_tag_example', # String | Custom data.
  document_status: 'document_status_example', # String | The status of the document. Possible values: * PENDING * CANCELED * VALIDATED 
  document_type_id: 56, # Integer | Document type id.
  document_type: 'document_type_example', # String | Document's type.
  user_id: 56, # Integer | Document user's id.
  user_name: 'user_name_example', # String | Document user's name.
  user_email: 'user_email_example', # String | Document user's email.
  file_name: 'file_name_example', # String | Document's name.
  file_size: 56, # Integer | Document's size.
  file_type: 56, # Integer | Document's type.
  is_agent: 'is_agent_example', # String | is agent field.
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists). 
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists). 
  sort_by: 'sort_by_example', # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
  sort_order: 'sort_order_example', # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
  created_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  created_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_to: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
}

begin
  #search documents
  result = api_instance.get_documents(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling DocumentApi->get_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **document_id** | **Integer**| Document&#39;s unique id. | [optional] 
 **document_tag** | **String**| Custom data. | [optional] 
 **document_status** | **String**| The status of the document. Possible values: * PENDING * CANCELED * VALIDATED  | [optional] 
 **document_type_id** | **Integer**| Document type id. | [optional] 
 **document_type** | **String**| Document&#39;s type. | [optional] 
 **user_id** | **Integer**| Document user&#39;s id. | [optional] 
 **user_name** | **String**| Document user&#39;s name. | [optional] 
 **user_email** | **String**| Document user&#39;s email. | [optional] 
 **file_name** | **String**| Document&#39;s name. | [optional] 
 **file_size** | **Integer**| Document&#39;s size. | [optional] 
 **file_type** | **Integer**| Document&#39;s type. | [optional] 
 **is_agent** | **String**| is agent field. | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_document**
> InlineResponse20012 put_document(id)

update a document

Update a document.

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::DocumentApi.new

id = 789 # Integer | Document's internal id.


begin
  #update a document
  result = api_instance.put_document(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling DocumentApi->put_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Document&#39;s internal id. | 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



