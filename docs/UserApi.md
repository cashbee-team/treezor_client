# TreezorClient::UserApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_user**](UserApi.md#delete_user) | **DELETE** /users/{id} | delete a user
[**get_user**](UserApi.md#get_user) | **GET** /users/{id} | get an user
[**get_users**](UserApi.md#get_users) | **GET** /users | search users
[**put_user**](UserApi.md#put_user) | **PUT** /users/{id} | update a user
[**put_users**](UserApi.md#put_users) | **POST** /users | create user
[**users_id_kycreview_put**](UserApi.md#users_id_kycreview_put) | **PUT** /users/{id}/Kycreview/ | review user information


# **delete_user**
> InlineResponse20026 delete_user(id, origin, opts)

delete a user

Change user's status to **CANCELED**.

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

api_instance = TreezorClient::UserApi.new

id = 56 # Integer | User's ID

origin = 'origin_example' # String | Origin of the request.  Possible values: * OPERATOR * USER 

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #delete a user
  result = api_instance.delete_user(id, origin, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User&#39;s ID | 
 **origin** | **String**| Origin of the request.  Possible values: * OPERATOR * USER  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user**
> InlineResponse20026 get_user(id, opts)

get an user

Get user's information for given user's id.

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

api_instance = TreezorClient::UserApi.new

id = 56 # Integer | User's ID

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #get an user
  result = api_instance.get_user(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User&#39;s ID | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_users**
> InlineResponse20026 get_users(opts)

search users

Get users from the system.

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

api_instance = TreezorClient::UserApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  user_id: 56, # Integer | User's unique ID
  user_type_id: 56, # Integer | User's type.
  user_status: 'user_status_example', # String | User's status.
  user_tag: 'user_tag_example', # String | Custom data that you can add to this item.
  specified_us_person: 56, # Integer | Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années. 
  controlling_person_type: 56, # Integer | Type of relationship
  employee_type: 56, # Integer | Type of user's role
  email: 'email_example', # String | User's email address (must be valid).
  name: 'name_example', # String | User's Name.
  legal_name: 'legal_name_example', # String | Business name
  parent_user_id: 'parent_user_id_example', # String | User id of user's parent
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists). 
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists). 
  sort_by: 'sort_by_example', # String | The transaction element you want to sort the list with. Default value: createdDate. More info [here](https://agent.treezor.com/lists). 
  sort_order: 'sort_order_example', # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
  created_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  created_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  updated_date_to: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
}

begin
  #search users
  result = api_instance.get_users(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **user_id** | **Integer**| User&#39;s unique ID | [optional] 
 **user_type_id** | **Integer**| User&#39;s type. | [optional] 
 **user_status** | **String**| User&#39;s status. | [optional] 
 **user_tag** | **String**| Custom data that you can add to this item. | [optional] 
 **specified_us_person** | **Integer**| Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années.  | [optional] 
 **controlling_person_type** | **Integer**| Type of relationship | [optional] 
 **employee_type** | **Integer**| Type of user&#39;s role | [optional] 
 **email** | **String**| User&#39;s email address (must be valid). | [optional] 
 **name** | **String**| User&#39;s Name. | [optional] 
 **legal_name** | **String**| Business name | [optional] 
 **parent_user_id** | **String**| User id of user&#39;s parent | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value: createdDate. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **created_date_from** | **DateTime**| The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **created_date_to** | **DateTime**| The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_from** | **DateTime**| The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 
 **updated_date_to** | **DateTime**| The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists)  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_user**
> InlineResponse20026 put_user(id, opts)

update a user

Update user's information.

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

api_instance = TreezorClient::UserApi.new

id = 56 # Integer | User's ID

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  user_tag: 'user_tag_example', # String | Custom data.
  specified_us_person: 56, # Integer | Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années. | Value | Type | | --- | --- | | 0 | No | | 1 | Yes | 
  controlling_person_type: 56, # Integer | Type of relationship | Value | Type | | --- | --- | | 1 | Shareholder | | 2 | Other_relationship | | 3 | Director | | 4 | None (default) | 
  employee_type: 56, # Integer | Type of relationship. Possible values:     | Value | Type |     | --- | --- |     | 1 | Leader |     | 2 | Employee |     | 3 | None (default)| 
  title: 'title_example', # String | User's title. Possible values: * M * MME * MLLE 
  firstname: 'firstname_example', # String | User's first name
  lastname: 'lastname_example', # String | User's last name
  middle_names: 'middle_names_example', # String | User's middle names
  birthday: 'birthday_example', # String | User's birth date. Format YYYY-MM-DD
  email: 'email_example', # String | User's email address (must be valid).
  address1: 'address1_example', # String | User's postal address (main)
  address2: 'address2_example', # String | User's postal address (complement)
  postcode: 'postcode_example', # String | User's postcode
  city: 'city_example', # String | User's city
  state: 'state_example', # String | User's state
  country: 'country_example', # String | User's country
  phone: 'phone_example', # String | User's phone number
  mobile: 'mobile_example', # String | User's mobile phone number
  nationality: 'nationality_example', # String | User's nationality
  nationality_other: 'nationality_other_example', # String | User's other nationality
  place_of_birth: 'place_of_birth_example', # String | User's place of birth
  birth_country: 'birth_country_example', # String | User's country of birth
  occupation: 'occupation_example', # String | User's occupation
  occupation_category: 'occupation_category_example', # String | 
  income_range: 'income_range_example', # String | Customer income range
  monthly_income_range: 'monthly_income_range_example', # String | 
  legal_name: 'legal_name_example', # String | Business name
  legal_registration_number: 'legal_registration_number_example', # String | Business registration number
  legal_tva_number: 'legal_tva_number_example', # String | Business VAT number
  legal_registration_date: Date.parse('2013-10-20'), # Date | Business registration date
  legal_form: 'legal_form_example', # String | | Code | Category | Details (in french) | | ---- | ----- | ---- | | 1000 | Individual company | Entrepreneur Individuel a Responsabilité Limitée (EIRL) | | 1100 | Individual company | Artisan-Commerçant | | 1200 | Individual company | Commerçant | | 1300 | Individual company | Artisan | | 1400 | Liberal profession | Officier public ou ministériel | | 1500 | Liberal profession | Profession libérale | | 1600 | Farm operator  | Exploitant agricole | | 1700 | Liberal profession | Agent commercial | | 1800 | Partner Director | Associé-gérant | | 1900 | Individual company | Personne physique | | 2110 | Indivision and others | Indivision entre personnes physiques | | 2120 | Indivision and others | Indivision avec personne morale | | 2210 | Indivision and others | Société créée de fait entre personnes physiques | | 2220 | Indivision and others | Société créée de fait avec personne morale | | 2310 | Indivision and others | Société en participation entre personnes physiques | | 2320 | Indivision and others | Société en participation avec personne morale | | 2385 | Indivision and others | Société en participation de professions libérales | | 2400 | Indivision and others | Fiducie | | 2700 | Diverse | Paroisse hors zone concordataire | | 2900 | Economic Interest Grouping | Autre groupement de droit privé non doté de la personnalité morale | | 3110 | Foreign company | Représentation ou agence commerciale d'état ou organisme public étranger  immatriculé au RCS | | 3120 | Foreign company | Société étrangère immatriculée au RCS | | 3205 | Foreign company | Organisation internationale | | 3210 | Foreign company | Etat collectivité ou établissement public étranger | | 3220 | Foreign company | Société étrangère non immatriculée au RCS | | 3290 | Foreign company | (Autre) personne morale de droit étranger | | 4110 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial doté d'un comptable public | | 4120 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial non doté d'un comptable public | | 4130 | Administrations, Instituions | Exploitant public | | 4140 | Administrations, Instituions | Etablissement public local à caractère industriel ou commercial | | 4150 | Administrations, Instituions | Régie d'une collectivité locale à caractère industriel ou commercial | | 4160 | Administrations, Instituions | Institution Banque de France | | 5191 | De facto undivided ownership company | Société de caution mutuelle | | 5192 | Diverse | Société coopérative de banque populaire | | 5193 | De facto undivided ownership company | Caisse de crédit maritime mutuel | | 5194 | De facto undivided ownership company | Caisse (fédérale) de crédit mutuel | | 5195 | Association fondation | Association coopérative inscrite (droit local Alsace Moselle) | | 5196 | De facto undivided ownership company | Caisse d'épargne et de prévoyance à forme coopérative | | 5202 | General partnership | Société en nom collectif | | 5203 | General partnership | Société en nom collectif coopérative | | 5306 | Limited company | Société en commandite simple | | 5307 | Limited company | Société en commandite simple coopérative | | 5308 | Limited company | Société en commandite par actions | | 5309 | Limited company | Société en commandite par actions coopérative | | 5385 | Limited company | Société d'exercice libéral en commandite par action | | 5410 | Limited Liability Company  | SARL nationale | | 5415 | Limited Liability Company  | SARL d'économie mixte | | 5422 | Limited Liability Company  | SARL immobilière pour le commerce et l'industrie (SICOMI) | | 5426 | Limited Liability Company  | Société immobilière de gestion | | 5430 | Limited Liability Company  | Safer en SARL | | 5431 | Limited Liability Company  | SARL mixte d'intérêt agricole (SIMA) | | 5432 | Limited Liability Company  | SARL d'intérêt collectif agricole (SICA) | | 5442 | Limited Liability Company  | SARL d'attribution | | 5443 | Limited Liability Company  | SARL coopérative de construction | | 5451 | Limited Liability Company  | SARL coopérative de consommation | | 5453 | Limited Liability Company  | SARL coopérative artisanale | | 5454 | Limited Liability Company  | SARL coopérative d'intérêt maritime | | 5455 | Limited Liability Company  | SARL coopérative de transports | | 5458 | Limited Liability Company  | SARL coopérative ouvrière de production et de crédit (SCOP) | | 5459 | Limited Liability Company  | SARL union de sociétés coopératives | | 5460 | Limited Liability Company  | SARL coopérative | | 5485 | Limited Liability Company  | Société d'exercice libéral à responsabilité limitée | | 5498 | Limited Liability Company  | SARL unipersonnelle | | 5499 | Limited Liability Company  | SARL | | 5505 | Limited company | SA à participation ouvrière à conseil d'administration | | 5510 | Limited company | SA nationale à conseil d'administration | | 5515 | Limited company | SA d'économie mixte à conseil d'administration | | 5520 | Limited company | Société d'investissement à capital variable (SICAV) à conseil d'administration | | 5522 | Limited company | Société anonyme immobilière pour le commerce et l'industrie (SICOMI)  à conseil d'administration | | 5525 | Limited company | Société anonyme immobilière d'investissement à conseil d'administration | | 5530 | Limited company | Safer anonyme à conseil d'administration | | 5531 | Limited company | Société anonyme mixte d'intérêt agricole (SMIA) à conseil d'administration | | 5532 | Limited company | Société anonyme mixte d'intérêt collectif agricole (SICA) à conseil d'administration | | 5542 | Limited company | Société anonyme d'attribution à conseil d'administration | | 5543 | Limited company | Société anonyme coopérative de construction à conseil d'administration | | 5546 | Limited company | SA de HLM à conseil d'administration | | 5547 | Limited company | SA coopérative de production de HLM à conseil d'administration | | 5548 | Limited company | SA de crédit immobilier à conseil d'administration | | 5551 | Limited company | SA coopérative de consommation à conseil d'administration | | 5552 | Limited company | SA coopérative de commerçants détaillants à conseil d'administration | | 5553 | Limited company | SA coopérative artisanale à conseil d'administration | | 5554 | Limited company | SA coopérative (d'intérêt) maritime à conseil d'administration | | 5555 | Limited company | SA coopérative de transports à conseil d'administration | | 5558 | Limited company | SCOP à conseil d'administration | | 5559 | Limited company | SA union de sociétés coopératives à conseil d'administration | | 5560 | Limited company | SA coopérative à conseil d'administration | | 5585 | Limited company | Société d'exercice libéral à forme anonyme à conseil d'administration | | 5599 | Limited company | SA à conseil d'administration | | 5605 | Limited company | SA à participation ouvrière à directoire | | 5610 | Limited company | SA nationale à directoire | | 5615 | Limited company | SA d'économie mixte à directoire | | 5620 | Limited company | SICAV | | 5622 | Limited company | SICOMI | | 5625 | Limited company | Société immobilière d'investissement anonyme à directoire | | 5630 | Limited company | Safer anonyme à directoire | | 5631 | Limited company | Société anonyme mixte d'intérêt agricole (SMIA) | | 5632 | Limited company | SICA | | 5642 | Limited company | Société anonyme d'attribution à directoire | | 5643 | Limited company | Société anonyme coopérative de construction à directoire | | 5646 | Limited company | S.A. HLM à directoire | | 5647 | Limited company | Société coopérative de production de HLM anonyme à directoire | | 5648 | Limited company | SA de crédit immobilier à directoire | | 5651 | Limited company | SA coopérative de consommation à directoire | | 5652 | Limited company | SA coopérative de commerçants détaillants à directoire | | 5653 | Limited company | SA coopérative artisanale à directoire | | 5654 | Limited company | SA coopérative (d'intérêt) maritime à directoire | | 5655 | Limited company | SA coopérative de transport à directoire | | 5658 | Limited company | SCOP | | 5659 | Limited company | SA union de sociétés coopératives à directoire | | 5660 | Limited company | SA coopérative à directoire | | 5685 | Limited company | Société d'exercice libéral à forme anonyme à directoire | | 5699 | Limited company | (Autre) SA à directoire | | 5710 | Limited company | SAS | | 5720 | Limited company | SASU | | 5785 | Limited company | Société d'exercice libéral par action simplifiée | | 5800 | Diverse | Société européenne | | 6100 | De facto undivided ownership company | Caisse d'épargne et de prévoyance | | 6210 | Economic Interest Grouping | GEIE | | 6220 | Economic Interest Grouping | GIE | | 6316 | Diverse | CUMA | | 6317 | Diverse | Société coopérative agricole | | 6318 | Diverse | Union de sociétés coopératives agricoles | | 6411 | De facto undivided ownership company | Société d'assurance mutuelle | | 6521 | Civils companies (without SCI) | SCPI | | 6532 | Civils companies (without SCI) | SICA | | 6533 | Civils companies (without SCI) | GAEC | | 6534 | Civils companies (without SCI) | Groupement foncier agricole | | 6535 | Civils companies (without SCI) | Groupement agricole foncier | | 6536 | Civils companies (without SCI) | Groupement forestier | | 6537 | Civils companies (without SCI) | Groupement pastoral | | 6538 | Civils companies (without SCI) | Groupement foncier rural | | 6539 | Civils companies (without SCI) | Société civile foncière | | 6540 | Civils companies | SCI | | 6541 | Civils companies | SCI de construction vente | | 6542 | Civils companies (without SCI) | Société civile d'attribution | | 6543 | Civils companies (without SCI) | Société civile coopérative de construction | | 6544 | Civils companies | Société civile d'accession progressive à la propriété | | 6551 | Civils companies (without SCI) | Société civile coopérative de consommation | | 6554 | Civils companies (without SCI) | Société civile coopérative (d'intérêt) maritime | | 6558 | Civils companies (without SCI) | Société civile coopérative entre médecins | | 6560 | Civils companies (without SCI) | SCP | | 6561 | Civils companies (without SCI) | SCP d'avocats | | 6562 | Civils companies (without SCI) | SCP d'avocats aux conseil | | 6563 | Civils companies (without SCI) | SCP d'avoués d'appel | | 6564 | Civils companies (without SCI) | SCP d'huissiers | | 6565 | Civils companies (without SCI) | SCP de notaires | | 6566 | Civils companies (without SCI) | SCP de commissaires-priseurs | | 6567 | Civils companies (without SCI) | SCP de greffiers de tribunal de commerce | | 6568 | Civils companies (without SCI) | SCP de conseils juridiques | | 6569 | Civils companies (without SCI) | SCP de commissaires aux comptes | | 6571 | Civils companies (without SCI) | SCP de médecins | | 6572 | Civils companies (without SCI) | SCP de dentistes | | 6573 | Civils companies (without SCI) | SCP d'infirmiers | | 6574 | Civils companies (without SCI) | SCP de masseurs kinésithérapeutes | | 6575 | Civils companies (without SCI) | SCP de directeurs de laboratoire d'analyse médicale | | 6576 | Civils companies (without SCI) | SCP de vétérinaires | | 6577 | Civils companies (without SCI) | SCP de géomètres-experts | | 6578 | Civils companies (without SCI) | SCP d'architectes | | 6585 | Civils companies (without SCI) | SCP | | 6588 | Civils companies (without SCI) | Société civile laitière | | 6589 | Civils companies (without SCI) | Société civile de moyens | | 6595 | Civils companies (without SCI) | Caisse (locale) de crédit mutuel | | 6596 | Civils companies (without SCI) | Caisse de crédit agricole mutuel | | 6597 | Civils companies (without SCI) | Société civile d'exploitation agricole | | 6598 | Farm operator  | Exploitation agricole à responsabilité limitée | | 6599 | Civils companies (without SCI) | Autre société civile | | 6901 | Diverse | Autres personnes de droit privé inscrites au registre du commerce et des sociétés | | 7111 | Administrations, Instituions | Autorité constitutionnelle | | 7112 | Administrations, Instituions | Autorité administrative indépendante | | 7113 | Administrations, Instituions | Ministère | | 7120 | Administrations, Instituions | Service central d'un ministère | | 7150 | Administrations, Instituions | Service du ministère de la Défense | | 7160 | Administrations, Instituions | Service déconcentré à compétence nation . D'un ministère (hors Défense) | | 7171 | Administrations, Instituions | Service déconcentré de l'Etat à compétence (inter) régionale | | 7172 | Administrations, Instituions | Service déconcentré de l'Etat à compétence (inter) départementale | | 7179 | Administrations, Instituions | (Autre) Service déconcentré de l'Etat à compétence territoriale | | 7190 | Administrations, Instituions | Ecole nationale non dotée de la personnalité morale | | 7210 | Administrations, Instituions | Commune | | 7220 | Administrations, Instituions | Département | | 7225 | Administrations, Instituions | Territoire d'Outre-Mer | | 7229 | Administrations, Instituions | (Autre) Collectivité territoriale | | 7230 | Administrations, Instituions | Région | | 7312 | Administrations, Instituions | Commune associée | | 7313 | Administrations, Instituions | Section de commune | | 7314 | Administrations, Instituions | Ensemble urbain | | 7321 | Administrations, Instituions | Association syndicale autorisée | | 7322 | Administrations, Instituions | Association foncière urbaine | | 7323 | Administrations, Instituions | Association foncière de remembrement | | 7331 | Administrations, Instituions | Etablissement public local d'enseignement | | 7340 | Administrations, Instituions | Pôle métropolitain | | 7341 | Administrations, Instituions | Secteur de commune | | 7342 | Administrations, Instituions | District urbain | | 7343 | Administrations, Instituions | Communauté urbaine | | 7344 | Administrations, Instituions | Métropole | | 7345 | Administrations, Instituions | Syndicat intercommunal à vocation multiple (SIVOM) | | 7346 | Administrations, Instituions | Communauté de commune | | 7347 | Administrations, Instituions | Communauté de villes | | 7348 | Administrations, Instituions | Communauté d'agglomération | | 7349 | Administrations, Instituions | Autre établissement public local de coopération non spécialisé ou entente | | 7351 | Administrations, Instituions | Institution interdépartementale ou entente | | 7352 | Administrations, Instituions | Institution interrégionale ou entente | | 7353 | Administrations, Instituions | Syndicat intercommunal à vocation unique (SIVU) | | 7354 | Administrations, Instituions | Syndicat mixte communal | | 7355 | Administrations, Instituions | Autre syndicat mixte | | 7356 | Administrations, Instituions | Commission syndicale pour la gestion des biens indivis des communes | | 7361 | Administrations, Instituions | Centre communal d'action sociale | | 7362 | Administrations, Instituions | Caisse des écoles | | 7363 | Administrations, Instituions | Caisse de crédit municipal | | 7364 | Administrations, Instituions | Etablissement d'hospitalisation | | 7365 | Administrations, Instituions | Syndicat inter hospitalier | | 7366 | Administrations, Instituions | Etablissement public local social et médico-social | | 7371 | Administrations, Instituions | Office public d'habitation à loyer modéré (OPHLM) | | 7372 | Administrations, Instituions | Service départemental d'incendie | | 7373 | Administrations, Instituions | Etablissement public local culturel | | 7378 | Administrations, Instituions | Régie d'une collectivité locale à caractère administratif | | 7379 | Administrations, Instituions | (Autre) Etablissement public administratif local | | 7381 | Administrations, Instituions | Organisme consulaire | | 7382 | Administrations, Instituions | Etablissement public national ayant fonction d'administration centrale | | 7383 | Administrations, Instituions | Etablissement public national à caractère scientifique  culturel et professionnel | | 7384 | Administrations, Instituions | Autre établissement public national d'enseignement | | 7385 | Administrations, Instituions | Autre établissement public national administratif à compétence territoriale limitée | | 7389 | Administrations, Instituions | Etablissement public national à caractère administratif | | 7410 | Administrations, Instituions | Groupement d'intérêt public (GIP) | | 7430 | Administrations, Instituions | Etablissement public des cultes d'Alsace-Lorraine | | 7450 | Administrations, Instituions | Etablissement public, cercle et foyer dans les armées | | 7470 | Administrations, Instituions | Groupement de coopération sanitaire à gestion publique | | 7490 | Administrations, Instituions | Autre personne morale de droit administratif | | 8110 | Administrations, Instituions | Régime général de la sécurité sociale | | 8120 | Administrations, Instituions | Régime spécial de sécurité sociale | | 8130 | Administrations, Instituions | Institution de retraite complémentaire | | 8140 | Administrations, Instituions | Mutualité sociale agricole | | 8150 | Administrations, Instituions | Régime maladie des non-salariés non agricoles | | 8160 | Administrations, Instituions | Régime vieillesse ne dépendant pas du régime général de la sécurité sociale | | 8170 | Administrations, Instituions | Régime d'assurance chômage | | 8190 | Administrations, Instituions | Autre régime de prévoyance sociale | | 8210 | De facto undivided ownership company | Mutuelle | | 8250 | De facto undivided ownership company | Assurance mutuelle agricole | | 8290 | De facto undivided ownership company | Autre organisme mutualiste | | 8310 | Association fondation | Comité central d'entreprise | | 8311 | Association fondation | Comité d'établissement | | 8410 | Association fondation | Syndicat de salariés | | 8420 | Association fondation | Syndicat patronal | | 8450 | Association fondation | Ordre professionnel ou assimilé | | 8470 | Association fondation | Centre technique industriel ou comité professionnel du développement économique | | 8490 | Association fondation | Autre organisme professionnel | | 8510 | Administrations, Instituions | Institution de prévoyance | | 8520 | Administrations, Instituions | Institution de retraite supplémentaire | | 9110 | Condominium syndicate | Syndicat de copropriété | | 9150 | Association fondation | Association syndicale libre | | 9210 | Association fondation | Association non déclarée | | 9220 | Association fondation | Association déclarée | | 9221 | Association fondation | Association déclarée \"entreprises d'insertion par l'économique\" | | 9222 | Association fondation | Association intermédiaire | | 9223 | Association fondation | Groupement d'employeurs | | 9224 | Association fondation | Association d'avocats à responsabilité professionnelle individuelle | | 9230 | Association fondation | Association déclarée  reconnue d'utilité publique | | 9240 | Association fondation | Congrégation | | 9260 | Association fondation | Association de droit local | | 9300 | Association fondation | Fondation | | 9900 | Diverse | Autre personne morale de droit privé | | 9970 | Diverse | Groupement de coopération sanitaire à gestion privée | 
  legal_share_capital: 56, # Integer | Business share capital
  legal_sector: 'legal_sector_example', # String | Business sector. NAF code in France
  legal_annual_turn_over: 'legal_annual_turn_over_example', # String | Business annual turnover (in k€)
  legal_net_income_range: 'legal_net_income_range_example', # String | Business net income range (in k€)
  legal_number_of_employee_range: 'legal_number_of_employee_range_example', # String | Business number of employees range
  effective_beneficiary: 56, # Integer | Business effective beneficiary
  language: 'language_example', # String | User's prefered language (ISO 639-1)
  tax_number: 'tax_number_example', # String | User's tax identification number. If the taxResidence is not set to FR, the field is mandatory.
  tax_residence: 'tax_residence_example', # String | User's tax residence country code (2 char code following ISO 3166 norm).
  position: 'position_example', # String | User's position  (deprecated, you must use the parameter occupation).
  personal_assets: 'personal_assets_example', # String | User's personal assets range expressed in k€.
  personal_assets_range: 'personal_assets_range_example' # String | 
}

begin
  #update a user
  result = api_instance.put_user(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->put_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User&#39;s ID | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **user_tag** | **String**| Custom data. | [optional] 
 **specified_us_person** | **Integer**| Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années. | Value | Type | | --- | --- | | 0 | No | | 1 | Yes |  | [optional] 
 **controlling_person_type** | **Integer**| Type of relationship | Value | Type | | --- | --- | | 1 | Shareholder | | 2 | Other_relationship | | 3 | Director | | 4 | None (default) |  | [optional] 
 **employee_type** | **Integer**| Type of relationship. Possible values:     | Value | Type |     | --- | --- |     | 1 | Leader |     | 2 | Employee |     | 3 | None (default)|  | [optional] 
 **title** | **String**| User&#39;s title. Possible values: * M * MME * MLLE  | [optional] 
 **firstname** | **String**| User&#39;s first name | [optional] 
 **lastname** | **String**| User&#39;s last name | [optional] 
 **middle_names** | **String**| User&#39;s middle names | [optional] 
 **birthday** | **String**| User&#39;s birth date. Format YYYY-MM-DD | [optional] 
 **email** | **String**| User&#39;s email address (must be valid). | [optional] 
 **address1** | **String**| User&#39;s postal address (main) | [optional] 
 **address2** | **String**| User&#39;s postal address (complement) | [optional] 
 **postcode** | **String**| User&#39;s postcode | [optional] 
 **city** | **String**| User&#39;s city | [optional] 
 **state** | **String**| User&#39;s state | [optional] 
 **country** | **String**| User&#39;s country | [optional] 
 **phone** | **String**| User&#39;s phone number | [optional] 
 **mobile** | **String**| User&#39;s mobile phone number | [optional] 
 **nationality** | **String**| User&#39;s nationality | [optional] 
 **nationality_other** | **String**| User&#39;s other nationality | [optional] 
 **place_of_birth** | **String**| User&#39;s place of birth | [optional] 
 **birth_country** | **String**| User&#39;s country of birth | [optional] 
 **occupation** | **String**| User&#39;s occupation | [optional] 
 **occupation_category** | **String**|  | [optional] 
 **income_range** | **String**| Customer income range | [optional] 
 **monthly_income_range** | **String**|  | [optional] 
 **legal_name** | **String**| Business name | [optional] 
 **legal_registration_number** | **String**| Business registration number | [optional] 
 **legal_tva_number** | **String**| Business VAT number | [optional] 
 **legal_registration_date** | **Date**| Business registration date | [optional] 
 **legal_form** | **String**| | Code | Category | Details (in french) | | ---- | ----- | ---- | | 1000 | Individual company | Entrepreneur Individuel a Responsabilité Limitée (EIRL) | | 1100 | Individual company | Artisan-Commerçant | | 1200 | Individual company | Commerçant | | 1300 | Individual company | Artisan | | 1400 | Liberal profession | Officier public ou ministériel | | 1500 | Liberal profession | Profession libérale | | 1600 | Farm operator  | Exploitant agricole | | 1700 | Liberal profession | Agent commercial | | 1800 | Partner Director | Associé-gérant | | 1900 | Individual company | Personne physique | | 2110 | Indivision and others | Indivision entre personnes physiques | | 2120 | Indivision and others | Indivision avec personne morale | | 2210 | Indivision and others | Société créée de fait entre personnes physiques | | 2220 | Indivision and others | Société créée de fait avec personne morale | | 2310 | Indivision and others | Société en participation entre personnes physiques | | 2320 | Indivision and others | Société en participation avec personne morale | | 2385 | Indivision and others | Société en participation de professions libérales | | 2400 | Indivision and others | Fiducie | | 2700 | Diverse | Paroisse hors zone concordataire | | 2900 | Economic Interest Grouping | Autre groupement de droit privé non doté de la personnalité morale | | 3110 | Foreign company | Représentation ou agence commerciale d&#39;état ou organisme public étranger  immatriculé au RCS | | 3120 | Foreign company | Société étrangère immatriculée au RCS | | 3205 | Foreign company | Organisation internationale | | 3210 | Foreign company | Etat collectivité ou établissement public étranger | | 3220 | Foreign company | Société étrangère non immatriculée au RCS | | 3290 | Foreign company | (Autre) personne morale de droit étranger | | 4110 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial doté d&#39;un comptable public | | 4120 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial non doté d&#39;un comptable public | | 4130 | Administrations, Instituions | Exploitant public | | 4140 | Administrations, Instituions | Etablissement public local à caractère industriel ou commercial | | 4150 | Administrations, Instituions | Régie d&#39;une collectivité locale à caractère industriel ou commercial | | 4160 | Administrations, Instituions | Institution Banque de France | | 5191 | De facto undivided ownership company | Société de caution mutuelle | | 5192 | Diverse | Société coopérative de banque populaire | | 5193 | De facto undivided ownership company | Caisse de crédit maritime mutuel | | 5194 | De facto undivided ownership company | Caisse (fédérale) de crédit mutuel | | 5195 | Association fondation | Association coopérative inscrite (droit local Alsace Moselle) | | 5196 | De facto undivided ownership company | Caisse d&#39;épargne et de prévoyance à forme coopérative | | 5202 | General partnership | Société en nom collectif | | 5203 | General partnership | Société en nom collectif coopérative | | 5306 | Limited company | Société en commandite simple | | 5307 | Limited company | Société en commandite simple coopérative | | 5308 | Limited company | Société en commandite par actions | | 5309 | Limited company | Société en commandite par actions coopérative | | 5385 | Limited company | Société d&#39;exercice libéral en commandite par action | | 5410 | Limited Liability Company  | SARL nationale | | 5415 | Limited Liability Company  | SARL d&#39;économie mixte | | 5422 | Limited Liability Company  | SARL immobilière pour le commerce et l&#39;industrie (SICOMI) | | 5426 | Limited Liability Company  | Société immobilière de gestion | | 5430 | Limited Liability Company  | Safer en SARL | | 5431 | Limited Liability Company  | SARL mixte d&#39;intérêt agricole (SIMA) | | 5432 | Limited Liability Company  | SARL d&#39;intérêt collectif agricole (SICA) | | 5442 | Limited Liability Company  | SARL d&#39;attribution | | 5443 | Limited Liability Company  | SARL coopérative de construction | | 5451 | Limited Liability Company  | SARL coopérative de consommation | | 5453 | Limited Liability Company  | SARL coopérative artisanale | | 5454 | Limited Liability Company  | SARL coopérative d&#39;intérêt maritime | | 5455 | Limited Liability Company  | SARL coopérative de transports | | 5458 | Limited Liability Company  | SARL coopérative ouvrière de production et de crédit (SCOP) | | 5459 | Limited Liability Company  | SARL union de sociétés coopératives | | 5460 | Limited Liability Company  | SARL coopérative | | 5485 | Limited Liability Company  | Société d&#39;exercice libéral à responsabilité limitée | | 5498 | Limited Liability Company  | SARL unipersonnelle | | 5499 | Limited Liability Company  | SARL | | 5505 | Limited company | SA à participation ouvrière à conseil d&#39;administration | | 5510 | Limited company | SA nationale à conseil d&#39;administration | | 5515 | Limited company | SA d&#39;économie mixte à conseil d&#39;administration | | 5520 | Limited company | Société d&#39;investissement à capital variable (SICAV) à conseil d&#39;administration | | 5522 | Limited company | Société anonyme immobilière pour le commerce et l&#39;industrie (SICOMI)  à conseil d&#39;administration | | 5525 | Limited company | Société anonyme immobilière d&#39;investissement à conseil d&#39;administration | | 5530 | Limited company | Safer anonyme à conseil d&#39;administration | | 5531 | Limited company | Société anonyme mixte d&#39;intérêt agricole (SMIA) à conseil d&#39;administration | | 5532 | Limited company | Société anonyme mixte d&#39;intérêt collectif agricole (SICA) à conseil d&#39;administration | | 5542 | Limited company | Société anonyme d&#39;attribution à conseil d&#39;administration | | 5543 | Limited company | Société anonyme coopérative de construction à conseil d&#39;administration | | 5546 | Limited company | SA de HLM à conseil d&#39;administration | | 5547 | Limited company | SA coopérative de production de HLM à conseil d&#39;administration | | 5548 | Limited company | SA de crédit immobilier à conseil d&#39;administration | | 5551 | Limited company | SA coopérative de consommation à conseil d&#39;administration | | 5552 | Limited company | SA coopérative de commerçants détaillants à conseil d&#39;administration | | 5553 | Limited company | SA coopérative artisanale à conseil d&#39;administration | | 5554 | Limited company | SA coopérative (d&#39;intérêt) maritime à conseil d&#39;administration | | 5555 | Limited company | SA coopérative de transports à conseil d&#39;administration | | 5558 | Limited company | SCOP à conseil d&#39;administration | | 5559 | Limited company | SA union de sociétés coopératives à conseil d&#39;administration | | 5560 | Limited company | SA coopérative à conseil d&#39;administration | | 5585 | Limited company | Société d&#39;exercice libéral à forme anonyme à conseil d&#39;administration | | 5599 | Limited company | SA à conseil d&#39;administration | | 5605 | Limited company | SA à participation ouvrière à directoire | | 5610 | Limited company | SA nationale à directoire | | 5615 | Limited company | SA d&#39;économie mixte à directoire | | 5620 | Limited company | SICAV | | 5622 | Limited company | SICOMI | | 5625 | Limited company | Société immobilière d&#39;investissement anonyme à directoire | | 5630 | Limited company | Safer anonyme à directoire | | 5631 | Limited company | Société anonyme mixte d&#39;intérêt agricole (SMIA) | | 5632 | Limited company | SICA | | 5642 | Limited company | Société anonyme d&#39;attribution à directoire | | 5643 | Limited company | Société anonyme coopérative de construction à directoire | | 5646 | Limited company | S.A. HLM à directoire | | 5647 | Limited company | Société coopérative de production de HLM anonyme à directoire | | 5648 | Limited company | SA de crédit immobilier à directoire | | 5651 | Limited company | SA coopérative de consommation à directoire | | 5652 | Limited company | SA coopérative de commerçants détaillants à directoire | | 5653 | Limited company | SA coopérative artisanale à directoire | | 5654 | Limited company | SA coopérative (d&#39;intérêt) maritime à directoire | | 5655 | Limited company | SA coopérative de transport à directoire | | 5658 | Limited company | SCOP | | 5659 | Limited company | SA union de sociétés coopératives à directoire | | 5660 | Limited company | SA coopérative à directoire | | 5685 | Limited company | Société d&#39;exercice libéral à forme anonyme à directoire | | 5699 | Limited company | (Autre) SA à directoire | | 5710 | Limited company | SAS | | 5720 | Limited company | SASU | | 5785 | Limited company | Société d&#39;exercice libéral par action simplifiée | | 5800 | Diverse | Société européenne | | 6100 | De facto undivided ownership company | Caisse d&#39;épargne et de prévoyance | | 6210 | Economic Interest Grouping | GEIE | | 6220 | Economic Interest Grouping | GIE | | 6316 | Diverse | CUMA | | 6317 | Diverse | Société coopérative agricole | | 6318 | Diverse | Union de sociétés coopératives agricoles | | 6411 | De facto undivided ownership company | Société d&#39;assurance mutuelle | | 6521 | Civils companies (without SCI) | SCPI | | 6532 | Civils companies (without SCI) | SICA | | 6533 | Civils companies (without SCI) | GAEC | | 6534 | Civils companies (without SCI) | Groupement foncier agricole | | 6535 | Civils companies (without SCI) | Groupement agricole foncier | | 6536 | Civils companies (without SCI) | Groupement forestier | | 6537 | Civils companies (without SCI) | Groupement pastoral | | 6538 | Civils companies (without SCI) | Groupement foncier rural | | 6539 | Civils companies (without SCI) | Société civile foncière | | 6540 | Civils companies | SCI | | 6541 | Civils companies | SCI de construction vente | | 6542 | Civils companies (without SCI) | Société civile d&#39;attribution | | 6543 | Civils companies (without SCI) | Société civile coopérative de construction | | 6544 | Civils companies | Société civile d&#39;accession progressive à la propriété | | 6551 | Civils companies (without SCI) | Société civile coopérative de consommation | | 6554 | Civils companies (without SCI) | Société civile coopérative (d&#39;intérêt) maritime | | 6558 | Civils companies (without SCI) | Société civile coopérative entre médecins | | 6560 | Civils companies (without SCI) | SCP | | 6561 | Civils companies (without SCI) | SCP d&#39;avocats | | 6562 | Civils companies (without SCI) | SCP d&#39;avocats aux conseil | | 6563 | Civils companies (without SCI) | SCP d&#39;avoués d&#39;appel | | 6564 | Civils companies (without SCI) | SCP d&#39;huissiers | | 6565 | Civils companies (without SCI) | SCP de notaires | | 6566 | Civils companies (without SCI) | SCP de commissaires-priseurs | | 6567 | Civils companies (without SCI) | SCP de greffiers de tribunal de commerce | | 6568 | Civils companies (without SCI) | SCP de conseils juridiques | | 6569 | Civils companies (without SCI) | SCP de commissaires aux comptes | | 6571 | Civils companies (without SCI) | SCP de médecins | | 6572 | Civils companies (without SCI) | SCP de dentistes | | 6573 | Civils companies (without SCI) | SCP d&#39;infirmiers | | 6574 | Civils companies (without SCI) | SCP de masseurs kinésithérapeutes | | 6575 | Civils companies (without SCI) | SCP de directeurs de laboratoire d&#39;analyse médicale | | 6576 | Civils companies (without SCI) | SCP de vétérinaires | | 6577 | Civils companies (without SCI) | SCP de géomètres-experts | | 6578 | Civils companies (without SCI) | SCP d&#39;architectes | | 6585 | Civils companies (without SCI) | SCP | | 6588 | Civils companies (without SCI) | Société civile laitière | | 6589 | Civils companies (without SCI) | Société civile de moyens | | 6595 | Civils companies (without SCI) | Caisse (locale) de crédit mutuel | | 6596 | Civils companies (without SCI) | Caisse de crédit agricole mutuel | | 6597 | Civils companies (without SCI) | Société civile d&#39;exploitation agricole | | 6598 | Farm operator  | Exploitation agricole à responsabilité limitée | | 6599 | Civils companies (without SCI) | Autre société civile | | 6901 | Diverse | Autres personnes de droit privé inscrites au registre du commerce et des sociétés | | 7111 | Administrations, Instituions | Autorité constitutionnelle | | 7112 | Administrations, Instituions | Autorité administrative indépendante | | 7113 | Administrations, Instituions | Ministère | | 7120 | Administrations, Instituions | Service central d&#39;un ministère | | 7150 | Administrations, Instituions | Service du ministère de la Défense | | 7160 | Administrations, Instituions | Service déconcentré à compétence nation . D&#39;un ministère (hors Défense) | | 7171 | Administrations, Instituions | Service déconcentré de l&#39;Etat à compétence (inter) régionale | | 7172 | Administrations, Instituions | Service déconcentré de l&#39;Etat à compétence (inter) départementale | | 7179 | Administrations, Instituions | (Autre) Service déconcentré de l&#39;Etat à compétence territoriale | | 7190 | Administrations, Instituions | Ecole nationale non dotée de la personnalité morale | | 7210 | Administrations, Instituions | Commune | | 7220 | Administrations, Instituions | Département | | 7225 | Administrations, Instituions | Territoire d&#39;Outre-Mer | | 7229 | Administrations, Instituions | (Autre) Collectivité territoriale | | 7230 | Administrations, Instituions | Région | | 7312 | Administrations, Instituions | Commune associée | | 7313 | Administrations, Instituions | Section de commune | | 7314 | Administrations, Instituions | Ensemble urbain | | 7321 | Administrations, Instituions | Association syndicale autorisée | | 7322 | Administrations, Instituions | Association foncière urbaine | | 7323 | Administrations, Instituions | Association foncière de remembrement | | 7331 | Administrations, Instituions | Etablissement public local d&#39;enseignement | | 7340 | Administrations, Instituions | Pôle métropolitain | | 7341 | Administrations, Instituions | Secteur de commune | | 7342 | Administrations, Instituions | District urbain | | 7343 | Administrations, Instituions | Communauté urbaine | | 7344 | Administrations, Instituions | Métropole | | 7345 | Administrations, Instituions | Syndicat intercommunal à vocation multiple (SIVOM) | | 7346 | Administrations, Instituions | Communauté de commune | | 7347 | Administrations, Instituions | Communauté de villes | | 7348 | Administrations, Instituions | Communauté d&#39;agglomération | | 7349 | Administrations, Instituions | Autre établissement public local de coopération non spécialisé ou entente | | 7351 | Administrations, Instituions | Institution interdépartementale ou entente | | 7352 | Administrations, Instituions | Institution interrégionale ou entente | | 7353 | Administrations, Instituions | Syndicat intercommunal à vocation unique (SIVU) | | 7354 | Administrations, Instituions | Syndicat mixte communal | | 7355 | Administrations, Instituions | Autre syndicat mixte | | 7356 | Administrations, Instituions | Commission syndicale pour la gestion des biens indivis des communes | | 7361 | Administrations, Instituions | Centre communal d&#39;action sociale | | 7362 | Administrations, Instituions | Caisse des écoles | | 7363 | Administrations, Instituions | Caisse de crédit municipal | | 7364 | Administrations, Instituions | Etablissement d&#39;hospitalisation | | 7365 | Administrations, Instituions | Syndicat inter hospitalier | | 7366 | Administrations, Instituions | Etablissement public local social et médico-social | | 7371 | Administrations, Instituions | Office public d&#39;habitation à loyer modéré (OPHLM) | | 7372 | Administrations, Instituions | Service départemental d&#39;incendie | | 7373 | Administrations, Instituions | Etablissement public local culturel | | 7378 | Administrations, Instituions | Régie d&#39;une collectivité locale à caractère administratif | | 7379 | Administrations, Instituions | (Autre) Etablissement public administratif local | | 7381 | Administrations, Instituions | Organisme consulaire | | 7382 | Administrations, Instituions | Etablissement public national ayant fonction d&#39;administration centrale | | 7383 | Administrations, Instituions | Etablissement public national à caractère scientifique  culturel et professionnel | | 7384 | Administrations, Instituions | Autre établissement public national d&#39;enseignement | | 7385 | Administrations, Instituions | Autre établissement public national administratif à compétence territoriale limitée | | 7389 | Administrations, Instituions | Etablissement public national à caractère administratif | | 7410 | Administrations, Instituions | Groupement d&#39;intérêt public (GIP) | | 7430 | Administrations, Instituions | Etablissement public des cultes d&#39;Alsace-Lorraine | | 7450 | Administrations, Instituions | Etablissement public, cercle et foyer dans les armées | | 7470 | Administrations, Instituions | Groupement de coopération sanitaire à gestion publique | | 7490 | Administrations, Instituions | Autre personne morale de droit administratif | | 8110 | Administrations, Instituions | Régime général de la sécurité sociale | | 8120 | Administrations, Instituions | Régime spécial de sécurité sociale | | 8130 | Administrations, Instituions | Institution de retraite complémentaire | | 8140 | Administrations, Instituions | Mutualité sociale agricole | | 8150 | Administrations, Instituions | Régime maladie des non-salariés non agricoles | | 8160 | Administrations, Instituions | Régime vieillesse ne dépendant pas du régime général de la sécurité sociale | | 8170 | Administrations, Instituions | Régime d&#39;assurance chômage | | 8190 | Administrations, Instituions | Autre régime de prévoyance sociale | | 8210 | De facto undivided ownership company | Mutuelle | | 8250 | De facto undivided ownership company | Assurance mutuelle agricole | | 8290 | De facto undivided ownership company | Autre organisme mutualiste | | 8310 | Association fondation | Comité central d&#39;entreprise | | 8311 | Association fondation | Comité d&#39;établissement | | 8410 | Association fondation | Syndicat de salariés | | 8420 | Association fondation | Syndicat patronal | | 8450 | Association fondation | Ordre professionnel ou assimilé | | 8470 | Association fondation | Centre technique industriel ou comité professionnel du développement économique | | 8490 | Association fondation | Autre organisme professionnel | | 8510 | Administrations, Instituions | Institution de prévoyance | | 8520 | Administrations, Instituions | Institution de retraite supplémentaire | | 9110 | Condominium syndicate | Syndicat de copropriété | | 9150 | Association fondation | Association syndicale libre | | 9210 | Association fondation | Association non déclarée | | 9220 | Association fondation | Association déclarée | | 9221 | Association fondation | Association déclarée \&quot;entreprises d&#39;insertion par l&#39;économique\&quot; | | 9222 | Association fondation | Association intermédiaire | | 9223 | Association fondation | Groupement d&#39;employeurs | | 9224 | Association fondation | Association d&#39;avocats à responsabilité professionnelle individuelle | | 9230 | Association fondation | Association déclarée  reconnue d&#39;utilité publique | | 9240 | Association fondation | Congrégation | | 9260 | Association fondation | Association de droit local | | 9300 | Association fondation | Fondation | | 9900 | Diverse | Autre personne morale de droit privé | | 9970 | Diverse | Groupement de coopération sanitaire à gestion privée |  | [optional] 
 **legal_share_capital** | **Integer**| Business share capital | [optional] 
 **legal_sector** | **String**| Business sector. NAF code in France | [optional] 
 **legal_annual_turn_over** | **String**| Business annual turnover (in k€) | [optional] 
 **legal_net_income_range** | **String**| Business net income range (in k€) | [optional] 
 **legal_number_of_employee_range** | **String**| Business number of employees range | [optional] 
 **effective_beneficiary** | **Integer**| Business effective beneficiary | [optional] 
 **language** | **String**| User&#39;s prefered language (ISO 639-1) | [optional] 
 **tax_number** | **String**| User&#39;s tax identification number. If the taxResidence is not set to FR, the field is mandatory. | [optional] 
 **tax_residence** | **String**| User&#39;s tax residence country code (2 char code following ISO 3166 norm). | [optional] 
 **position** | **String**| User&#39;s position  (deprecated, you must use the parameter occupation). | [optional] 
 **personal_assets** | **String**| User&#39;s personal assets range expressed in k€. | [optional] 
 **personal_assets_range** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_users**
> InlineResponse20026 put_users(specified_us_person, email, opts)

create user

Create a new user in the system.

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

api_instance = TreezorClient::UserApi.new

specified_us_person = 56 # Integer | Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années :  | Value | Type | | --- | --- | | 0 | No | | 1 | Yes | 

email = 'email_example' # String | User's email address (must be valid).

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  user_type_id: 56, # Integer | User's type. Possible values:  | Value | Type | | --- | --- | | 1 | Natural person (default)| | 2 | Business entity | | 3 | Non - governmental organization | | 4 | Governmental organization | 
  user_tag: 'user_tag_example', # String | Custom data.
  parent_user_id: 56, # Integer | User id of user's parent if any.
  parent_type: 'parent_type_example', # String | Type of bound between parent and current user : * shareholder * employee * leader  (deprecated you must use the controllingPersonType and employeeType parameters) 
  controlling_person_type: 56, # Integer | Type of relationship :  | Value | Type | | --- | --- | | 1 | Shareholder | | 2 | Other_relationship | | 3 | Director | | 4 | None (default) | 
  employee_type: 56, # Integer | Type of user's role :  | Value | Type | | --- | --- | | 1 | Leader | | 2 | Employee | | 3 | None (default)| 
  entity_type: 56, # Integer | Type of user's entity type :      | Value | Type |     | --- | --- |     | 1 | Reporting Financial Institution |     | 2 | Non-Reporting Financial Institution |     | 3 | Active Non-Financial Entity - Governmental entities, Int. organizations |     | 4 | Active Non-Financial Entity - Other |     | 5 | Passive Non-Financial Entity - Investment entity that is not Participating Jurisdiction FI | 
  title: 'title_example', # String | User's title. Possible values: * M * MME * MLLE 
  firstname: 'firstname_example', # String | User's first name
  lastname: 'lastname_example', # String | User's last name
  middle_names: 'middle_names_example', # String | User's middle names
  birthday: 'birthday_example', # String | User's birth date. Format YYYY-MM-DD
  address1: 'address1_example', # String | User's postal address (main). Can not contain carriage return.
  address2: 'address2_example', # String | User's postal address (complement). Can not contain carriage return.
  postcode: 'postcode_example', # String | User's postcode
  city: 'city_example', # String | User's city
  state: 'state_example', # String | User's state
  country: 'country_example', # String | User's country
  phone: 'phone_example', # String | User's phone number
  mobile: 'mobile_example', # String | User's mobile phone number
  nationality: 'nationality_example', # String | User's nationality
  nationality_other: 'nationality_other_example', # String | User's other nationality
  place_of_birth: 'place_of_birth_example', # String | User's place of birth
  birth_country: 'birth_country_example', # String | User's country of birth
  occupation: 'occupation_example', # String | User's occupation
  income_range: 'income_range_example', # String | Customer income range
  legal_name: 'legal_name_example', # String | Business name
  legal_registration_number: 'legal_registration_number_example', # String | Business registration number
  legal_tva_number: 'legal_tva_number_example', # String | Business VAT number
  legal_registration_date: Date.parse('2013-10-20'), # Date | Business registration date
  legal_form: 'legal_form_example', # String | | Code | Category | Details (in french) | | ---- | ----- | ---- | | 1000 | Individual company | Entrepreneur Individuel a Responsabilité Limitée (EIRL) | | 1100 | Individual company | Artisan-Commerçant | | 1200 | Individual company | Commerçant | | 1300 | Individual company | Artisan | | 1400 | Liberal profession | Officier public ou ministériel | | 1500 | Liberal profession | Profession libérale | | 1600 | Farm operator  | Exploitant agricole | | 1700 | Liberal profession | Agent commercial | | 1800 | Partner Director | Associé-gérant | | 1900 | Individual company | Personne physique | | 2110 | Indivision and others | Indivision entre personnes physiques | | 2120 | Indivision and others | Indivision avec personne morale | | 2210 | Indivision and others | Société créée de fait entre personnes physiques | | 2220 | Indivision and others | Société créée de fait avec personne morale | | 2310 | Indivision and others | Société en participation entre personnes physiques | | 2320 | Indivision and others | Société en participation avec personne morale | | 2385 | Indivision and others | Société en participation de professions libérales | | 2400 | Indivision and others | Fiducie | | 2700 | Diverse | Paroisse hors zone concordataire | | 2900 | Economic Interest Grouping | Autre groupement de droit privé non doté de la personnalité morale | | 3110 | Foreign company | Représentation ou agence commerciale d'état ou organisme public étranger  immatriculé au RCS | | 3120 | Foreign company | Société étrangère immatriculée au RCS | | 3205 | Foreign company | Organisation internationale | | 3210 | Foreign company | Etat collectivité ou établissement public étranger | | 3220 | Foreign company | Société étrangère non immatriculée au RCS | | 3290 | Foreign company | (Autre) personne morale de droit étranger | | 4110 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial doté d'un comptable public | | 4120 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial non doté d'un comptable public | | 4130 | Administrations, Instituions | Exploitant public | | 4140 | Administrations, Instituions | Etablissement public local à caractère industriel ou commercial | | 4150 | Administrations, Instituions | Régie d'une collectivité locale à caractère industriel ou commercial | | 4160 | Administrations, Instituions | Institution Banque de France | | 5191 | De facto undivided ownership company | Société de caution mutuelle | | 5192 | Diverse | Société coopérative de banque populaire | | 5193 | De facto undivided ownership company | Caisse de crédit maritime mutuel | | 5194 | De facto undivided ownership company | Caisse (fédérale) de crédit mutuel | | 5195 | Association fondation | Association coopérative inscrite (droit local Alsace Moselle) | | 5196 | De facto undivided ownership company | Caisse d'épargne et de prévoyance à forme coopérative | | 5202 | General partnership | Société en nom collectif | | 5203 | General partnership | Société en nom collectif coopérative | | 5306 | Limited company | Société en commandite simple | | 5307 | Limited company | Société en commandite simple coopérative | | 5308 | Limited company | Société en commandite par actions | | 5309 | Limited company | Société en commandite par actions coopérative | | 5385 | Limited company | Société d'exercice libéral en commandite par action | | 5410 | Limited Liability Company  | SARL nationale | | 5415 | Limited Liability Company  | SARL d'économie mixte | | 5422 | Limited Liability Company  | SARL immobilière pour le commerce et l'industrie (SICOMI) | | 5426 | Limited Liability Company  | Société immobilière de gestion | | 5430 | Limited Liability Company  | Safer en SARL | | 5431 | Limited Liability Company  | SARL mixte d'intérêt agricole (SIMA) | | 5432 | Limited Liability Company  | SARL d'intérêt collectif agricole (SICA) | | 5442 | Limited Liability Company  | SARL d'attribution | | 5443 | Limited Liability Company  | SARL coopérative de construction | | 5451 | Limited Liability Company  | SARL coopérative de consommation | | 5453 | Limited Liability Company  | SARL coopérative artisanale | | 5454 | Limited Liability Company  | SARL coopérative d'intérêt maritime | | 5455 | Limited Liability Company  | SARL coopérative de transports | | 5458 | Limited Liability Company  | SARL coopérative ouvrière de production et de crédit (SCOP) | | 5459 | Limited Liability Company  | SARL union de sociétés coopératives | | 5460 | Limited Liability Company  | SARL coopérative | | 5485 | Limited Liability Company  | Société d'exercice libéral à responsabilité limitée | | 5498 | Limited Liability Company  | SARL unipersonnelle | | 5499 | Limited Liability Company  | SARL | | 5505 | Limited company | SA à participation ouvrière à conseil d'administration | | 5510 | Limited company | SA nationale à conseil d'administration | | 5515 | Limited company | SA d'économie mixte à conseil d'administration | | 5520 | Limited company | Société d'investissement à capital variable (SICAV) à conseil d'administration | | 5522 | Limited company | Société anonyme immobilière pour le commerce et l'industrie (SICOMI)  à conseil d'administration | | 5525 | Limited company | Société anonyme immobilière d'investissement à conseil d'administration | | 5530 | Limited company | Safer anonyme à conseil d'administration | | 5531 | Limited company | Société anonyme mixte d'intérêt agricole (SMIA) à conseil d'administration | | 5532 | Limited company | Société anonyme mixte d'intérêt collectif agricole (SICA) à conseil d'administration | | 5542 | Limited company | Société anonyme d'attribution à conseil d'administration | | 5543 | Limited company | Société anonyme coopérative de construction à conseil d'administration | | 5546 | Limited company | SA de HLM à conseil d'administration | | 5547 | Limited company | SA coopérative de production de HLM à conseil d'administration | | 5548 | Limited company | SA de crédit immobilier à conseil d'administration | | 5551 | Limited company | SA coopérative de consommation à conseil d'administration | | 5552 | Limited company | SA coopérative de commerçants détaillants à conseil d'administration | | 5553 | Limited company | SA coopérative artisanale à conseil d'administration | | 5554 | Limited company | SA coopérative (d'intérêt) maritime à conseil d'administration | | 5555 | Limited company | SA coopérative de transports à conseil d'administration | | 5558 | Limited company | SCOP à conseil d'administration | | 5559 | Limited company | SA union de sociétés coopératives à conseil d'administration | | 5560 | Limited company | SA coopérative à conseil d'administration | | 5585 | Limited company | Société d'exercice libéral à forme anonyme à conseil d'administration | | 5599 | Limited company | SA à conseil d'administration | | 5605 | Limited company | SA à participation ouvrière à directoire | | 5610 | Limited company | SA nationale à directoire | | 5615 | Limited company | SA d'économie mixte à directoire | | 5620 | Limited company | SICAV | | 5622 | Limited company | SICOMI | | 5625 | Limited company | Société immobilière d'investissement anonyme à directoire | | 5630 | Limited company | Safer anonyme à directoire | | 5631 | Limited company | Société anonyme mixte d'intérêt agricole (SMIA) | | 5632 | Limited company | SICA | | 5642 | Limited company | Société anonyme d'attribution à directoire | | 5643 | Limited company | Société anonyme coopérative de construction à directoire | | 5646 | Limited company | S.A. HLM à directoire | | 5647 | Limited company | Société coopérative de production de HLM anonyme à directoire | | 5648 | Limited company | SA de crédit immobilier à directoire | | 5651 | Limited company | SA coopérative de consommation à directoire | | 5652 | Limited company | SA coopérative de commerçants détaillants à directoire | | 5653 | Limited company | SA coopérative artisanale à directoire | | 5654 | Limited company | SA coopérative (d'intérêt) maritime à directoire | | 5655 | Limited company | SA coopérative de transport à directoire | | 5658 | Limited company | SCOP | | 5659 | Limited company | SA union de sociétés coopératives à directoire | | 5660 | Limited company | SA coopérative à directoire | | 5685 | Limited company | Société d'exercice libéral à forme anonyme à directoire | | 5699 | Limited company | (Autre) SA à directoire | | 5710 | Limited company | SAS | | 5720 | Limited company | SASU | | 5785 | Limited company | Société d'exercice libéral par action simplifiée | | 5800 | Diverse | Société européenne | | 6100 | De facto undivided ownership company | Caisse d'épargne et de prévoyance | | 6210 | Economic Interest Grouping | GEIE | | 6220 | Economic Interest Grouping | GIE | | 6316 | Diverse | CUMA | | 6317 | Diverse | Société coopérative agricole | | 6318 | Diverse | Union de sociétés coopératives agricoles | | 6411 | De facto undivided ownership company | Société d'assurance mutuelle | | 6521 | Civils companies (without SCI) | SCPI | | 6532 | Civils companies (without SCI) | SICA | | 6533 | Civils companies (without SCI) | GAEC | | 6534 | Civils companies (without SCI) | Groupement foncier agricole | | 6535 | Civils companies (without SCI) | Groupement agricole foncier | | 6536 | Civils companies (without SCI) | Groupement forestier | | 6537 | Civils companies (without SCI) | Groupement pastoral | | 6538 | Civils companies (without SCI) | Groupement foncier rural | | 6539 | Civils companies (without SCI) | Société civile foncière | | 6540 | Civils companies | SCI | | 6541 | Civils companies | SCI de construction vente | | 6542 | Civils companies (without SCI) | Société civile d'attribution | | 6543 | Civils companies (without SCI) | Société civile coopérative de construction | | 6544 | Civils companies | Société civile d'accession progressive à la propriété | | 6551 | Civils companies (without SCI) | Société civile coopérative de consommation | | 6554 | Civils companies (without SCI) | Société civile coopérative (d'intérêt) maritime | | 6558 | Civils companies (without SCI) | Société civile coopérative entre médecins | | 6560 | Civils companies (without SCI) | SCP | | 6561 | Civils companies (without SCI) | SCP d'avocats | | 6562 | Civils companies (without SCI) | SCP d'avocats aux conseil | | 6563 | Civils companies (without SCI) | SCP d'avoués d'appel | | 6564 | Civils companies (without SCI) | SCP d'huissiers | | 6565 | Civils companies (without SCI) | SCP de notaires | | 6566 | Civils companies (without SCI) | SCP de commissaires-priseurs | | 6567 | Civils companies (without SCI) | SCP de greffiers de tribunal de commerce | | 6568 | Civils companies (without SCI) | SCP de conseils juridiques | | 6569 | Civils companies (without SCI) | SCP de commissaires aux comptes | | 6571 | Civils companies (without SCI) | SCP de médecins | | 6572 | Civils companies (without SCI) | SCP de dentistes | | 6573 | Civils companies (without SCI) | SCP d'infirmiers | | 6574 | Civils companies (without SCI) | SCP de masseurs kinésithérapeutes | | 6575 | Civils companies (without SCI) | SCP de directeurs de laboratoire d'analyse médicale | | 6576 | Civils companies (without SCI) | SCP de vétérinaires | | 6577 | Civils companies (without SCI) | SCP de géomètres-experts | | 6578 | Civils companies (without SCI) | SCP d'architectes | | 6585 | Civils companies (without SCI) | SCP | | 6588 | Civils companies (without SCI) | Société civile laitière | | 6589 | Civils companies (without SCI) | Société civile de moyens | | 6595 | Civils companies (without SCI) | Caisse (locale) de crédit mutuel | | 6596 | Civils companies (without SCI) | Caisse de crédit agricole mutuel | | 6597 | Civils companies (without SCI) | Société civile d'exploitation agricole | | 6598 | Farm operator  | Exploitation agricole à responsabilité limitée | | 6599 | Civils companies (without SCI) | Autre société civile | | 6901 | Diverse | Autres personnes de droit privé inscrites au registre du commerce et des sociétés | | 7111 | Administrations, Instituions | Autorité constitutionnelle | | 7112 | Administrations, Instituions | Autorité administrative indépendante | | 7113 | Administrations, Instituions | Ministère | | 7120 | Administrations, Instituions | Service central d'un ministère | | 7150 | Administrations, Instituions | Service du ministère de la Défense | | 7160 | Administrations, Instituions | Service déconcentré à compétence nation . D'un ministère (hors Défense) | | 7171 | Administrations, Instituions | Service déconcentré de l'Etat à compétence (inter) régionale | | 7172 | Administrations, Instituions | Service déconcentré de l'Etat à compétence (inter) départementale | | 7179 | Administrations, Instituions | (Autre) Service déconcentré de l'Etat à compétence territoriale | | 7190 | Administrations, Instituions | Ecole nationale non dotée de la personnalité morale | | 7210 | Administrations, Instituions | Commune | | 7220 | Administrations, Instituions | Département | | 7225 | Administrations, Instituions | Territoire d'Outre-Mer | | 7229 | Administrations, Instituions | (Autre) Collectivité territoriale | | 7230 | Administrations, Instituions | Région | | 7312 | Administrations, Instituions | Commune associée | | 7313 | Administrations, Instituions | Section de commune | | 7314 | Administrations, Instituions | Ensemble urbain | | 7321 | Administrations, Instituions | Association syndicale autorisée | | 7322 | Administrations, Instituions | Association foncière urbaine | | 7323 | Administrations, Instituions | Association foncière de remembrement | | 7331 | Administrations, Instituions | Etablissement public local d'enseignement | | 7340 | Administrations, Instituions | Pôle métropolitain | | 7341 | Administrations, Instituions | Secteur de commune | | 7342 | Administrations, Instituions | District urbain | | 7343 | Administrations, Instituions | Communauté urbaine | | 7344 | Administrations, Instituions | Métropole | | 7345 | Administrations, Instituions | Syndicat intercommunal à vocation multiple (SIVOM) | | 7346 | Administrations, Instituions | Communauté de commune | | 7347 | Administrations, Instituions | Communauté de villes | | 7348 | Administrations, Instituions | Communauté d'agglomération | | 7349 | Administrations, Instituions | Autre établissement public local de coopération non spécialisé ou entente | | 7351 | Administrations, Instituions | Institution interdépartementale ou entente | | 7352 | Administrations, Instituions | Institution interrégionale ou entente | | 7353 | Administrations, Instituions | Syndicat intercommunal à vocation unique (SIVU) | | 7354 | Administrations, Instituions | Syndicat mixte communal | | 7355 | Administrations, Instituions | Autre syndicat mixte | | 7356 | Administrations, Instituions | Commission syndicale pour la gestion des biens indivis des communes | | 7361 | Administrations, Instituions | Centre communal d'action sociale | | 7362 | Administrations, Instituions | Caisse des écoles | | 7363 | Administrations, Instituions | Caisse de crédit municipal | | 7364 | Administrations, Instituions | Etablissement d'hospitalisation | | 7365 | Administrations, Instituions | Syndicat inter hospitalier | | 7366 | Administrations, Instituions | Etablissement public local social et médico-social | | 7371 | Administrations, Instituions | Office public d'habitation à loyer modéré (OPHLM) | | 7372 | Administrations, Instituions | Service départemental d'incendie | | 7373 | Administrations, Instituions | Etablissement public local culturel | | 7378 | Administrations, Instituions | Régie d'une collectivité locale à caractère administratif | | 7379 | Administrations, Instituions | (Autre) Etablissement public administratif local | | 7381 | Administrations, Instituions | Organisme consulaire | | 7382 | Administrations, Instituions | Etablissement public national ayant fonction d'administration centrale | | 7383 | Administrations, Instituions | Etablissement public national à caractère scientifique  culturel et professionnel | | 7384 | Administrations, Instituions | Autre établissement public national d'enseignement | | 7385 | Administrations, Instituions | Autre établissement public national administratif à compétence territoriale limitée | | 7389 | Administrations, Instituions | Etablissement public national à caractère administratif | | 7410 | Administrations, Instituions | Groupement d'intérêt public (GIP) | | 7430 | Administrations, Instituions | Etablissement public des cultes d'Alsace-Lorraine | | 7450 | Administrations, Instituions | Etablissement public, cercle et foyer dans les armées | | 7470 | Administrations, Instituions | Groupement de coopération sanitaire à gestion publique | | 7490 | Administrations, Instituions | Autre personne morale de droit administratif | | 8110 | Administrations, Instituions | Régime général de la sécurité sociale | | 8120 | Administrations, Instituions | Régime spécial de sécurité sociale | | 8130 | Administrations, Instituions | Institution de retraite complémentaire | | 8140 | Administrations, Instituions | Mutualité sociale agricole | | 8150 | Administrations, Instituions | Régime maladie des non-salariés non agricoles | | 8160 | Administrations, Instituions | Régime vieillesse ne dépendant pas du régime général de la sécurité sociale | | 8170 | Administrations, Instituions | Régime d'assurance chômage | | 8190 | Administrations, Instituions | Autre régime de prévoyance sociale | | 8210 | De facto undivided ownership company | Mutuelle | | 8250 | De facto undivided ownership company | Assurance mutuelle agricole | | 8290 | De facto undivided ownership company | Autre organisme mutualiste | | 8310 | Association fondation | Comité central d'entreprise | | 8311 | Association fondation | Comité d'établissement | | 8410 | Association fondation | Syndicat de salariés | | 8420 | Association fondation | Syndicat patronal | | 8450 | Association fondation | Ordre professionnel ou assimilé | | 8470 | Association fondation | Centre technique industriel ou comité professionnel du développement économique | | 8490 | Association fondation | Autre organisme professionnel | | 8510 | Administrations, Instituions | Institution de prévoyance | | 8520 | Administrations, Instituions | Institution de retraite supplémentaire | | 9110 | Condominium syndicate | Syndicat de copropriété | | 9150 | Association fondation | Association syndicale libre | | 9210 | Association fondation | Association non déclarée | | 9220 | Association fondation | Association déclarée | | 9221 | Association fondation | Association déclarée \"entreprises d'insertion par l'économique\" | | 9222 | Association fondation | Association intermédiaire | | 9223 | Association fondation | Groupement d'employeurs | | 9224 | Association fondation | Association d'avocats à responsabilité professionnelle individuelle | | 9230 | Association fondation | Association déclarée  reconnue d'utilité publique | | 9240 | Association fondation | Congrégation | | 9260 | Association fondation | Association de droit local | | 9300 | Association fondation | Fondation | | 9900 | Diverse | Autre personne morale de droit privé | | 9970 | Diverse | Groupement de coopération sanitaire à gestion privée | 
  legal_share_capital: 56, # Integer | Business share capital
  legal_sector: 'legal_sector_example', # String | Business sector. NAF code in France
  legal_annual_turn_over: 'legal_annual_turn_over_example', # String | Business annual turnover (in kâ‚¬)
  legal_net_income_range: 'legal_net_income_range_example', # String | Business net income range (in kâ‚¬)
  legal_number_of_employee_range: 'legal_number_of_employee_range_example', # String | Business number of employees range
  effective_beneficiary: 56, # Integer | Business effective beneficiary
  language: 'language_example', # String | User's prefered language (ISO 639-1)
  tax_number: 'tax_number_example', # String | User's tax identification number. If the taxResidence is set to another country than France, the field is mandatory. (deprecated, you must use the TaxResidence endpoint) 
  tax_residence: 'tax_residence_example', # String | User's tax residence country code (2 char code following ISO 3166 norm). (deprecated, you must use the TaxResidence endpoint) 
  position: 'position_example', # String | User's position (deprecated, you must use the parameter occupation).
  personal_assets: 'personal_assets_example' # String | User's personal assets range exprimed in Kâ‚¬.
}

begin
  #create user
  result = api_instance.put_users(specified_us_person, email, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->put_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **specified_us_person** | **Integer**| Est considéré comme ayant la nationalité ou la citoyenneté américaine : Tout citoyen des États-Unis : une personne est présumée citoyen des États-Unis dès lors qu’elle possède un passeport américain ou qu’elle est née sur le territoire des Etats-Unis, même lorsqu’un tel lieu de naissance figure sur un passeport d’un autre pays, ou que la personne possède également une autre nationalité ou a sa résidence dans un autre pays. Une condition néanmoins : la personne ne doit pas avoir renoncé à la citoyenneté américaine ; • Tout résident légal des États-Unis, quelle que soit sa nationalité : (i) quiconque est considéré comme résident fiscal aux États-Unis aux termes de la loi fédérale américaine, (ii) quiconque demande à être traité comme résident fiscal aux États-Unis, ou (iii) quiconque est considéré comme résident fiscal aux termes de la loi de cet État américain. • Toute personne titulaire d’une carte de séjour permanent (green card) aux États-Unis ou résidant de façon permanente aux États-Unis ou y ayant passé une période suffisamment longue au cours des trois dernières années :  | Value | Type | | --- | --- | | 0 | No | | 1 | Yes |  | 
 **email** | **String**| User&#39;s email address (must be valid). | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **user_type_id** | **Integer**| User&#39;s type. Possible values:  | Value | Type | | --- | --- | | 1 | Natural person (default)| | 2 | Business entity | | 3 | Non - governmental organization | | 4 | Governmental organization |  | [optional] 
 **user_tag** | **String**| Custom data. | [optional] 
 **parent_user_id** | **Integer**| User id of user&#39;s parent if any. | [optional] 
 **parent_type** | **String**| Type of bound between parent and current user : * shareholder * employee * leader  (deprecated you must use the controllingPersonType and employeeType parameters)  | [optional] 
 **controlling_person_type** | **Integer**| Type of relationship :  | Value | Type | | --- | --- | | 1 | Shareholder | | 2 | Other_relationship | | 3 | Director | | 4 | None (default) |  | [optional] 
 **employee_type** | **Integer**| Type of user&#39;s role :  | Value | Type | | --- | --- | | 1 | Leader | | 2 | Employee | | 3 | None (default)|  | [optional] 
 **entity_type** | **Integer**| Type of user&#39;s entity type :      | Value | Type |     | --- | --- |     | 1 | Reporting Financial Institution |     | 2 | Non-Reporting Financial Institution |     | 3 | Active Non-Financial Entity - Governmental entities, Int. organizations |     | 4 | Active Non-Financial Entity - Other |     | 5 | Passive Non-Financial Entity - Investment entity that is not Participating Jurisdiction FI |  | [optional] 
 **title** | **String**| User&#39;s title. Possible values: * M * MME * MLLE  | [optional] 
 **firstname** | **String**| User&#39;s first name | [optional] 
 **lastname** | **String**| User&#39;s last name | [optional] 
 **middle_names** | **String**| User&#39;s middle names | [optional] 
 **birthday** | **String**| User&#39;s birth date. Format YYYY-MM-DD | [optional] 
 **address1** | **String**| User&#39;s postal address (main). Can not contain carriage return. | [optional] 
 **address2** | **String**| User&#39;s postal address (complement). Can not contain carriage return. | [optional] 
 **postcode** | **String**| User&#39;s postcode | [optional] 
 **city** | **String**| User&#39;s city | [optional] 
 **state** | **String**| User&#39;s state | [optional] 
 **country** | **String**| User&#39;s country | [optional] 
 **phone** | **String**| User&#39;s phone number | [optional] 
 **mobile** | **String**| User&#39;s mobile phone number | [optional] 
 **nationality** | **String**| User&#39;s nationality | [optional] 
 **nationality_other** | **String**| User&#39;s other nationality | [optional] 
 **place_of_birth** | **String**| User&#39;s place of birth | [optional] 
 **birth_country** | **String**| User&#39;s country of birth | [optional] 
 **occupation** | **String**| User&#39;s occupation | [optional] 
 **income_range** | **String**| Customer income range | [optional] 
 **legal_name** | **String**| Business name | [optional] 
 **legal_registration_number** | **String**| Business registration number | [optional] 
 **legal_tva_number** | **String**| Business VAT number | [optional] 
 **legal_registration_date** | **Date**| Business registration date | [optional] 
 **legal_form** | **String**| | Code | Category | Details (in french) | | ---- | ----- | ---- | | 1000 | Individual company | Entrepreneur Individuel a Responsabilité Limitée (EIRL) | | 1100 | Individual company | Artisan-Commerçant | | 1200 | Individual company | Commerçant | | 1300 | Individual company | Artisan | | 1400 | Liberal profession | Officier public ou ministériel | | 1500 | Liberal profession | Profession libérale | | 1600 | Farm operator  | Exploitant agricole | | 1700 | Liberal profession | Agent commercial | | 1800 | Partner Director | Associé-gérant | | 1900 | Individual company | Personne physique | | 2110 | Indivision and others | Indivision entre personnes physiques | | 2120 | Indivision and others | Indivision avec personne morale | | 2210 | Indivision and others | Société créée de fait entre personnes physiques | | 2220 | Indivision and others | Société créée de fait avec personne morale | | 2310 | Indivision and others | Société en participation entre personnes physiques | | 2320 | Indivision and others | Société en participation avec personne morale | | 2385 | Indivision and others | Société en participation de professions libérales | | 2400 | Indivision and others | Fiducie | | 2700 | Diverse | Paroisse hors zone concordataire | | 2900 | Economic Interest Grouping | Autre groupement de droit privé non doté de la personnalité morale | | 3110 | Foreign company | Représentation ou agence commerciale d&#39;état ou organisme public étranger  immatriculé au RCS | | 3120 | Foreign company | Société étrangère immatriculée au RCS | | 3205 | Foreign company | Organisation internationale | | 3210 | Foreign company | Etat collectivité ou établissement public étranger | | 3220 | Foreign company | Société étrangère non immatriculée au RCS | | 3290 | Foreign company | (Autre) personne morale de droit étranger | | 4110 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial doté d&#39;un comptable public | | 4120 | Administrations, Instituions | Etablissement public national à caractère industriel ou commercial non doté d&#39;un comptable public | | 4130 | Administrations, Instituions | Exploitant public | | 4140 | Administrations, Instituions | Etablissement public local à caractère industriel ou commercial | | 4150 | Administrations, Instituions | Régie d&#39;une collectivité locale à caractère industriel ou commercial | | 4160 | Administrations, Instituions | Institution Banque de France | | 5191 | De facto undivided ownership company | Société de caution mutuelle | | 5192 | Diverse | Société coopérative de banque populaire | | 5193 | De facto undivided ownership company | Caisse de crédit maritime mutuel | | 5194 | De facto undivided ownership company | Caisse (fédérale) de crédit mutuel | | 5195 | Association fondation | Association coopérative inscrite (droit local Alsace Moselle) | | 5196 | De facto undivided ownership company | Caisse d&#39;épargne et de prévoyance à forme coopérative | | 5202 | General partnership | Société en nom collectif | | 5203 | General partnership | Société en nom collectif coopérative | | 5306 | Limited company | Société en commandite simple | | 5307 | Limited company | Société en commandite simple coopérative | | 5308 | Limited company | Société en commandite par actions | | 5309 | Limited company | Société en commandite par actions coopérative | | 5385 | Limited company | Société d&#39;exercice libéral en commandite par action | | 5410 | Limited Liability Company  | SARL nationale | | 5415 | Limited Liability Company  | SARL d&#39;économie mixte | | 5422 | Limited Liability Company  | SARL immobilière pour le commerce et l&#39;industrie (SICOMI) | | 5426 | Limited Liability Company  | Société immobilière de gestion | | 5430 | Limited Liability Company  | Safer en SARL | | 5431 | Limited Liability Company  | SARL mixte d&#39;intérêt agricole (SIMA) | | 5432 | Limited Liability Company  | SARL d&#39;intérêt collectif agricole (SICA) | | 5442 | Limited Liability Company  | SARL d&#39;attribution | | 5443 | Limited Liability Company  | SARL coopérative de construction | | 5451 | Limited Liability Company  | SARL coopérative de consommation | | 5453 | Limited Liability Company  | SARL coopérative artisanale | | 5454 | Limited Liability Company  | SARL coopérative d&#39;intérêt maritime | | 5455 | Limited Liability Company  | SARL coopérative de transports | | 5458 | Limited Liability Company  | SARL coopérative ouvrière de production et de crédit (SCOP) | | 5459 | Limited Liability Company  | SARL union de sociétés coopératives | | 5460 | Limited Liability Company  | SARL coopérative | | 5485 | Limited Liability Company  | Société d&#39;exercice libéral à responsabilité limitée | | 5498 | Limited Liability Company  | SARL unipersonnelle | | 5499 | Limited Liability Company  | SARL | | 5505 | Limited company | SA à participation ouvrière à conseil d&#39;administration | | 5510 | Limited company | SA nationale à conseil d&#39;administration | | 5515 | Limited company | SA d&#39;économie mixte à conseil d&#39;administration | | 5520 | Limited company | Société d&#39;investissement à capital variable (SICAV) à conseil d&#39;administration | | 5522 | Limited company | Société anonyme immobilière pour le commerce et l&#39;industrie (SICOMI)  à conseil d&#39;administration | | 5525 | Limited company | Société anonyme immobilière d&#39;investissement à conseil d&#39;administration | | 5530 | Limited company | Safer anonyme à conseil d&#39;administration | | 5531 | Limited company | Société anonyme mixte d&#39;intérêt agricole (SMIA) à conseil d&#39;administration | | 5532 | Limited company | Société anonyme mixte d&#39;intérêt collectif agricole (SICA) à conseil d&#39;administration | | 5542 | Limited company | Société anonyme d&#39;attribution à conseil d&#39;administration | | 5543 | Limited company | Société anonyme coopérative de construction à conseil d&#39;administration | | 5546 | Limited company | SA de HLM à conseil d&#39;administration | | 5547 | Limited company | SA coopérative de production de HLM à conseil d&#39;administration | | 5548 | Limited company | SA de crédit immobilier à conseil d&#39;administration | | 5551 | Limited company | SA coopérative de consommation à conseil d&#39;administration | | 5552 | Limited company | SA coopérative de commerçants détaillants à conseil d&#39;administration | | 5553 | Limited company | SA coopérative artisanale à conseil d&#39;administration | | 5554 | Limited company | SA coopérative (d&#39;intérêt) maritime à conseil d&#39;administration | | 5555 | Limited company | SA coopérative de transports à conseil d&#39;administration | | 5558 | Limited company | SCOP à conseil d&#39;administration | | 5559 | Limited company | SA union de sociétés coopératives à conseil d&#39;administration | | 5560 | Limited company | SA coopérative à conseil d&#39;administration | | 5585 | Limited company | Société d&#39;exercice libéral à forme anonyme à conseil d&#39;administration | | 5599 | Limited company | SA à conseil d&#39;administration | | 5605 | Limited company | SA à participation ouvrière à directoire | | 5610 | Limited company | SA nationale à directoire | | 5615 | Limited company | SA d&#39;économie mixte à directoire | | 5620 | Limited company | SICAV | | 5622 | Limited company | SICOMI | | 5625 | Limited company | Société immobilière d&#39;investissement anonyme à directoire | | 5630 | Limited company | Safer anonyme à directoire | | 5631 | Limited company | Société anonyme mixte d&#39;intérêt agricole (SMIA) | | 5632 | Limited company | SICA | | 5642 | Limited company | Société anonyme d&#39;attribution à directoire | | 5643 | Limited company | Société anonyme coopérative de construction à directoire | | 5646 | Limited company | S.A. HLM à directoire | | 5647 | Limited company | Société coopérative de production de HLM anonyme à directoire | | 5648 | Limited company | SA de crédit immobilier à directoire | | 5651 | Limited company | SA coopérative de consommation à directoire | | 5652 | Limited company | SA coopérative de commerçants détaillants à directoire | | 5653 | Limited company | SA coopérative artisanale à directoire | | 5654 | Limited company | SA coopérative (d&#39;intérêt) maritime à directoire | | 5655 | Limited company | SA coopérative de transport à directoire | | 5658 | Limited company | SCOP | | 5659 | Limited company | SA union de sociétés coopératives à directoire | | 5660 | Limited company | SA coopérative à directoire | | 5685 | Limited company | Société d&#39;exercice libéral à forme anonyme à directoire | | 5699 | Limited company | (Autre) SA à directoire | | 5710 | Limited company | SAS | | 5720 | Limited company | SASU | | 5785 | Limited company | Société d&#39;exercice libéral par action simplifiée | | 5800 | Diverse | Société européenne | | 6100 | De facto undivided ownership company | Caisse d&#39;épargne et de prévoyance | | 6210 | Economic Interest Grouping | GEIE | | 6220 | Economic Interest Grouping | GIE | | 6316 | Diverse | CUMA | | 6317 | Diverse | Société coopérative agricole | | 6318 | Diverse | Union de sociétés coopératives agricoles | | 6411 | De facto undivided ownership company | Société d&#39;assurance mutuelle | | 6521 | Civils companies (without SCI) | SCPI | | 6532 | Civils companies (without SCI) | SICA | | 6533 | Civils companies (without SCI) | GAEC | | 6534 | Civils companies (without SCI) | Groupement foncier agricole | | 6535 | Civils companies (without SCI) | Groupement agricole foncier | | 6536 | Civils companies (without SCI) | Groupement forestier | | 6537 | Civils companies (without SCI) | Groupement pastoral | | 6538 | Civils companies (without SCI) | Groupement foncier rural | | 6539 | Civils companies (without SCI) | Société civile foncière | | 6540 | Civils companies | SCI | | 6541 | Civils companies | SCI de construction vente | | 6542 | Civils companies (without SCI) | Société civile d&#39;attribution | | 6543 | Civils companies (without SCI) | Société civile coopérative de construction | | 6544 | Civils companies | Société civile d&#39;accession progressive à la propriété | | 6551 | Civils companies (without SCI) | Société civile coopérative de consommation | | 6554 | Civils companies (without SCI) | Société civile coopérative (d&#39;intérêt) maritime | | 6558 | Civils companies (without SCI) | Société civile coopérative entre médecins | | 6560 | Civils companies (without SCI) | SCP | | 6561 | Civils companies (without SCI) | SCP d&#39;avocats | | 6562 | Civils companies (without SCI) | SCP d&#39;avocats aux conseil | | 6563 | Civils companies (without SCI) | SCP d&#39;avoués d&#39;appel | | 6564 | Civils companies (without SCI) | SCP d&#39;huissiers | | 6565 | Civils companies (without SCI) | SCP de notaires | | 6566 | Civils companies (without SCI) | SCP de commissaires-priseurs | | 6567 | Civils companies (without SCI) | SCP de greffiers de tribunal de commerce | | 6568 | Civils companies (without SCI) | SCP de conseils juridiques | | 6569 | Civils companies (without SCI) | SCP de commissaires aux comptes | | 6571 | Civils companies (without SCI) | SCP de médecins | | 6572 | Civils companies (without SCI) | SCP de dentistes | | 6573 | Civils companies (without SCI) | SCP d&#39;infirmiers | | 6574 | Civils companies (without SCI) | SCP de masseurs kinésithérapeutes | | 6575 | Civils companies (without SCI) | SCP de directeurs de laboratoire d&#39;analyse médicale | | 6576 | Civils companies (without SCI) | SCP de vétérinaires | | 6577 | Civils companies (without SCI) | SCP de géomètres-experts | | 6578 | Civils companies (without SCI) | SCP d&#39;architectes | | 6585 | Civils companies (without SCI) | SCP | | 6588 | Civils companies (without SCI) | Société civile laitière | | 6589 | Civils companies (without SCI) | Société civile de moyens | | 6595 | Civils companies (without SCI) | Caisse (locale) de crédit mutuel | | 6596 | Civils companies (without SCI) | Caisse de crédit agricole mutuel | | 6597 | Civils companies (without SCI) | Société civile d&#39;exploitation agricole | | 6598 | Farm operator  | Exploitation agricole à responsabilité limitée | | 6599 | Civils companies (without SCI) | Autre société civile | | 6901 | Diverse | Autres personnes de droit privé inscrites au registre du commerce et des sociétés | | 7111 | Administrations, Instituions | Autorité constitutionnelle | | 7112 | Administrations, Instituions | Autorité administrative indépendante | | 7113 | Administrations, Instituions | Ministère | | 7120 | Administrations, Instituions | Service central d&#39;un ministère | | 7150 | Administrations, Instituions | Service du ministère de la Défense | | 7160 | Administrations, Instituions | Service déconcentré à compétence nation . D&#39;un ministère (hors Défense) | | 7171 | Administrations, Instituions | Service déconcentré de l&#39;Etat à compétence (inter) régionale | | 7172 | Administrations, Instituions | Service déconcentré de l&#39;Etat à compétence (inter) départementale | | 7179 | Administrations, Instituions | (Autre) Service déconcentré de l&#39;Etat à compétence territoriale | | 7190 | Administrations, Instituions | Ecole nationale non dotée de la personnalité morale | | 7210 | Administrations, Instituions | Commune | | 7220 | Administrations, Instituions | Département | | 7225 | Administrations, Instituions | Territoire d&#39;Outre-Mer | | 7229 | Administrations, Instituions | (Autre) Collectivité territoriale | | 7230 | Administrations, Instituions | Région | | 7312 | Administrations, Instituions | Commune associée | | 7313 | Administrations, Instituions | Section de commune | | 7314 | Administrations, Instituions | Ensemble urbain | | 7321 | Administrations, Instituions | Association syndicale autorisée | | 7322 | Administrations, Instituions | Association foncière urbaine | | 7323 | Administrations, Instituions | Association foncière de remembrement | | 7331 | Administrations, Instituions | Etablissement public local d&#39;enseignement | | 7340 | Administrations, Instituions | Pôle métropolitain | | 7341 | Administrations, Instituions | Secteur de commune | | 7342 | Administrations, Instituions | District urbain | | 7343 | Administrations, Instituions | Communauté urbaine | | 7344 | Administrations, Instituions | Métropole | | 7345 | Administrations, Instituions | Syndicat intercommunal à vocation multiple (SIVOM) | | 7346 | Administrations, Instituions | Communauté de commune | | 7347 | Administrations, Instituions | Communauté de villes | | 7348 | Administrations, Instituions | Communauté d&#39;agglomération | | 7349 | Administrations, Instituions | Autre établissement public local de coopération non spécialisé ou entente | | 7351 | Administrations, Instituions | Institution interdépartementale ou entente | | 7352 | Administrations, Instituions | Institution interrégionale ou entente | | 7353 | Administrations, Instituions | Syndicat intercommunal à vocation unique (SIVU) | | 7354 | Administrations, Instituions | Syndicat mixte communal | | 7355 | Administrations, Instituions | Autre syndicat mixte | | 7356 | Administrations, Instituions | Commission syndicale pour la gestion des biens indivis des communes | | 7361 | Administrations, Instituions | Centre communal d&#39;action sociale | | 7362 | Administrations, Instituions | Caisse des écoles | | 7363 | Administrations, Instituions | Caisse de crédit municipal | | 7364 | Administrations, Instituions | Etablissement d&#39;hospitalisation | | 7365 | Administrations, Instituions | Syndicat inter hospitalier | | 7366 | Administrations, Instituions | Etablissement public local social et médico-social | | 7371 | Administrations, Instituions | Office public d&#39;habitation à loyer modéré (OPHLM) | | 7372 | Administrations, Instituions | Service départemental d&#39;incendie | | 7373 | Administrations, Instituions | Etablissement public local culturel | | 7378 | Administrations, Instituions | Régie d&#39;une collectivité locale à caractère administratif | | 7379 | Administrations, Instituions | (Autre) Etablissement public administratif local | | 7381 | Administrations, Instituions | Organisme consulaire | | 7382 | Administrations, Instituions | Etablissement public national ayant fonction d&#39;administration centrale | | 7383 | Administrations, Instituions | Etablissement public national à caractère scientifique  culturel et professionnel | | 7384 | Administrations, Instituions | Autre établissement public national d&#39;enseignement | | 7385 | Administrations, Instituions | Autre établissement public national administratif à compétence territoriale limitée | | 7389 | Administrations, Instituions | Etablissement public national à caractère administratif | | 7410 | Administrations, Instituions | Groupement d&#39;intérêt public (GIP) | | 7430 | Administrations, Instituions | Etablissement public des cultes d&#39;Alsace-Lorraine | | 7450 | Administrations, Instituions | Etablissement public, cercle et foyer dans les armées | | 7470 | Administrations, Instituions | Groupement de coopération sanitaire à gestion publique | | 7490 | Administrations, Instituions | Autre personne morale de droit administratif | | 8110 | Administrations, Instituions | Régime général de la sécurité sociale | | 8120 | Administrations, Instituions | Régime spécial de sécurité sociale | | 8130 | Administrations, Instituions | Institution de retraite complémentaire | | 8140 | Administrations, Instituions | Mutualité sociale agricole | | 8150 | Administrations, Instituions | Régime maladie des non-salariés non agricoles | | 8160 | Administrations, Instituions | Régime vieillesse ne dépendant pas du régime général de la sécurité sociale | | 8170 | Administrations, Instituions | Régime d&#39;assurance chômage | | 8190 | Administrations, Instituions | Autre régime de prévoyance sociale | | 8210 | De facto undivided ownership company | Mutuelle | | 8250 | De facto undivided ownership company | Assurance mutuelle agricole | | 8290 | De facto undivided ownership company | Autre organisme mutualiste | | 8310 | Association fondation | Comité central d&#39;entreprise | | 8311 | Association fondation | Comité d&#39;établissement | | 8410 | Association fondation | Syndicat de salariés | | 8420 | Association fondation | Syndicat patronal | | 8450 | Association fondation | Ordre professionnel ou assimilé | | 8470 | Association fondation | Centre technique industriel ou comité professionnel du développement économique | | 8490 | Association fondation | Autre organisme professionnel | | 8510 | Administrations, Instituions | Institution de prévoyance | | 8520 | Administrations, Instituions | Institution de retraite supplémentaire | | 9110 | Condominium syndicate | Syndicat de copropriété | | 9150 | Association fondation | Association syndicale libre | | 9210 | Association fondation | Association non déclarée | | 9220 | Association fondation | Association déclarée | | 9221 | Association fondation | Association déclarée \&quot;entreprises d&#39;insertion par l&#39;économique\&quot; | | 9222 | Association fondation | Association intermédiaire | | 9223 | Association fondation | Groupement d&#39;employeurs | | 9224 | Association fondation | Association d&#39;avocats à responsabilité professionnelle individuelle | | 9230 | Association fondation | Association déclarée  reconnue d&#39;utilité publique | | 9240 | Association fondation | Congrégation | | 9260 | Association fondation | Association de droit local | | 9300 | Association fondation | Fondation | | 9900 | Diverse | Autre personne morale de droit privé | | 9970 | Diverse | Groupement de coopération sanitaire à gestion privée |  | [optional] 
 **legal_share_capital** | **Integer**| Business share capital | [optional] 
 **legal_sector** | **String**| Business sector. NAF code in France | [optional] 
 **legal_annual_turn_over** | **String**| Business annual turnover (in kâ‚¬) | [optional] 
 **legal_net_income_range** | **String**| Business net income range (in kâ‚¬) | [optional] 
 **legal_number_of_employee_range** | **String**| Business number of employees range | [optional] 
 **effective_beneficiary** | **Integer**| Business effective beneficiary | [optional] 
 **language** | **String**| User&#39;s prefered language (ISO 639-1) | [optional] 
 **tax_number** | **String**| User&#39;s tax identification number. If the taxResidence is set to another country than France, the field is mandatory. (deprecated, you must use the TaxResidence endpoint)  | [optional] 
 **tax_residence** | **String**| User&#39;s tax residence country code (2 char code following ISO 3166 norm). (deprecated, you must use the TaxResidence endpoint)  | [optional] 
 **position** | **String**| User&#39;s position (deprecated, you must use the parameter occupation). | [optional] 
 **personal_assets** | **String**| User&#39;s personal assets range exprimed in Kâ‚¬. | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_id_kycreview_put**
> InlineResponse20026 users_id_kycreview_put(id, opts)

review user information

Perform a KYC review for given user.

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

api_instance = TreezorClient::UserApi.new

id = 56 # Integer | User's id.

opts = { 
  access_token: 'access_token_example', # String | Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
}

begin
  #review user information
  result = api_instance.users_id_kycreview_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserApi->users_id_kycreview_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| User&#39;s id. | 
 **access_token** | **String**| Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



