# TreezorClient::TransferApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_transfer**](TransferApi.md#delete_transfer) | **DELETE** /transfers/{id} | cancel a transfer
[**get_transfer**](TransferApi.md#get_transfer) | **GET** /transfers/{id} | get a transfer
[**get_transfers**](TransferApi.md#get_transfers) | **GET** /transfers | search transfers
[**post_transfers**](TransferApi.md#post_transfers) | **POST** /transfers | create a transfer


# **delete_transfer**
> InlineResponse20021 delete_transfer(id)

cancel a transfer

Change transfer's status to CANCELED. A validated transfer can't be cancelled.

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

api_instance = TreezorClient::TransferApi.new

id = 789 # Integer | Transfert internal id.


begin
  #cancel a transfer
  result = api_instance.delete_transfer(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferApi->delete_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Transfert internal id. | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transfer**
> InlineResponse20021 get_transfer(id)

get a transfer

Get a transfert from the system.

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

api_instance = TreezorClient::TransferApi.new

id = 789 # Integer | Transfers internal id.


begin
  #get a transfer
  result = api_instance.get_transfer(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferApi->get_transfer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Transfers internal id. | 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transfers**
> InlineResponse20021 get_transfers(opts)

search transfers

Search for transfers in the system.

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

api_instance = TreezorClient::TransferApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  transfer_id: 56, # Integer | Transfer's id.
  transfer_tag: "transfer_tag_example", # String | Custom data.
  transfer_status: "transfer_status_example", # String | Transfer's status. Possible values: * PENDING * CANCELED * VALIDATED 
  label: "label_example", # String | Transfer's label.
  wallet_id: 56, # Integer | Debited wallet's id.
  wallet_name: "wallet_name_example", # String | Debited wallet's name.
  wallet_type_id: 56, # Integer | Debited wallet's type id.
  beneficiary_wallet_id: 56, # Integer | Credited wallet's id.
  beneficiary_wallet_name: "beneficiary_wallet_name_example", # String | Credited wallet's name.
  beneficiary_wallet_type_id: 56, # Integer | Credited wallet's type id.
  user_id: 56, # Integer | Debited wallet user's id.
  beneficiary_user_id: 56, # Integer | Credited wallet user's id.
  transfer_date: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Transfert's date. Format : YYYY-MM-DD HH:MM:SS 
  amount: "amount_example", # String | Transfert's amount.
  currency: "currency_example", # String | Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 
  transfer_type_id: 56, # Integer | The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet | | 2 | Card transaction | | 3 | Client fees | | 4 | Credit note | 
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
  #search transfers
  result = api_instance.get_transfers(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferApi->get_transfers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **transfer_id** | **Integer**| Transfer&#39;s id. | [optional] 
 **transfer_tag** | **String**| Custom data. | [optional] 
 **transfer_status** | **String**| Transfer&#39;s status. Possible values: * PENDING * CANCELED * VALIDATED  | [optional] 
 **label** | **String**| Transfer&#39;s label. | [optional] 
 **wallet_id** | **Integer**| Debited wallet&#39;s id. | [optional] 
 **wallet_name** | **String**| Debited wallet&#39;s name. | [optional] 
 **wallet_type_id** | **Integer**| Debited wallet&#39;s type id. | [optional] 
 **beneficiary_wallet_id** | **Integer**| Credited wallet&#39;s id. | [optional] 
 **beneficiary_wallet_name** | **String**| Credited wallet&#39;s name. | [optional] 
 **beneficiary_wallet_type_id** | **Integer**| Credited wallet&#39;s type id. | [optional] 
 **user_id** | **Integer**| Debited wallet user&#39;s id. | [optional] 
 **beneficiary_user_id** | **Integer**| Credited wallet user&#39;s id. | [optional] 
 **transfer_date** | **DateTime**| Transfert&#39;s date. Format : YYYY-MM-DD HH:MM:SS  | [optional] 
 **amount** | **String**| Transfert&#39;s amount. | [optional] 
 **currency** | **String**| Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | [optional] 
 **transfer_type_id** | **Integer**| The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet | | 2 | Card transaction | | 3 | Client fees | | 4 | Credit note |  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists). | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_transfers**
> InlineResponse20021 post_transfers(wallet_id, beneficiary_wallet_id, amount, currency, opts)

create a transfer

Create a new transfer in the system.

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

api_instance = TreezorClient::TransferApi.new

wallet_id = 56 # Integer | Debited wallet's ID

beneficiary_wallet_id = 56 # Integer | Credited wallet's ID

amount = 56 # Integer | Transfer's amount

currency = "currency_example" # String | Transfert's currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  transfer_tag: "transfer_tag_example", # String | Custom data.
  label: "label_example", # String | Custom data.
  transfer_type_id: 56 # Integer | The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet (default value) | | 3 | Client fees | | 4 | Credit note | 
}

begin
  #create a transfer
  result = api_instance.post_transfers(wallet_id, beneficiary_wallet_id, amount, currency, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TransferApi->post_transfers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_id** | **Integer**| Debited wallet&#39;s ID | 
 **beneficiary_wallet_id** | **Integer**| Credited wallet&#39;s ID | 
 **amount** | **Integer**| Transfer&#39;s amount | 
 **currency** | **String**| Transfert&#39;s currency. Debited wallet and credited wallet must share same currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **transfer_tag** | **String**| Custom data. | [optional] 
 **label** | **String**| Custom data. | [optional] 
 **transfer_type_id** | **Integer**| The Type Id of the Transfer:  | ID | Description | |-----|-----| | 1 | Wallet to wallet (default value) | | 3 | Client fees | | 4 | Credit note |  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



