# TreezorClient::PayinrefundApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payinrefund**](PayinrefundApi.md#delete_payinrefund) | **DELETE** /payinrefunds/{id} | cancel a pay in refund
[**get_payinrefund**](PayinrefundApi.md#get_payinrefund) | **GET** /payinrefunds/{id} | get a pay in refund
[**get_payinrefunds**](PayinrefundApi.md#get_payinrefunds) | **GET** /payinrefunds | search pay in refunds
[**post_payinrefunds**](PayinrefundApi.md#post_payinrefunds) | **POST** /payinrefunds | create a pay in refund


# **delete_payinrefund**
> InlineResponse20018 delete_payinrefund(id)

cancel a pay in refund

Change payin refund's status to CANCELED. A validated payin refund can't be cancelled.

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

api_instance = TreezorClient::PayinrefundApi.new

id = 789 # Integer | Payinrefund's internal id.


begin
  #cancel a pay in refund
  result = api_instance.delete_payinrefund(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinrefundApi->delete_payinrefund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payinrefund&#39;s internal id. | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payinrefund**
> InlineResponse20018 get_payinrefund(id)

get a pay in refund

Get a payin refund from the system.

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

api_instance = TreezorClient::PayinrefundApi.new

id = 789 # Integer | Payinrefund's internal id.


begin
  #get a pay in refund
  result = api_instance.get_payinrefund(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinrefundApi->get_payinrefund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payinrefund&#39;s internal id. | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payinrefunds**
> InlineResponse20018 get_payinrefunds(opts)

search pay in refunds

Search for payinrefunds in the system.

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

api_instance = TreezorClient::PayinrefundApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payin_id: 'payin_id_example', # String | Payin's id.
  payinrefund_id: 56, # Integer | Payinrefund's id.
  payinrefund_tag: 'payinrefund_tag_example', # String | Custom data.
  payinrefund_status: 'payinrefund_status_example', # String | Payinrefund's status. Possible values: * PENDING * CANCELED * VALIDATED
  wallet_id: 56, # Integer | Wallet's id to refund.
  payinrefund_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | payinrefund's date. Format: YYYY-MM-DD
  user_id: 56, # Integer | User's id who made refunds.
  amount: 'amount_example', # String | Refund's amount.
  currency: 'currency_example', # String | Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
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
  #search pay in refunds
  result = api_instance.get_payinrefunds(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinrefundApi->get_payinrefunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payin_id** | **String**| Payin&#39;s id. | [optional] 
 **payinrefund_id** | **Integer**| Payinrefund&#39;s id. | [optional] 
 **payinrefund_tag** | **String**| Custom data. | [optional] 
 **payinrefund_status** | **String**| Payinrefund&#39;s status. Possible values: * PENDING * CANCELED * VALIDATED | [optional] 
 **wallet_id** | **Integer**| Wallet&#39;s id to refund. | [optional] 
 **payinrefund_date** | **DateTime**| payinrefund&#39;s date. Format: YYYY-MM-DD | [optional] 
 **user_id** | **Integer**| User&#39;s id who made refunds. | [optional] 
 **amount** | **String**| Refund&#39;s amount. | [optional] 
 **currency** | **String**| Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_payinrefunds**
> InlineResponse20018 post_payinrefunds(payin_id, amount, currency, opts)

create a pay in refund

Create a new payinrefund in the system.

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

api_instance = TreezorClient::PayinrefundApi.new

payin_id = 'payin_id_example' # String | payin's id to refund.

amount = 56 # Integer | Refund amount.

currency = 'currency_example' # String | Refund currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payinrefund_tag: 'payinrefund_tag_example', # String | Custom data.
  comment: 'comment_example' # String | End user, client or issuer comment.
}

begin
  #create a pay in refund
  result = api_instance.post_payinrefunds(payin_id, amount, currency, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinrefundApi->post_payinrefunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payin_id** | **String**| payin&#39;s id to refund. | 
 **amount** | **Integer**| Refund amount. | 
 **currency** | **String**| Refund currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payinrefund_tag** | **String**| Custom data. | [optional] 
 **comment** | **String**| End user, client or issuer comment. | [optional] 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



