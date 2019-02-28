# TreezorClient::CardApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cardimages_get**](CardApi.md#cardimages_get) | **GET** /cardimages | get a card image
[**cards_create_virtual_post**](CardApi.md#cards_create_virtual_post) | **POST** /cards/CreateVirtual | create a virtual card
[**cards_get**](CardApi.md#cards_get) | **GET** /cards | search cards
[**cards_id_activate_put**](CardApi.md#cards_id_activate_put) | **PUT** /cards/{id}/Activate/ | activate a card
[**cards_id_change_pin_put**](CardApi.md#cards_id_change_pin_put) | **PUT** /cards/{id}/ChangePIN/ | change card&#39;s PIN
[**cards_id_convert_virtual_put**](CardApi.md#cards_id_convert_virtual_put) | **PUT** /cards/{id}/ConvertVirtual/ | convert card to virtual
[**cards_id_delete**](CardApi.md#cards_id_delete) | **DELETE** /cards/{id} | deactivate a card
[**cards_id_get**](CardApi.md#cards_id_get) | **GET** /cards/{id} | get a card
[**cards_id_limits_put**](CardApi.md#cards_id_limits_put) | **PUT** /cards/{id}/Limits/ | update card&#39;s limits
[**cards_id_lock_unlock_put**](CardApi.md#cards_id_lock_unlock_put) | **PUT** /cards/{id}/LockUnlock/ | update card&#39;s blocking status
[**cards_id_options_put**](CardApi.md#cards_id_options_put) | **PUT** /cards/{id}/Options/ | update card&#39;s options
[**cards_id_put**](CardApi.md#cards_id_put) | **PUT** /cards/{id} | update card informations
[**cards_id_regenerate_put**](CardApi.md#cards_id_regenerate_put) | **PUT** /cards/{id}/Regenerate/ | regenerate card
[**cards_id_set_pin_put**](CardApi.md#cards_id_set_pin_put) | **PUT** /cards/{id}/setPIN/ | set card&#39;s PIN
[**cards_id_unblock_pin_put**](CardApi.md#cards_id_unblock_pin_put) | **PUT** /cards/{id}/UnblockPIN/ | unblock card&#39;s PIN
[**cards_register3_ds_post**](CardApi.md#cards_register3_ds_post) | **POST** /cards/Register3DS | Register 3D secure
[**cards_request_physical_post**](CardApi.md#cards_request_physical_post) | **POST** /cards/RequestPhysical | create a physical card


# **cardimages_get**
> InlineResponse2007 cardimages_get(card_id, opts)

get a card image

Return virtual card's image

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

api_instance = TreezorClient::CardApi.new

card_id = 56 # Integer | Vitual card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #get a card image
  result = api_instance.cardimages_get(card_id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cardimages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_id** | **Integer**| Vitual card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_create_virtual_post**
> InlineResponse2006 cards_create_virtual_post(user_id, wallet_id, perms_group, card_print, opts)

create a virtual card

Create a new virtual card. To use a card you will need to activate it (/cards/{id}/Activate/).

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

api_instance = TreezorClient::CardApi.new

user_id = 56 # Integer | User's id of cardholder

wallet_id = 56 # Integer | Wallet's Id in which to create the card

perms_group = 'perms_group_example' # String | Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK| 

card_print = 'card_print_example' # String | Card appareance code, also used to choose the program ID of the card

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  card_tag: 'card_tag_example', # String | Custom field
  batch_delivery_id: 56, # Integer | Batch regroupement identifier (must be between 1 and 238327) NOT YET OPERATIONAL
  limit_atm_year: 56, # Integer | ATM operations limit for a sliding year. No default value.
  limit_atm_month: 56, # Integer | ATM operations limit for a sliding month. No default value.
  limit_atm_week: 56, # Integer | ATM operations limit for a sliding week. Default value 2000Ã¢â€šÂ¬.
  limit_atm_day: 56, # Integer | ATM operations limit for a single day. Default value 1000Ã¢â€šÂ¬.
  limit_atm_all: 56, # Integer | ATM operations limit from beginning. No default value.
  limit_payment_year: 56, # Integer | POS operations limit for a sliding year. No default value.
  limit_payment_month: 56, # Integer | POS operations limit for a sliding month. No default value.
  limit_payment_week: 56, # Integer | POS operations limit for a sliding week. Default value 3000Ã¢â€šÂ¬.
  limit_payment_day: 56, # Integer | POS operations limit for a single day. Default value 2000Ã¢â€šÂ¬.
  limit_payment_all: 56, # Integer | POS operations limit from beginning. No default value.
  payment_daily_limit: 3.4, # Float | POS operations limit for a single day including cents. The decimal delimiter must be \".\". No default value.
  pin: 'pin_example', # String | Card's PIN code value.
  anonymous: 56, # Integer | Card is anonymous. If value is 1 there will be no embossed name.
  send_to_parent: 56, # Integer | If you put the value 1 the delivery address will be the parent user's.
  mcc_restriction_group_id: 56, # Integer | mccRestrictionGroupId you want to apply
  merchant_restriction_group_id: 56, # Integer | merchantRestrictionGroupId you want to apply
  country_restriction_group_id: 56, # Integer | countryRestrictionGroupId you want to apply
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #create a virtual card
  result = api_instance.cards_create_virtual_post(user_id, wallet_id, perms_group, card_print, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_create_virtual_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User&#39;s id of cardholder | 
 **wallet_id** | **Integer**| Wallet&#39;s Id in which to create the card | 
 **perms_group** | **String**| Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK|  | 
 **card_print** | **String**| Card appareance code, also used to choose the program ID of the card | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **card_tag** | **String**| Custom field | [optional] 
 **batch_delivery_id** | **Integer**| Batch regroupement identifier (must be between 1 and 238327) NOT YET OPERATIONAL | [optional] 
 **limit_atm_year** | **Integer**| ATM operations limit for a sliding year. No default value. | [optional] 
 **limit_atm_month** | **Integer**| ATM operations limit for a sliding month. No default value. | [optional] 
 **limit_atm_week** | **Integer**| ATM operations limit for a sliding week. Default value 2000Ã¢â€šÂ¬. | [optional] 
 **limit_atm_day** | **Integer**| ATM operations limit for a single day. Default value 1000Ã¢â€šÂ¬. | [optional] 
 **limit_atm_all** | **Integer**| ATM operations limit from beginning. No default value. | [optional] 
 **limit_payment_year** | **Integer**| POS operations limit for a sliding year. No default value. | [optional] 
 **limit_payment_month** | **Integer**| POS operations limit for a sliding month. No default value. | [optional] 
 **limit_payment_week** | **Integer**| POS operations limit for a sliding week. Default value 3000Ã¢â€šÂ¬. | [optional] 
 **limit_payment_day** | **Integer**| POS operations limit for a single day. Default value 2000Ã¢â€šÂ¬. | [optional] 
 **limit_payment_all** | **Integer**| POS operations limit from beginning. No default value. | [optional] 
 **payment_daily_limit** | **Float**| POS operations limit for a single day including cents. The decimal delimiter must be \&quot;.\&quot;. No default value. | [optional] 
 **pin** | **String**| Card&#39;s PIN code value. | [optional] 
 **anonymous** | **Integer**| Card is anonymous. If value is 1 there will be no embossed name. | [optional] 
 **send_to_parent** | **Integer**| If you put the value 1 the delivery address will be the parent user&#39;s. | [optional] 
 **mcc_restriction_group_id** | **Integer**| mccRestrictionGroupId you want to apply | [optional] 
 **merchant_restriction_group_id** | **Integer**| merchantRestrictionGroupId you want to apply | [optional] 
 **country_restriction_group_id** | **Integer**| countryRestrictionGroupId you want to apply | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_get**
> InlineResponse2006 cards_get(opts)

search cards

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

api_instance = TreezorClient::CardApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  card_id: 56, # Integer | Card's id
  user_id: 56, # Integer | User's id of cardholder
  embossed_name: 'embossed_name_example', # String | Embossed name of the card
  public_token: 'public_token_example', # String | Public token of the card
  perms_group: 'perms_group_example', # String | Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK| 
  is_physical: 56, # Integer | | Value | Type | | --- | --- | | 1 | Physical card| | 0 | Virtual card | 
  is_converted: 56, # Integer | | Value | Type | | --- | --- | | 1 | Physical card converted in a virtual card| | 0 | Not converted | 
  lock_status: 56, # Integer | | Value | Type | | --- | --- | | 1 | Card blocked | | 0 | Card Unblocked | | 2 | Lost card | | 3 | Stolen card | 
  mcc_restriction_group_id: 56, # Integer | mccRestrictionGroupId of the card
  merchant_restriction_group_id: 56, # Integer | merchantRestrictionGroupId of the card
  country_restriction_group_id: 56, # Integer | countryRestrictionGroupId of the card
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
  #search cards
  result = api_instance.cards_get(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **card_id** | **Integer**| Card&#39;s id | [optional] 
 **user_id** | **Integer**| User&#39;s id of cardholder | [optional] 
 **embossed_name** | **String**| Embossed name of the card | [optional] 
 **public_token** | **String**| Public token of the card | [optional] 
 **perms_group** | **String**| Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK|  | [optional] 
 **is_physical** | **Integer**| | Value | Type | | --- | --- | | 1 | Physical card| | 0 | Virtual card |  | [optional] 
 **is_converted** | **Integer**| | Value | Type | | --- | --- | | 1 | Physical card converted in a virtual card| | 0 | Not converted |  | [optional] 
 **lock_status** | **Integer**| | Value | Type | | --- | --- | | 1 | Card blocked | | 0 | Card Unblocked | | 2 | Lost card | | 3 | Stolen card |  | [optional] 
 **mcc_restriction_group_id** | **Integer**| mccRestrictionGroupId of the card | [optional] 
 **merchant_restriction_group_id** | **Integer**| merchantRestrictionGroupId of the card | [optional] 
 **country_restriction_group_id** | **Integer**| countryRestrictionGroupId of the card | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_activate_put**
> InlineResponse2006 cards_id_activate_put(id, opts)

activate a card

The Activate endpoint change card status to activate. An activated card can be freely used. 

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_token: 'access_token_example', # String | Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #activate a card
  result = api_instance.cards_id_activate_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_activate_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_token** | **String**| Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_change_pin_put**
> InlineResponse2006 cards_id_change_pin_put(id, current_pin, new_pin, confirm_pin, opts)

change card's PIN

Change card's PIN code knowing the current one.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

current_pin = 'current_pin_example' # String | Card's current PIN

new_pin = 'new_pin_example' # String | Card's new PIN

confirm_pin = 'confirm_pin_example' # String | Card's new PIN confirmation value

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #change card's PIN
  result = api_instance.cards_id_change_pin_put(id, current_pin, new_pin, confirm_pin, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_change_pin_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **current_pin** | **String**| Card&#39;s current PIN | 
 **new_pin** | **String**| Card&#39;s new PIN | 
 **confirm_pin** | **String**| Card&#39;s new PIN confirmation value | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_convert_virtual_put**
> InlineResponse2006 cards_id_convert_virtual_put(id, opts)

convert card to virtual

Convert a virtual card into a physical one. The converted card will be both virtual and physical. 

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #convert card to virtual
  result = api_instance.cards_id_convert_virtual_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_convert_virtual_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_delete**
> InlineResponse2006 cards_id_delete(id)

deactivate a card

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

api_instance = TreezorClient::CardApi.new

id = 789 # Integer | Card's id.


begin
  #deactivate a card
  result = api_instance.cards_id_delete(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_get**
> InlineResponse2006 cards_id_get(id)

get a card

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

api_instance = TreezorClient::CardApi.new

id = 789 # Integer | Card's id.


begin
  #get a card
  result = api_instance.cards_id_get(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_limits_put**
> InlineResponse2006 cards_id_limits_put(id, opts)

update card's limits

Update of the card limits.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  limit_atm_year: 56, # Integer | ATM year limit
  limit_atm_month: 56, # Integer | ATM month limit
  limit_atm_week: 56, # Integer | ATM week limit
  limit_atm_day: 56, # Integer | ATM day limit
  limit_atm_all: 56, # Integer | ATM from beginning limit
  limit_payment_year: 56, # Integer | Payment year limit
  limit_payment_month: 56, # Integer | Payment month limit
  limit_payment_week: 56, # Integer | Payment week limit
  limit_payment_day: 56, # Integer | Payment day limit
  limit_payment_all: 56, # Integer | Payment from beginning limit
  payment_daily_limit: 3.4, # Float | Payment day limit including cents. The decimal delimiter must be \".\"
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #update card's limits
  result = api_instance.cards_id_limits_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_limits_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **limit_atm_year** | **Integer**| ATM year limit | [optional] 
 **limit_atm_month** | **Integer**| ATM month limit | [optional] 
 **limit_atm_week** | **Integer**| ATM week limit | [optional] 
 **limit_atm_day** | **Integer**| ATM day limit | [optional] 
 **limit_atm_all** | **Integer**| ATM from beginning limit | [optional] 
 **limit_payment_year** | **Integer**| Payment year limit | [optional] 
 **limit_payment_month** | **Integer**| Payment month limit | [optional] 
 **limit_payment_week** | **Integer**| Payment week limit | [optional] 
 **limit_payment_day** | **Integer**| Payment day limit | [optional] 
 **limit_payment_all** | **Integer**| Payment from beginning limit | [optional] 
 **payment_daily_limit** | **Float**| Payment day limit including cents. The decimal delimiter must be \&quot;.\&quot; | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_lock_unlock_put**
> InlineResponse2006 cards_id_lock_unlock_put(id, lock_status, opts)

update card's blocking status

Block or unblock a card.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

lock_status = 56 # Integer | | Value | Type | | --- | --- | | 1 | Block the card| | 0 | Unblock the card | | 2 | Lost card | | 3 | Stolen card | 

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #update card's blocking status
  result = api_instance.cards_id_lock_unlock_put(id, lock_status, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_lock_unlock_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **lock_status** | **Integer**| | Value | Type | | --- | --- | | 1 | Block the card| | 0 | Unblock the card | | 2 | Lost card | | 3 | Stolen card |  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_options_put**
> InlineResponse2006 cards_id_options_put(id, foreign, online, atm, nfc, opts)

update card's options

Allows to update card's permission group.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

foreign = 56 # Integer | Card usable abroad

online = 56 # Integer | Card usable on-line

atm = 56 # Integer | Card usable on ATM (withdrawals)

nfc = 56 # Integer | Card usable on contactless compatible POS machine machine\"

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #update card's options
  result = api_instance.cards_id_options_put(id, foreign, online, atm, nfc, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_options_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **foreign** | **Integer**| Card usable abroad | 
 **online** | **Integer**| Card usable on-line | 
 **atm** | **Integer**| Card usable on ATM (withdrawals) | 
 **nfc** | **Integer**| Card usable on contactless compatible POS machine machine\&quot; | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_put**
> InlineResponse2006 cards_id_put(id, opts)

update card informations

Actually update mccRestrictionGroupId and merchantRestrictionGroupId of a card

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  mcc_restriction_group_id: 56, # Integer | card's mccRestrictionGroupId
  merchant_restriction_group_id: 56, # Integer | card's merchantRestrictionGroupId
  country_restriction_group_id: 56, # Integer | card's countryRestrictionGroupId
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #update card informations
  result = api_instance.cards_id_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **mcc_restriction_group_id** | **Integer**| card&#39;s mccRestrictionGroupId | [optional] 
 **merchant_restriction_group_id** | **Integer**| card&#39;s merchantRestrictionGroupId | [optional] 
 **country_restriction_group_id** | **Integer**| card&#39;s countryRestrictionGroupId | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_regenerate_put**
> InlineResponse2006 cards_id_regenerate_put(id, opts)

regenerate card

If card is Lost or Stolen (card's status), the card itself will get regenerated. Otherwise only the card image gets recreated. 

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #regenerate card
  result = api_instance.cards_id_regenerate_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_regenerate_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_set_pin_put**
> InlineResponse2006 cards_id_set_pin_put(id, new_pin, confirm_pin, opts)

set card's PIN

Overwrite card's PIN.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

new_pin = 'new_pin_example' # String | Card's new PIN.

confirm_pin = 'confirm_pin_example' # String | Card's new PIN confirmation value

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #set card's PIN
  result = api_instance.cards_id_set_pin_put(id, new_pin, confirm_pin, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_set_pin_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **new_pin** | **String**| Card&#39;s new PIN. | 
 **confirm_pin** | **String**| Card&#39;s new PIN confirmation value | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_id_unblock_pin_put**
> InlineResponse2006 cards_id_unblock_pin_put(id, opts)

unblock card's PIN

Unblock card's PIN code.

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

api_instance = TreezorClient::CardApi.new

id = 56 # Integer | Card's id.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #unblock card's PIN
  result = api_instance.cards_id_unblock_pin_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_id_unblock_pin_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card&#39;s id. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_register3_ds_post**
> InlineResponse2006 cards_register3_ds_post(card_id, opts)

Register 3D secure

Register a card to 3D secure service.

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

api_instance = TreezorClient::CardApi.new

card_id = 56 # Integer | Card's ID to register

opts = { 
  access_signature: 'access_signature_example' # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
}

begin
  #Register 3D secure
  result = api_instance.cards_register3_ds_post(card_id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_register3_ds_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **card_id** | **Integer**| Card&#39;s ID to register | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **cards_request_physical_post**
> InlineResponse2006 cards_request_physical_post(user_id, wallet_id, perms_group, card_tag, card_print, opts)

create a physical card

Create a new physical card. To use a card you will need to activate it (/cards/{id}/Activate/).

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

api_instance = TreezorClient::CardApi.new

user_id = 56 # Integer | User's id of cardholder

wallet_id = 56 # Integer | Wallet's Id in which to create the card

perms_group = 'perms_group_example' # String | Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK| 

card_tag = 'card_tag_example' # String | Custom field

card_print = 'card_print_example' # String | Card appearance code, also used to choose the program ID of the card

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  batch_delivery_id: 56, # Integer | Batch regroupement identifier (must be between 1 and 238327) NOT YET OPERATIONAL
  limit_atm_year: 56, # Integer | ATM operations limit for a sliding year. No default value.
  limit_atm_month: 56, # Integer | ATM operations limit for a sliding month. No default value.
  limit_atm_week: 56, # Integer | ATM operations limit for a sliding week. Default value 2000Ã¢â€šÂ¬.
  limit_atm_day: 56, # Integer | ATM operations limit for a single day. Default value 1000Ã¢â€šÂ¬.
  limit_atm_all: 56, # Integer | ATM operations limit from beginning. No default value.
  limit_payment_year: 56, # Integer | POS operations limit for a sliding year. No default value.
  limit_payment_month: 56, # Integer | POS operations limit for a sliding month. No default value.
  limit_payment_week: 56, # Integer | POS operations limit for a sliding week. Default value 3000Ã¢â€šÂ¬.
  limit_payment_day: 56, # Integer | POS operations limit for a single day. Default value 2000Ã¢â€šÂ¬.
  limit_payment_all: 56, # Integer | POS operations limit from beginning. No default value.
  payment_daily_limit: 3.4, # Float | POS operations limit for a single day including cents. The decimal delimiter must be \".\". No default value.
  pin: 'pin_example', # String | Card's PIN code value. Default random PIN.
  anonymous: 56, # Integer | Card is anonymous. If value is 1 there will be no embossed name.
  send_to_parent: 56, # Integer | If you put the value 1 the delivery address will be the parent user's.
  mcc_restriction_group_id: 56, # Integer | mccRestrictionGroupId you want to apply
  merchant_restriction_group_id: 56, # Integer | merchantRestrictionGroupId you want to apply
  country_restriction_group_id: 56, # Integer | countryRestrictionGroupId you want to apply
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #create a physical card
  result = api_instance.cards_request_physical_post(user_id, wallet_id, perms_group, card_tag, card_print, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardApi->cards_request_physical_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **Integer**| User&#39;s id of cardholder | 
 **wallet_id** | **Integer**| Wallet&#39;s Id in which to create the card | 
 **perms_group** | **String**| Permissions group of the card. There is 4 usages which create 16 possible groups:  | group | NFC | ATM | On-line | Foreign | |-----|-----|-----|-----|------| |TRZ-CU-001|KO|KO|KO|KO| |TRZ-CU-002|KO|KO|KO|OK| |TRZ-CU-003|KO|KO|OK|KO| |TRZ-CU-004|KO|KO|OK|OK| |TRZ-CU-005|KO|OK|KO|KO| |TRZ-CU-006|KO|OK|KO|OK| |TRZ-CU-007|KO|OK|OK|KO| |TRZ-CU-008|KO|OK|OK|OK| |TRZ-CU-009|OK|KO|KO|KO| |TRZ-CU-010|OK|KO|KO|OK| |TRZ-CU-011|OK|KO|OK|KO| |TRZ-CU-012|OK|KO|OK|OK| |TRZ-CU-013|OK|OK|KO|KO| |TRZ-CU-014|OK|OK|KO|OK| |TRZ-CU-015|OK|OK|OK|KO| |TRZ-CU-016|OK|OK|OK|OK|  | 
 **card_tag** | **String**| Custom field | 
 **card_print** | **String**| Card appearance code, also used to choose the program ID of the card | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **batch_delivery_id** | **Integer**| Batch regroupement identifier (must be between 1 and 238327) NOT YET OPERATIONAL | [optional] 
 **limit_atm_year** | **Integer**| ATM operations limit for a sliding year. No default value. | [optional] 
 **limit_atm_month** | **Integer**| ATM operations limit for a sliding month. No default value. | [optional] 
 **limit_atm_week** | **Integer**| ATM operations limit for a sliding week. Default value 2000Ã¢â€šÂ¬. | [optional] 
 **limit_atm_day** | **Integer**| ATM operations limit for a single day. Default value 1000Ã¢â€šÂ¬. | [optional] 
 **limit_atm_all** | **Integer**| ATM operations limit from beginning. No default value. | [optional] 
 **limit_payment_year** | **Integer**| POS operations limit for a sliding year. No default value. | [optional] 
 **limit_payment_month** | **Integer**| POS operations limit for a sliding month. No default value. | [optional] 
 **limit_payment_week** | **Integer**| POS operations limit for a sliding week. Default value 3000Ã¢â€šÂ¬. | [optional] 
 **limit_payment_day** | **Integer**| POS operations limit for a single day. Default value 2000Ã¢â€šÂ¬. | [optional] 
 **limit_payment_all** | **Integer**| POS operations limit from beginning. No default value. | [optional] 
 **payment_daily_limit** | **Float**| POS operations limit for a single day including cents. The decimal delimiter must be \&quot;.\&quot;. No default value. | [optional] 
 **pin** | **String**| Card&#39;s PIN code value. Default random PIN. | [optional] 
 **anonymous** | **Integer**| Card is anonymous. If value is 1 there will be no embossed name. | [optional] 
 **send_to_parent** | **Integer**| If you put the value 1 the delivery address will be the parent user&#39;s. | [optional] 
 **mcc_restriction_group_id** | **Integer**| mccRestrictionGroupId you want to apply | [optional] 
 **merchant_restriction_group_id** | **Integer**| merchantRestrictionGroupId you want to apply | [optional] 
 **country_restriction_group_id** | **Integer**| countryRestrictionGroupId you want to apply | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



