# TreezorClient::TransactionApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transaction**](TransactionApi.md#get_transaction) | **GET** /transactions/{id} | get a transaction
[**get_transactions**](TransactionApi.md#get_transactions) | **GET** /transactions | search transactions


# **get_transaction**
> InlineResponse20022 get_transaction(id)

get a transaction

Get a transaction from the system.

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

api_instance = TreezorClient::TransactionApi.new

id = 789 # Integer | Transaction's internal id.


begin
  #get a transaction
  result = api_instance.get_transaction(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransactionApi->get_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Transaction&#39;s internal id. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transactions**
> InlineResponse20022 get_transactions(opts)

search transactions

Get transactions that match search criteria.

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

api_instance = TreezorClient::TransactionApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  transaction_id: 56, # Integer | Transaction's Id
  transaction_type: 'transaction_type_example', # String | Transaction types. Possible values: * Payin * Payout * Transfer * Transfer Refund * Payin Refund * Discount * Bill 
  wallet_id: 56, # Integer | Transactions' wallet id.
  user_id: 56, # Integer | Transactions' user id.
  name: 'name_example', # String | Transactions' name.
  description: 'description_example', # String | transactions' description.
  amount: 'amount_example', # String | Transactions' amount.
  currency: 'currency_example', # String | Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
  value_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The value date of the transaction (date applied for the payment) Format : YYYY-MM-DD HH:MM:SS
  execution_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Date of the execution of the transaction Format : YYYY-MM-DD HH:MM:SS
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists). 
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists). 
  sort_by: 'sort_by_example', # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
  sort_order: 'sort_order_example', # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
  created_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  created_date_to: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
}

begin
  #search transactions
  result = api_instance.get_transactions(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransactionApi->get_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **transaction_id** | **Integer**| Transaction&#39;s Id | [optional] 
 **transaction_type** | **String**| Transaction types. Possible values: * Payin * Payout * Transfer * Transfer Refund * Payin Refund * Discount * Bill  | [optional] 
 **wallet_id** | **Integer**| Transactions&#39; wallet id. | [optional] 
 **user_id** | **Integer**| Transactions&#39; user id. | [optional] 
 **name** | **String**| Transactions&#39; name. | [optional] 
 **description** | **String**| transactions&#39; description. | [optional] 
 **amount** | **String**| Transactions&#39; amount. | [optional] 
 **currency** | **String**| Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | [optional] 
 **value_date** | **DateTime**| The value date of the transaction (date applied for the payment) Format : YYYY-MM-DD HH:MM:SS | [optional] 
 **execution_date** | **DateTime**| Date of the execution of the transaction Format : YYYY-MM-DD HH:MM:SS | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



