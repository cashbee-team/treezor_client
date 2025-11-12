# TreezorClient::PayoutApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payout**](PayoutApi.md#delete_payout) | **DELETE** /payouts/{id} | cancel a payout
[**get_payout**](PayoutApi.md#get_payout) | **GET** /payouts/{id} | get a payout
[**get_payouts**](PayoutApi.md#get_payouts) | **GET** /payouts | search payout(s)
[**post_payout**](PayoutApi.md#post_payout) | **POST** /payouts | create a pay out


# **delete_payout**
> InlineResponse20019 delete_payout(id)

cancel a payout

Change pay out status to CANCELED. A VALIDATED pay out can't be canceled.

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

api_instance = TreezorClient::PayoutApi.new

id = 789 # Integer | Payouts internal id.


begin
  #cancel a payout
  result = api_instance.delete_payout(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayoutApi->delete_payout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payouts internal id. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payout**
> InlineResponse20019 get_payout(id)

get a payout

Get a pay out from the system.

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

api_instance = TreezorClient::PayoutApi.new

id = 789 # Integer | Payouts internal id.


begin
  #get a payout
  result = api_instance.get_payout(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayoutApi->get_payout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payouts internal id. | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payouts**
> InlineResponse20019 get_payouts(opts)

search payout(s)

Get payout(s) that match search criteria. The request must contains at least one of those inputs  payoutId, bankaccountId, beneficiaryId, payoutTypeId, payoutTag

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

api_instance = TreezorClient::PayoutApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payout_id: 56, # Integer | Payout's Id
  payout_tag: 'payout_tag_example', # String | Custom data.
  payout_status: 'payout_status_example', # String | pay out status; Possible values: * CANCELED * PENDING * VALIDATED 
  payout_type_id: 56, # Integer | Pay out type's id :  | ID | Description | |-----|-----| | 1 | Credit Transfer | | 2 | Direct Debit | 
  wallet_id: 56, # Integer | Pay out wallet's id.
  user_id: 56, # Integer | Pay out user's id.
  payout_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | pay out execution date. Format: YYYY-MM-DD HH:MM:SS' 
  bankaccount_id: 56, # Integer | Pay out bank account id.
  beneficiary_id: 56, # Integer | Pay out beneficiary id.
  amount: 'amount_example', # String | Pay out amount.
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
  #search payout(s)
  result = api_instance.get_payouts(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayoutApi->get_payouts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payout_id** | **Integer**| Payout&#39;s Id | [optional] 
 **payout_tag** | **String**| Custom data. | [optional] 
 **payout_status** | **String**| pay out status; Possible values: * CANCELED * PENDING * VALIDATED  | [optional] 
 **payout_type_id** | **Integer**| Pay out type&#39;s id :  | ID | Description | |-----|-----| | 1 | Credit Transfer | | 2 | Direct Debit |  | [optional] 
 **wallet_id** | **Integer**| Pay out wallet&#39;s id. | [optional] 
 **user_id** | **Integer**| Pay out user&#39;s id. | [optional] 
 **payout_date** | **DateTime**| pay out execution date. Format: YYYY-MM-DD HH:MM:SS&#39;  | [optional] 
 **bankaccount_id** | **Integer**| Pay out bank account id. | [optional] 
 **beneficiary_id** | **Integer**| Pay out beneficiary id. | [optional] 
 **amount** | **String**| Pay out amount. | [optional] 
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

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_payout**
> InlineResponse20019 post_payout(wallet_id, amount, currency, opts)

create a pay out

Create a new pay out in the system.

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

api_instance = TreezorClient::PayoutApi.new

wallet_id = 56 # Integer | Pay out wallet id.

amount = 56 # Integer | Pay out amount.

currency = 'currency_example' # String | Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). 

opts = { 
  x_trz_vop_exemption: nil, # Object | 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payout_tag: 'payout_tag_example', # String | Custom data.
  bankaccount_id: 56, # Integer | Pay out bank account's id. Mandatory id beneficiaryId is not provided. If bankaccountId and beneficiaryId are both provided, the beneficiaryId will be used.
  beneficiary_id: 56, # Integer | Pay out beneficiary's id. Mandatory id bankaccountId is not provided. If bankaccountId and beneficiaryId are both provided, the beneficiaryId will be used.
  label: 'label_example', # String | Pay out label that will be displayed in the receiver's account (140 chars max).
  supporting_file_link: 'supporting_file_link_example' # String | Support file link
}

begin
  #create a pay out
  result = api_instance.post_payout(wallet_id, amount, currency, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayoutApi->post_payout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_id** | **Integer**| Pay out wallet id. | 
 **amount** | **Integer**| Pay out amount. | 
 **currency** | **String**| Transfert amount currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217).  | 
 **x_trz_vop_exemption** | [**Object**](.md)|  | [optional] 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payout_tag** | **String**| Custom data. | [optional] 
 **bankaccount_id** | **Integer**| Pay out bank account&#39;s id. Mandatory id beneficiaryId is not provided. If bankaccountId and beneficiaryId are both provided, the beneficiaryId will be used. | [optional] 
 **beneficiary_id** | **Integer**| Pay out beneficiary&#39;s id. Mandatory id bankaccountId is not provided. If bankaccountId and beneficiaryId are both provided, the beneficiaryId will be used. | [optional] 
 **label** | **String**| Pay out label that will be displayed in the receiver&#39;s account (140 chars max). | [optional] 
 **supporting_file_link** | **String**| Support file link | [optional] 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



