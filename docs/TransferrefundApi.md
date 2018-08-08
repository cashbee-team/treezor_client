# TreezorClient::TransferrefundApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_transferrefund**](TransferrefundApi.md#delete_transferrefund) | **DELETE** /transferrefunds/{id} | cancel a transfer refund
[**get_transferrefund**](TransferrefundApi.md#get_transferrefund) | **GET** /transferrefunds/{id} | get a transfer refund
[**get_transferrefunds**](TransferrefundApi.md#get_transferrefunds) | **GET** /transferrefunds | search transfer refunds
[**post_transferrefunds**](TransferrefundApi.md#post_transferrefunds) | **POST** /transferrefunds | create a transfer refund


# **delete_transferrefund**
> InlineResponse20022 delete_transferrefund(id)

cancel a transfer refund

Change transfer refund's status to CANCELED. A validated transfer refund can't be cancelled.

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

api_instance = TreezorClient::TransferrefundApi.new

id = 789 # Integer | Transferrefunds internal id.


begin
  #cancel a transfer refund
  result = api_instance.delete_transferrefund(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferrefundApi->delete_transferrefund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Transferrefunds internal id. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transferrefund**
> InlineResponse20022 get_transferrefund(id)

get a transfer refund

Get a transfer refund from the system.

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

api_instance = TreezorClient::TransferrefundApi.new

id = 789 # Integer | Trasnfert refund internal id.


begin
  #get a transfer refund
  result = api_instance.get_transferrefund(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferrefundApi->get_transferrefund: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Trasnfert refund internal id. | 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transferrefunds**
> InlineResponse20022 get_transferrefunds(opts)

search transfer refunds

Get transfer refunds that match search criteria.

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

api_instance = TreezorClient::TransferrefundApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  transferrefund_id: 56, # Integer | Transfer refund id.
  transferrefund_tag: "transferrefund_tag_example", # String | Custom data.
  transferrefund_status: "transferrefund_status_example", # String | Transfer refund status. Possible values: * PENDING * CANCELED * VALIDATED 
  wallet_id: 56, # Integer | Refunded wallet's id.
  transfer_id: 56, # Integer | Initial transfer's id.
  transferrefund_date: 56, # Integer | transfert refund's date. Format: YYYY-MM-DD HH:MM:SS
  user_id: 56, # Integer | User's id of who has made the transfer refund.
  amount: "amount_example", # String | Refund amount.
  currency: "currency_example", # String | Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists).
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists).
  sort_by: "sort_by_example", # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).
  sort_order: "sort_order_example", # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
  created_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)
  created_date_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)
  updated_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)
  updated_date_to: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)
}

begin
  #search transfer refunds
  result = api_instance.get_transferrefunds(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferrefundApi->get_transferrefunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **transferrefund_id** | **Integer**| Transfer refund id. | [optional] 
 **transferrefund_tag** | **String**| Custom data. | [optional] 
 **transferrefund_status** | **String**| Transfer refund status. Possible values: * PENDING * CANCELED * VALIDATED  | [optional] 
 **wallet_id** | **Integer**| Refunded wallet&#39;s id. | [optional] 
 **transfer_id** | **Integer**| Initial transfer&#39;s id. | [optional] 
 **transferrefund_date** | **Integer**| transfert refund&#39;s date. Format: YYYY-MM-DD HH:MM:SS | [optional] 
 **user_id** | **Integer**| User&#39;s id of who has made the transfer refund. | [optional] 
 **amount** | **String**| Refund amount. | [optional] 
 **currency** | **String**| Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists). | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_transferrefunds**
> InlineResponse20023 post_transferrefunds(transfer_id, amount, currency, opts)

create a transfer refund

Create a new transfer refund in the system.

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

api_instance = TreezorClient::TransferrefundApi.new

transfer_id = 56 # Integer | transfer's id to refund.

amount = 56 # Integer | Refund amount

currency = "currency_example" # String | Transfert's currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  transferrefund_tag: "transferrefund_tag_example", # String | Custom data.
  comment: "comment_example" # String | End user, client or issuer comment.
}

begin
  #create a transfer refund
  result = api_instance.post_transferrefunds(transfer_id, amount, currency, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferrefundApi->post_transferrefunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transfer_id** | **Integer**| transfer&#39;s id to refund. | 
 **amount** | **Integer**| Refund amount | 
 **currency** | **String**| Transfert&#39;s currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **transferrefund_tag** | **String**| Custom data. | [optional] 
 **comment** | **String**| End user, client or issuer comment. | [optional] 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



