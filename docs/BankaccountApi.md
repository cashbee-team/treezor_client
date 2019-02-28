# TreezorClient::BankaccountApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_bankaccount**](BankaccountApi.md#delete_bankaccount) | **DELETE** /bankaccounts/{id} | deactivate a bank account
[**get_bankaccount**](BankaccountApi.md#get_bankaccount) | **GET** /bankaccounts/{id} | get a bank account
[**get_bankaccounts**](BankaccountApi.md#get_bankaccounts) | **GET** /bankaccounts | search bank accounts
[**post_bankaccount**](BankaccountApi.md#post_bankaccount) | **POST** /bankaccounts | create a bank account


# **delete_bankaccount**
> InlineResponse2003 delete_bankaccount(id)

deactivate a bank account

Change bank account's status to CANCELED. If a payout is being validated on this bank account, it can not be canceled.

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

api_instance = TreezorClient::BankaccountApi.new

id = 789 # Integer | Bank Accounts internal id.


begin
  #deactivate a bank account
  result = api_instance.delete_bankaccount(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BankaccountApi->delete_bankaccount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Bank Accounts internal id. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bankaccount**
> InlineResponse2003 get_bankaccount(id)

get a bank account

Get a bank account from the system.

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

api_instance = TreezorClient::BankaccountApi.new

id = 789 # Integer | Bank Accounts internal id.


begin
  #get a bank account
  result = api_instance.get_bankaccount(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BankaccountApi->get_bankaccount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Bank Accounts internal id. | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_bankaccounts**
> InlineResponse2003 get_bankaccounts(opts)

search bank accounts

Get bank accounts that match search criteria.

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

api_instance = TreezorClient::BankaccountApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  bankaccount_id: 56, # Integer | bank account id.
  bankaccount_status: 'bankaccount_status_example', # String | bank account status. Possible values: * CANCELED * PENDING * VALIDATED 
  user_id: 56, # Integer | Bank account owner user's id
  bankaccount_iban: 'bankaccount_iban_example', # String | Bank account IBAN
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
  #search bank accounts
  result = api_instance.get_bankaccounts(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BankaccountApi->get_bankaccounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **bankaccount_id** | **Integer**| bank account id. | [optional] 
 **bankaccount_status** | **String**| bank account status. Possible values: * CANCELED * PENDING * VALIDATED  | [optional] 
 **user_id** | **Integer**| Bank account owner user&#39;s id | [optional] 
 **bankaccount_iban** | **String**| Bank account IBAN | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_bankaccount**
> InlineResponse2003 post_bankaccount(user_id, bankaccount_owner_name, bankaccount_owner_address, bankaccount_iban, bankaccount_bic, bankaccount_type, opts)

create a bank account

Create a new benefeciary bank account in the system.

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

api_instance = TreezorClient::BankaccountApi.new

user_id = 56 # Integer | Owner user's id.

bankaccount_owner_name = 'bankaccount_owner_name_example' # String | Bank account owner's name.

bankaccount_owner_address = 'bankaccount_owner_address_example' # String | Bank account owner's address.

bankaccount_iban = 'bankaccount_iban_example' # String | Beneficiary bank account's IBAN.

bankaccount_bic = 'bankaccount_bic_example' # String | Beneficiary bank account's BIC (or SWIFT).

bankaccount_type = 'bankaccount_type_example' # String | Beneficiary bank account's type.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  bankaccount_tag: 'bankaccount_tag_example', # String | Custom data.
  name: 'name_example' # String | Bank account's name.
}

begin
  #create a bank account
  result = api_instance.post_bankaccount(user_id, bankaccount_owner_name, bankaccount_owner_address, bankaccount_iban, bankaccount_bic, bankaccount_type, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BankaccountApi->post_bankaccount: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| Owner user&#39;s id. | 
 **bankaccount_owner_name** | **String**| Bank account owner&#39;s name. | 
 **bankaccount_owner_address** | **String**| Bank account owner&#39;s address. | 
 **bankaccount_iban** | **String**| Beneficiary bank account&#39;s IBAN. | 
 **bankaccount_bic** | **String**| Beneficiary bank account&#39;s BIC (or SWIFT). | 
 **bankaccount_type** | **String**| Beneficiary bank account&#39;s type. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **bankaccount_tag** | **String**| Custom data. | [optional] 
 **name** | **String**| Bank account&#39;s name. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



