# TreezorClient::PayinApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_payin**](PayinApi.md#delete_payin) | **DELETE** /payins/{id} | delete a pay in
[**get_payin**](PayinApi.md#get_payin) | **GET** /payins/{id} | get a pay in
[**get_payins**](PayinApi.md#get_payins) | **GET** /payins | search pay ins
[**post_payin**](PayinApi.md#post_payin) | **POST** /payins | create a pay in


# **delete_payin**
> InlineResponse20017 delete_payin(id)

delete a pay in

Deactivate a payin in the system.

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

api_instance = TreezorClient::PayinApi.new

id = 789 # Integer | Payin's id.


begin
  #delete a pay in
  result = api_instance.delete_payin(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinApi->delete_payin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payin&#39;s id. | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payin**
> InlineResponse20017 get_payin(id)

get a pay in

Get a payin from the system by its id.

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

api_instance = TreezorClient::PayinApi.new

id = 789 # Integer | Payin's id.


begin
  #get a pay in
  result = api_instance.get_payin(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinApi->get_payin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payin&#39;s id. | 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_payins**
> InlineResponse20017 get_payins(opts)

search pay ins

Get payins that match search criteria.

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

api_instance = TreezorClient::PayinApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 56, # Integer | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payin_id: 56, # Integer | Payin's id.
  wallet_id: 56, # Integer | Payin's wallet id.
  payin_tag: "payin_tag_example", # String | Client custom data.
  payin_status: "payin_status_example", # String | Payins's status.
  user_id: 56, # Integer | User's id who performed the operation (debited).
  user_name: "user_name_example", # String | User's name who performed the operation (debited).
  user_email: "user_email_example", # String | User's email who performed the operation (debited).
  beneficiary_user_id: 56, # Integer | User's id who received the operation (credited).
  event_alias: "event_alias_example", # String | Wallet eventAlias of the payin (credited wallet).
  wallet_type_id: 56, # Integer | Payin's wallet type id.
  payment_method_id: "payment_method_id_example", # String | Payin's payment method id.
  created_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  created_date_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_from: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_to: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists). 
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists). 
  sort_by: "sort_by_example", # String | The transaction element you want to sort the list with. Default value : createdDate. More info [here](https://agent.treezor.com/lists). 
  sort_order: "sort_order_example" # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
}

begin
  #search pay ins
  result = api_instance.get_payins(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinApi->get_payins: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **Integer**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payin_id** | **Integer**| Payin&#39;s id. | [optional] 
 **wallet_id** | **Integer**| Payin&#39;s wallet id. | [optional] 
 **payin_tag** | **String**| Client custom data. | [optional] 
 **payin_status** | **String**| Payins&#39;s status. | [optional] 
 **user_id** | **Integer**| User&#39;s id who performed the operation (debited). | [optional] 
 **user_name** | **String**| User&#39;s name who performed the operation (debited). | [optional] 
 **user_email** | **String**| User&#39;s email who performed the operation (debited). | [optional] 
 **beneficiary_user_id** | **Integer**| User&#39;s id who received the operation (credited). | [optional] 
 **event_alias** | **String**| Wallet eventAlias of the payin (credited wallet). | [optional] 
 **wallet_type_id** | **Integer**| Payin&#39;s wallet type id. | [optional] 
 **payment_method_id** | **String**| Payin&#39;s payment method id. | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : createdDate. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_payin**
> InlineResponse20017 post_payin(wallet_id, user_id, payment_method_id, amount, currency, opts)

create a pay in

Create a new pay in in the system.

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

api_instance = TreezorClient::PayinApi.new

wallet_id = 56 # Integer | Credited wallet's ID

user_id = 56 # Integer | User's id who makes the pay in. NB : this parameter should should not be transmitted in the case of payin of method Sepa Direct Debit Core (21). It will be set automatically by the system. 

payment_method_id = 56 # Integer | | Id | Payment by | | ---| --- | | 3 | Check | | 11 | Card | | 14 | Oneclick card (without payment form) | | 21 | Sepa Direct Debit Core | | 23 | Full Hosted HTML Payment Form. Please note that if you use this paymentMethodId the flieds paymentAcceptedUrl, paymentRefusedUrl, paymentWaitingUrl, paymentCanceledUrl and paymentExceptionUrl are mandatory. CSS of the payment page can be customized | | 24 | IFrame Payment Form. Please note that if you use this paymentMethodId the flieds paymentAcceptedUrl, paymentRefusedUrl, paymentWaitingUrl, paymentCanceledUrl and paymentExceptionUrl are mandatory. CSS of the payment page can be customized| | 25 | Payment made through an SDK - You cannot directly create a payin directly with this method id. The payin will be automatically created by the system. | 

amount = 3.4 # Float | Pay in amount.

currency = "currency_example" # String | Payin currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). Must be the same as the wallet's. 

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  payin_tag: "payin_tag_example", # String | Client custom data.
  oneclickcard_id: 56, # Integer | Oneclick card's id. Mandatory if payment method is 14. Useless otherwise.
  payment_accepted_url: "payment_accepted_url_example", # String | Url where cardholder is redirected if payment is successful. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory.
  payment_waiting_url: "payment_waiting_url_example", # String | Url where cardholder is redirected to wait payment processing. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory.
  payment_refused_url: "payment_refused_url_example", # String | Url where cardholder is redirected if payment is refused. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory.
  payment_canceled_url: "payment_canceled_url_example", # String | Url where cardholder is redirected if payment is canceled. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory.
  payment_exception_url: "payment_exception_url_example", # String | Url where cardholder is redirected if the payment process raised an exception. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory.
  distributor_fee: 3.4, # Float | Distributor fee
  message_to_user: "message_to_user_example", # String | Message to send to wallet's user. In the case of a Sepa Direct Debit Core payment method this parameter will be the reconciliation information transmitted to the Debtor (ie. Invoice number ...). In this case it cannot be more than 140 characters.
  language: "language_example", # String | Language for the third party interface.
  created_ip: "created_ip_example", # String | User's IP address
  payin_date: "payin_date_example", # String | The date at which the SDD should be presented. This parameter is mandatory when performing a payin of method SDD Core. Format is YYYY-MM-DD The date should follow some requirements (Traget 2 working day) :    - Be a weekday (Monday to Friday)   - January 1st is excluded   - May 1st is excluded   - December 25 is excluded   - December 26th is excluded   - Easter day is excluded   - Easter Monday is excluded   - Good Friday is excluded 
  mandate_id: 56 # Integer | The id of the mandate. This parameter is mandatory when performing a payin with method SDD Core.
}

begin
  #create a pay in
  result = api_instance.post_payin(wallet_id, user_id, payment_method_id, amount, currency, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayinApi->post_payin: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_id** | **Integer**| Credited wallet&#39;s ID | 
 **user_id** | **Integer**| User&#39;s id who makes the pay in. NB : this parameter should should not be transmitted in the case of payin of method Sepa Direct Debit Core (21). It will be set automatically by the system.  | 
 **payment_method_id** | **Integer**| | Id | Payment by | | ---| --- | | 3 | Check | | 11 | Card | | 14 | Oneclick card (without payment form) | | 21 | Sepa Direct Debit Core | | 23 | Full Hosted HTML Payment Form. Please note that if you use this paymentMethodId the flieds paymentAcceptedUrl, paymentRefusedUrl, paymentWaitingUrl, paymentCanceledUrl and paymentExceptionUrl are mandatory. CSS of the payment page can be customized | | 24 | IFrame Payment Form. Please note that if you use this paymentMethodId the flieds paymentAcceptedUrl, paymentRefusedUrl, paymentWaitingUrl, paymentCanceledUrl and paymentExceptionUrl are mandatory. CSS of the payment page can be customized| | 25 | Payment made through an SDK - You cannot directly create a payin directly with this method id. The payin will be automatically created by the system. |  | 
 **amount** | **Float**| Pay in amount. | 
 **currency** | **String**| Payin currency. Format: [ISO 4217](https://fr.wikipedia.org/wiki/ISO_4217). Must be the same as the wallet&#39;s.  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **payin_tag** | **String**| Client custom data. | [optional] 
 **oneclickcard_id** | **Integer**| Oneclick card&#39;s id. Mandatory if payment method is 14. Useless otherwise. | [optional] 
 **payment_accepted_url** | **String**| Url where cardholder is redirected if payment is successful. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory. | [optional] 
 **payment_waiting_url** | **String**| Url where cardholder is redirected to wait payment processing. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory. | [optional] 
 **payment_refused_url** | **String**| Url where cardholder is redirected if payment is refused. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory. | [optional] 
 **payment_canceled_url** | **String**| Url where cardholder is redirected if payment is canceled. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory. | [optional] 
 **payment_exception_url** | **String**| Url where cardholder is redirected if the payment process raised an exception. When using paymentMethodId 23 and 24 an HTTPS URL is mandatory. | [optional] 
 **distributor_fee** | **Float**| Distributor fee | [optional] 
 **message_to_user** | **String**| Message to send to wallet&#39;s user. In the case of a Sepa Direct Debit Core payment method this parameter will be the reconciliation information transmitted to the Debtor (ie. Invoice number ...). In this case it cannot be more than 140 characters. | [optional] 
 **language** | **String**| Language for the third party interface. | [optional] 
 **created_ip** | **String**| User&#39;s IP address | [optional] 
 **payin_date** | **String**| The date at which the SDD should be presented. This parameter is mandatory when performing a payin of method SDD Core. Format is YYYY-MM-DD The date should follow some requirements (Traget 2 working day) :    - Be a weekday (Monday to Friday)   - January 1st is excluded   - May 1st is excluded   - December 25 is excluded   - December 26th is excluded   - Easter day is excluded   - Easter Monday is excluded   - Good Friday is excluded  | [optional] 
 **mandate_id** | **Integer**| The id of the mandate. This parameter is mandatory when performing a payin with method SDD Core. | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



