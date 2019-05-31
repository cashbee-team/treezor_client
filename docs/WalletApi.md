# TreezorClient::WalletApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_wallet**](WalletApi.md#delete_wallet) | **DELETE** /wallets/{id} | delete a wallet
[**get_wallet**](WalletApi.md#get_wallet) | **GET** /wallets/{id} | get a wallet
[**get_wallets**](WalletApi.md#get_wallets) | **GET** /wallets | search wallets
[**post_wallets**](WalletApi.md#post_wallets) | **POST** /wallets | create a wallet
[**put_wallet**](WalletApi.md#put_wallet) | **PUT** /wallets/{id} | update a wallet


# **delete_wallet**
> InlineResponse20028 delete_wallet(id, origin, opts)

delete a wallet

Change wallet's status to **CANCELED**.

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

api_instance = TreezorClient::WalletApi.new

id = 56 # Integer | Wallet's id

origin = 'origin_example' # String | Request's origin. Possible values are: * OPERATOR * USER 

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #delete a wallet
  result = api_instance.delete_wallet(id, origin, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling WalletApi->delete_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Wallet&#39;s id | 
 **origin** | **String**| Request&#39;s origin. Possible values are: * OPERATOR * USER  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallet**
> InlineResponse20028 get_wallet(id, opts)

get a wallet



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

api_instance = TreezorClient::WalletApi.new

id = 789 # Integer | Object internal id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #get a wallet
  result = api_instance.get_wallet(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling WalletApi->get_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Object internal id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_wallets**
> InlineResponse20028 get_wallets(opts)

search wallets

Get wallets from the system that match the search criteria.

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

api_instance = TreezorClient::WalletApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 56, # Integer | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  wallet_id: 56, # Integer | Wallet's unique id.
  wallet_status: 'wallet_status_example', # String | Wallet's status:  * **validated**: Wallet is active. It is possible to deposit to or retrieve money from the wallet.  * **cancelled**: Wallet is closed. No action possible, there is no money in the wallet, it was closed by an operator or by the user.  * **pending**: Wallet being validated (e.g. suspected fraud, late submission of documents' validation ... KYC ). In this case, it is not possible to use the wallet for transactions.
  user_id: 56, # Integer | Wallet owner's id.
  parent_user_id: 56, # Integer | Parent user id of the wallet owner
  wallet_tag: 'wallet_tag_example', # String | Custom data.
  wallet_type_id: 56, # Integer | Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 
  event_name: 'event_name_example', # String | Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 
  event_alias: 'event_alias_example', # String | Short url wallet name. It's automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet=mywedding 
  event_payin_start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime |  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD HH:MM:SS
  event_payin_end_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Deadline to money deposit on the wallet. Format : YYYY-MM-DD HH:MM:SS 
  tariff_id: 56, # Integer | Wallet pricing id.
  payin_count: 56, # Integer | Number of payin done on the wallet.
  solde: 'solde_example', # String | Wallet current balance.
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
  #search wallets
  result = api_instance.get_wallets(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling WalletApi->get_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **Integer**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **wallet_id** | **Integer**| Wallet&#39;s unique id. | [optional] 
 **wallet_status** | **String**| Wallet&#39;s status:  * **validated**: Wallet is active. It is possible to deposit to or retrieve money from the wallet.  * **cancelled**: Wallet is closed. No action possible, there is no money in the wallet, it was closed by an operator or by the user.  * **pending**: Wallet being validated (e.g. suspected fraud, late submission of documents&#39; validation ... KYC ). In this case, it is not possible to use the wallet for transactions. | [optional] 
 **user_id** | **Integer**| Wallet owner&#39;s id. | [optional] 
 **parent_user_id** | **Integer**| Parent user id of the wallet owner | [optional] 
 **wallet_tag** | **String**| Custom data. | [optional] 
 **wallet_type_id** | **Integer**| Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) |  | [optional] 
 **event_name** | **String**| Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y  | [optional] 
 **event_alias** | **String**| Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding  | [optional] 
 **event_payin_start_date** | **DateTime**|  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD HH:MM:SS | [optional] 
 **event_payin_end_date** | **DateTime**| Deadline to money deposit on the wallet. Format : YYYY-MM-DD HH:MM:SS  | [optional] 
 **tariff_id** | **Integer**| Wallet pricing id. | [optional] 
 **payin_count** | **Integer**| Number of payin done on the wallet. | [optional] 
 **solde** | **String**| Wallet current balance. | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_wallets**
> InlineResponse20028 post_wallets(wallet_type_id, tariff_id, user_id, currency, event_name, opts)

create a wallet

Create a new wallet in the system..

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

api_instance = TreezorClient::WalletApi.new

wallet_type_id = 56 # Integer | Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) | 

tariff_id = 56 # Integer | Wallet pricing id.

user_id = 56 # Integer | Wallet owner's id.

currency = 'currency_example' # String | The currency that will be used for all wallet money transactions format : ISO 4217 3-letter code for each currency : Euro = EUR ; US Dollar = USD ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ Default currency will be same as the wallet 

event_name = 'event_name_example' # String | Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y 

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 56, # Integer | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  joint_user_id: 56, # Integer | Wallet co-owner's id. This user will not be allowed to collect the money from the wallet. 
  wallet_tag: 'wallet_tag_example', # String | Custom data
  event_alias: 'event_alias_example', # String | Short url wallet name. It's automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet=mywedding. Please note that the eventAlias must be unique. 
  event_date: Date.parse('2013-10-20'), # Date | Wallet event date. Format : YYYY-MM-DD. Default: Created date + 7 days. 
  event_message: 'event_message_example', # String | It can be a description of the wallet.
  event_payin_start_date: Date.parse('2013-10-20'), # Date |  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD. If null, the default date will be the created date of the wallet.
  event_payin_end_date: Date.parse('2013-10-20') # Date | Deadline to money deposit on the wallet. Format : YYYY-MM-DD. If null, the money can be deposited indefinitely on the wallet 
}

begin
  #create a wallet
  result = api_instance.post_wallets(wallet_type_id, tariff_id, user_id, currency, event_name, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling WalletApi->post_wallets: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_type_id** | **Integer**| Wallet type id. The following values are defined:  | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) |  | 
 **tariff_id** | **Integer**| Wallet pricing id. | 
 **user_id** | **Integer**| Wallet owner&#39;s id. | 
 **currency** | **String**| The currency that will be used for all wallet money transactions format : ISO 4217 3-letter code for each currency : Euro &#x3D; EUR ; US Dollar &#x3D; USD ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ Default currency will be same as the wallet  | 
 **event_name** | **String**| Event name that will be used as wallet name. For example, in a wedding list: Wedding of X and Y  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **Integer**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **joint_user_id** | **Integer**| Wallet co-owner&#39;s id. This user will not be allowed to collect the money from the wallet.  | [optional] 
 **wallet_tag** | **String**| Custom data | [optional] 
 **event_alias** | **String**| Short url wallet name. It&#39;s automatically generated by the system, but it could be modified and customised by the user. For example: www.domain.com/wallet&#x3D;mywedding. Please note that the eventAlias must be unique.  | [optional] 
 **event_date** | **Date**| Wallet event date. Format : YYYY-MM-DD. Default: Created date + 7 days.  | [optional] 
 **event_message** | **String**| It can be a description of the wallet. | [optional] 
 **event_payin_start_date** | **Date**|  Wallet activation date. The date from which you can deposit money on the wallet. Format : YYYY-MM-DD. If null, the default date will be the created date of the wallet. | [optional] 
 **event_payin_end_date** | **Date**| Deadline to money deposit on the wallet. Format : YYYY-MM-DD. If null, the money can be deposited indefinitely on the wallet  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_wallet**
> InlineResponse20028 put_wallet(id, opts)

update a wallet

Modifiy wallet information

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

api_instance = TreezorClient::WalletApi.new

id = 789 # Integer | Object internal id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  wallet_type_id: 'wallet_type_id_example', # String | Change wallet type id
  event_name: 'event_name_example', # String | Change event name
  event_alias: 'event_alias_example', # String | Change event alias. Please note that the eventAlias must be unique.
  event_date: 'event_date_example', # String | Change event date
  event_message: 'event_message_example', # String | Change event message
  event_payin_start_date: 'event_payin_start_date_example', # String | Change event payin starting date
  event_payin_end_date: 'event_payin_end_date_example', # String | Change event payin end date
  url_image: 'url_image_example', # String | Change URL image
  image_name: 'image_name_example', # String | Change image name
  tariff_id: 'tariff_id_example' # String | Change tariff id
}

begin
  #update a wallet
  result = api_instance.put_wallet(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling WalletApi->put_wallet: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Object internal id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **wallet_type_id** | **String**| Change wallet type id | [optional] 
 **event_name** | **String**| Change event name | [optional] 
 **event_alias** | **String**| Change event alias. Please note that the eventAlias must be unique. | [optional] 
 **event_date** | **String**| Change event date | [optional] 
 **event_message** | **String**| Change event message | [optional] 
 **event_payin_start_date** | **String**| Change event payin starting date | [optional] 
 **event_payin_end_date** | **String**| Change event payin end date | [optional] 
 **url_image** | **String**| Change URL image | [optional] 
 **image_name** | **String**| Change image name | [optional] 
 **tariff_id** | **String**| Change tariff id | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



