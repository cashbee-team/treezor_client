# treezor_client

TreezorClient - the Ruby gem for the Treezor

Treezor API.  more info [here](https://www.treezor.com). 

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.1.1
- Package version: 2.6.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build treezor_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./treezor_client-2.6.0.gem
```
(for development, run `gem install --dev ./treezor_client-2.6.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'treezor_client', '~> 2.6.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'treezor_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'treezor_client'

# Setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::BalanceApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  wallet_id: 56, # Integer | Wallet's ID of wanted balance
  user_id: 56 # Integer | Wallet's user id of wanted balanced
}

begin
  #search balances
  result = api_instance.get_balances(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BalanceApi->get_balances: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TreezorClient::BalanceApi* | [**get_balances**](docs/BalanceApi.md#get_balances) | **GET** /balances | search balances
*TreezorClient::BankaccountApi* | [**delete_bankaccount**](docs/BankaccountApi.md#delete_bankaccount) | **DELETE** /bankaccounts/{id} | deactivate a bank account
*TreezorClient::BankaccountApi* | [**get_bankaccount**](docs/BankaccountApi.md#get_bankaccount) | **GET** /bankaccounts/{id} | get a bank account
*TreezorClient::BankaccountApi* | [**get_bankaccounts**](docs/BankaccountApi.md#get_bankaccounts) | **GET** /bankaccounts | search bank accounts
*TreezorClient::BankaccountApi* | [**post_bankaccount**](docs/BankaccountApi.md#post_bankaccount) | **POST** /bankaccounts | create a bank account
*TreezorClient::BeneficiariesApi* | [**get_beneficiaries**](docs/BeneficiariesApi.md#get_beneficiaries) | **GET** /beneficiaries | search beneficiary bank accounts
*TreezorClient::BeneficiariesApi* | [**get_beneficiary**](docs/BeneficiariesApi.md#get_beneficiary) | **GET** /beneficiaries/{id} | get a beneficiary bank account
*TreezorClient::BeneficiariesApi* | [**post_beneficiary**](docs/BeneficiariesApi.md#post_beneficiary) | **POST** /beneficiaries | create a beneficiary
*TreezorClient::BeneficiariesApi* | [**put_beneficiary**](docs/BeneficiariesApi.md#put_beneficiary) | **PUT** /beneficiaries/{id} | edit a beneficiary
*TreezorClient::BusinessApi* | [**businessinformations_get**](docs/BusinessApi.md#businessinformations_get) | **GET** /businessinformations | get business information
*TreezorClient::BusinessApi* | [**businesssearchs_get**](docs/BusinessApi.md#businesssearchs_get) | **GET** /businesssearchs | search businesses
*TreezorClient::CardApi* | [**cardimages_get**](docs/CardApi.md#cardimages_get) | **GET** /cardimages | get a card image
*TreezorClient::CardApi* | [**cards_create_virtual_post**](docs/CardApi.md#cards_create_virtual_post) | **POST** /cards/CreateVirtual | create a virtual card
*TreezorClient::CardApi* | [**cards_get**](docs/CardApi.md#cards_get) | **GET** /cards | search cards
*TreezorClient::CardApi* | [**cards_id_activate_put**](docs/CardApi.md#cards_id_activate_put) | **PUT** /cards/{id}/Activate/ | activate a card
*TreezorClient::CardApi* | [**cards_id_change_pin_put**](docs/CardApi.md#cards_id_change_pin_put) | **PUT** /cards/{id}/ChangePIN/ | change card's PIN
*TreezorClient::CardApi* | [**cards_id_convert_virtual_put**](docs/CardApi.md#cards_id_convert_virtual_put) | **PUT** /cards/{id}/ConvertVirtual/ | convert card to virtual
*TreezorClient::CardApi* | [**cards_id_get**](docs/CardApi.md#cards_id_get) | **GET** /cards/{id} | get a card
*TreezorClient::CardApi* | [**cards_id_limits_put**](docs/CardApi.md#cards_id_limits_put) | **PUT** /cards/{id}/Limits/ | update card's limits
*TreezorClient::CardApi* | [**cards_id_lock_unlock_put**](docs/CardApi.md#cards_id_lock_unlock_put) | **PUT** /cards/{id}/LockUnlock/ | update card's blocking status
*TreezorClient::CardApi* | [**cards_id_options_put**](docs/CardApi.md#cards_id_options_put) | **PUT** /cards/{id}/Options/ | update card's options
*TreezorClient::CardApi* | [**cards_id_put**](docs/CardApi.md#cards_id_put) | **PUT** /cards/{id} | update card informations
*TreezorClient::CardApi* | [**cards_id_regenerate_put**](docs/CardApi.md#cards_id_regenerate_put) | **PUT** /cards/{id}/Regenerate/ | regenerate card
*TreezorClient::CardApi* | [**cards_id_set_pin_put**](docs/CardApi.md#cards_id_set_pin_put) | **PUT** /cards/{id}/setPIN/ | set card's PIN
*TreezorClient::CardApi* | [**cards_id_unblock_pin_put**](docs/CardApi.md#cards_id_unblock_pin_put) | **PUT** /cards/{id}/UnblockPIN/ | unblock card's PIN
*TreezorClient::CardApi* | [**cards_register3_ds_post**](docs/CardApi.md#cards_register3_ds_post) | **POST** /cards/Register3DS | Register 3D secure
*TreezorClient::CardApi* | [**cards_request_physical_post**](docs/CardApi.md#cards_request_physical_post) | **POST** /cards/RequestPhysical | create a physical card
*TreezorClient::CardDigitalizationsApi* | [**card_digitalizations_id**](docs/CardDigitalizationsApi.md#card_digitalizations_id) | **GET** /cardDigitalizations/{id} | Get a card digitalizations based on its internal id
*TreezorClient::CardDigitalizationsApi* | [**deletecard_digitalizations_id**](docs/CardDigitalizationsApi.md#deletecard_digitalizations_id) | **DELETE** /cardDigitalizations/{id} | Deletes a payment Token
*TreezorClient::CardDigitalizationsApi* | [**putcard_digitalizations_id**](docs/CardDigitalizationsApi.md#putcard_digitalizations_id) | **PUT** /cardDigitalizations/{id} | Update the status of a payment Token
*TreezorClient::CardDigitalizationsApi* | [**readcard_digitalizations**](docs/CardDigitalizationsApi.md#readcard_digitalizations) | **GET** /cardDigitalizations | search for card digitalizations
*TreezorClient::CardReserveApi* | [**card_reserve_add_to**](docs/CardReserveApi.md#card_reserve_add_to) | **POST** /cardReserves/AddTo | add an amount to the reserved amount of a card
*TreezorClient::CardReserveApi* | [**card_reserve_check**](docs/CardReserveApi.md#card_reserve_check) | **POST** /cardReserves/Check | check reserved amount
*TreezorClient::CardReserveApi* | [**card_reserve_get**](docs/CardReserveApi.md#card_reserve_get) | **GET** /cardReserves/{id} | get the reserved amount of a card
*TreezorClient::CardtransactionApi* | [**get_cardtransaction**](docs/CardtransactionApi.md#get_cardtransaction) | **GET** /cardtransactions/{id} | get a card transaction
*TreezorClient::CardtransactionApi* | [**read_card_transaction**](docs/CardtransactionApi.md#read_card_transaction) | **GET** /cardtransactions | search for card transactions
*TreezorClient::CountryRestrictionGroupsApi* | [**delete_country_restriction_groups**](docs/CountryRestrictionGroupsApi.md#delete_country_restriction_groups) | **DELETE** /countryRestrictionGroups/{id} | cancel a country group
*TreezorClient::CountryRestrictionGroupsApi* | [**get_country_restriction_groups**](docs/CountryRestrictionGroupsApi.md#get_country_restriction_groups) | **GET** /countryRestrictionGroups | search country restriction groups
*TreezorClient::CountryRestrictionGroupsApi* | [**get_country_restriction_groups_id**](docs/CountryRestrictionGroupsApi.md#get_country_restriction_groups_id) | **GET** /countryRestrictionGroups/{id} | get a country group
*TreezorClient::CountryRestrictionGroupsApi* | [**post_country_restriction_group**](docs/CountryRestrictionGroupsApi.md#post_country_restriction_group) | **POST** /countryRestrictionGroups | create a countryRestrictionGroup
*TreezorClient::CountryRestrictionGroupsApi* | [**put_country_restriction_groups**](docs/CountryRestrictionGroupsApi.md#put_country_restriction_groups) | **PUT** /countryRestrictionGroups/{id} | edit a country restriction group
*TreezorClient::DocumentApi* | [**create_documents**](docs/DocumentApi.md#create_documents) | **POST** /documents | create a document
*TreezorClient::DocumentApi* | [**delete_document**](docs/DocumentApi.md#delete_document) | **DELETE** /documents/{id} | delete document
*TreezorClient::DocumentApi* | [**get_document**](docs/DocumentApi.md#get_document) | **GET** /documents/{id} | get a document
*TreezorClient::DocumentApi* | [**get_documents**](docs/DocumentApi.md#get_documents) | **GET** /documents | search documents
*TreezorClient::DocumentApi* | [**put_document**](docs/DocumentApi.md#put_document) | **PUT** /documents/{id} | update a document
*TreezorClient::HeartbeatApi* | [**get_heartbeat**](docs/HeartbeatApi.md#get_heartbeat) | **GET** /heartbeats | Get the status of the API
*TreezorClient::IssuerInitiatedDigitizationDataApi* | [**tav_request_post**](docs/IssuerInitiatedDigitizationDataApi.md#tav_request_post) | **POST** /issuerInitiatedDigitizationDatas | Request the issuerInitiatedDigitizationData
*TreezorClient::IssuerInitiatedDigitizationDataApi* | [**tavrequestget**](docs/IssuerInitiatedDigitizationDataApi.md#tavrequestget) | **GET** /issuerInitiatedDigitizationDatas | Search issuerInitiatedDigitizationData requests
*TreezorClient::MandateApi* | [**delete_mandate**](docs/MandateApi.md#delete_mandate) | **DELETE** /mandates/{id} | revoke a mandate
*TreezorClient::MandateApi* | [**get_mandate**](docs/MandateApi.md#get_mandate) | **GET** /mandates/{id} | get mandate
*TreezorClient::MandateApi* | [**get_mandates**](docs/MandateApi.md#get_mandates) | **GET** /mandates | search mandates
*TreezorClient::MandateApi* | [**mandates_id_resend_otp_put**](docs/MandateApi.md#mandates_id_resend_otp_put) | **PUT** /mandates/{id}/ResendOtp/ | send an OTP
*TreezorClient::MandateApi* | [**mandates_id_sign_put**](docs/MandateApi.md#mandates_id_sign_put) | **PUT** /mandates/{id}/Sign/ | sign a mandate
*TreezorClient::MandateApi* | [**post_mandates**](docs/MandateApi.md#post_mandates) | **POST** /mandates | create a mandate
*TreezorClient::MccRestrictionGroupsApi* | [**delete_mcc_restriction_groups**](docs/MccRestrictionGroupsApi.md#delete_mcc_restriction_groups) | **DELETE** /mccRestrictionGroups/{id} | cancel a mcc group
*TreezorClient::MccRestrictionGroupsApi* | [**get_mcc_restriction_groups**](docs/MccRestrictionGroupsApi.md#get_mcc_restriction_groups) | **GET** /mccRestrictionGroups | search mcc restriction groups
*TreezorClient::MccRestrictionGroupsApi* | [**get_mcc_restriction_groups_id**](docs/MccRestrictionGroupsApi.md#get_mcc_restriction_groups_id) | **GET** /mccRestrictionGroups/{id} | get a mcc group
*TreezorClient::MccRestrictionGroupsApi* | [**post_mcc_restriction_group**](docs/MccRestrictionGroupsApi.md#post_mcc_restriction_group) | **POST** /mccRestrictionGroups | create a mccRestrictionGroup
*TreezorClient::MccRestrictionGroupsApi* | [**put_mcc_restriction_groups**](docs/MccRestrictionGroupsApi.md#put_mcc_restriction_groups) | **PUT** /mccRestrictionGroups/{id} | edit a mcc restriction group
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**delete_merchant_id_restriction_groups**](docs/MerchantIdRestrictionGroupsApi.md#delete_merchant_id_restriction_groups) | **DELETE** /merchantIdRestrictionGroups/{id} | cancel a merchant id restriction group
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**get_merchant_id_restriction_group**](docs/MerchantIdRestrictionGroupsApi.md#get_merchant_id_restriction_group) | **GET** /merchantIdRestrictionGroups | search merchant id restriction  groups
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**get_merchant_id_restriction_groups_id**](docs/MerchantIdRestrictionGroupsApi.md#get_merchant_id_restriction_groups_id) | **GET** /merchantIdRestrictionGroups/{id} | get a merchant ID restriction group
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**merchant_id_restriction_groups_id_delta_update_put**](docs/MerchantIdRestrictionGroupsApi.md#merchant_id_restriction_groups_id_delta_update_put) | **PUT** /merchantIdRestrictionGroups/{id}/DeltaUpdate/ | edit the merchant ID list for a restriction group
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**post_merchant_id_restriction_group**](docs/MerchantIdRestrictionGroupsApi.md#post_merchant_id_restriction_group) | **POST** /merchantIdRestrictionGroups | create a merchantIdRestrictionGroup
*TreezorClient::MerchantIdRestrictionGroupsApi* | [**put_merchant_id_restriction_groups**](docs/MerchantIdRestrictionGroupsApi.md#put_merchant_id_restriction_groups) | **PUT** /merchantIdRestrictionGroups/{id} | edit a merchant id restriction group
*TreezorClient::PayinApi* | [**delete_payin**](docs/PayinApi.md#delete_payin) | **DELETE** /payins/{id} | delete a pay in
*TreezorClient::PayinApi* | [**get_payin**](docs/PayinApi.md#get_payin) | **GET** /payins/{id} | get a pay in
*TreezorClient::PayinApi* | [**get_payins**](docs/PayinApi.md#get_payins) | **GET** /payins | search pay ins
*TreezorClient::PayinApi* | [**post_payin**](docs/PayinApi.md#post_payin) | **POST** /payins | create a pay in
*TreezorClient::PayinrefundApi* | [**delete_payinrefund**](docs/PayinrefundApi.md#delete_payinrefund) | **DELETE** /payinrefunds/{id} | cancel a pay in refund
*TreezorClient::PayinrefundApi* | [**get_payinrefund**](docs/PayinrefundApi.md#get_payinrefund) | **GET** /payinrefunds/{id} | get a pay in refund
*TreezorClient::PayinrefundApi* | [**get_payinrefunds**](docs/PayinrefundApi.md#get_payinrefunds) | **GET** /payinrefunds | search pay in refunds
*TreezorClient::PayinrefundApi* | [**post_payinrefunds**](docs/PayinrefundApi.md#post_payinrefunds) | **POST** /payinrefunds | create a pay in refund
*TreezorClient::PayoutApi* | [**delete_payout**](docs/PayoutApi.md#delete_payout) | **DELETE** /payouts/{id} | cancel a payout
*TreezorClient::PayoutApi* | [**get_payout**](docs/PayoutApi.md#get_payout) | **GET** /payouts/{id} | get a payout
*TreezorClient::PayoutApi* | [**get_payouts**](docs/PayoutApi.md#get_payouts) | **GET** /payouts | search payout(s)
*TreezorClient::PayoutApi* | [**post_payout**](docs/PayoutApi.md#post_payout) | **POST** /payouts | create a pay out
*TreezorClient::PayoutRefundsApi* | [**get_payout_refunds**](docs/PayoutRefundsApi.md#get_payout_refunds) | **GET** /payoutRefunds | search pay outs refund
*TreezorClient::TaxResidenceApi* | [**tax_residences_get**](docs/TaxResidenceApi.md#tax_residences_get) | **GET** /taxResidences | search a residence
*TreezorClient::TaxResidenceApi* | [**tax_residences_id_delete**](docs/TaxResidenceApi.md#tax_residences_id_delete) | **DELETE** /taxResidences/{id} | delete a residence
*TreezorClient::TaxResidenceApi* | [**tax_residences_id_get**](docs/TaxResidenceApi.md#tax_residences_id_get) | **GET** /taxResidences/{id} | read the informations of a residence
*TreezorClient::TaxResidenceApi* | [**tax_residences_id_put**](docs/TaxResidenceApi.md#tax_residences_id_put) | **PUT** /taxResidences/{id} | update the residence
*TreezorClient::TaxResidenceApi* | [**tax_residences_post**](docs/TaxResidenceApi.md#tax_residences_post) | **POST** /taxResidences | create a residence
*TreezorClient::TransactionApi* | [**get_transaction**](docs/TransactionApi.md#get_transaction) | **GET** /transactions/{id} | get a transaction
*TreezorClient::TransactionApi* | [**get_transactions**](docs/TransactionApi.md#get_transactions) | **GET** /transactions | search transactions
*TreezorClient::TransferApi* | [**delete_transfer**](docs/TransferApi.md#delete_transfer) | **DELETE** /transfers/{id} | cancel a transfer
*TreezorClient::TransferApi* | [**get_transfer**](docs/TransferApi.md#get_transfer) | **GET** /transfers/{id} | get a transfer
*TreezorClient::TransferApi* | [**get_transfers**](docs/TransferApi.md#get_transfers) | **GET** /transfers | search transfers
*TreezorClient::TransferApi* | [**post_transfers**](docs/TransferApi.md#post_transfers) | **POST** /transfers | create a transfer
*TreezorClient::TransferrefundApi* | [**delete_transferrefund**](docs/TransferrefundApi.md#delete_transferrefund) | **DELETE** /transferrefunds/{id} | cancel a transfer refund
*TreezorClient::TransferrefundApi* | [**get_transferrefund**](docs/TransferrefundApi.md#get_transferrefund) | **GET** /transferrefunds/{id} | get a transfer refund
*TreezorClient::TransferrefundApi* | [**get_transferrefunds**](docs/TransferrefundApi.md#get_transferrefunds) | **GET** /transferrefunds | search transfer refunds
*TreezorClient::TransferrefundApi* | [**post_transferrefunds**](docs/TransferrefundApi.md#post_transferrefunds) | **POST** /transferrefunds | create a transfer refund
*TreezorClient::UserApi* | [**delete_user**](docs/UserApi.md#delete_user) | **DELETE** /users/{id} | delete a user
*TreezorClient::UserApi* | [**get_user**](docs/UserApi.md#get_user) | **GET** /users/{id} | get an user
*TreezorClient::UserApi* | [**get_users**](docs/UserApi.md#get_users) | **GET** /users | search users
*TreezorClient::UserApi* | [**put_user**](docs/UserApi.md#put_user) | **PUT** /users/{id} | update a user
*TreezorClient::UserApi* | [**put_users**](docs/UserApi.md#put_users) | **POST** /users | create user
*TreezorClient::UserApi* | [**users_id_kycreview_put**](docs/UserApi.md#users_id_kycreview_put) | **PUT** /users/{id}/Kycreview/ | review user information
*TreezorClient::UserTaxResidencesApi* | [**delete_taxresidence**](docs/UserTaxResidencesApi.md#delete_taxresidence) | **DELETE** /v1/taxResidences/{id} | Delete a residence
*TreezorClient::UserTaxResidencesApi* | [**get_taxresidence**](docs/UserTaxResidencesApi.md#get_taxresidence) | **GET** /v1/taxResidences/{id} | Get Tax Residence
*TreezorClient::UserTaxResidencesApi* | [**get_taxresidences**](docs/UserTaxResidencesApi.md#get_taxresidences) | **GET** /v1/taxResidences | Search Tax Residences
*TreezorClient::UserTaxResidencesApi* | [**post_taxresidence**](docs/UserTaxResidencesApi.md#post_taxresidence) | **POST** /v1/taxResidences | Create Tax Residence
*TreezorClient::UserTaxResidencesApi* | [**put_taxresidence**](docs/UserTaxResidencesApi.md#put_taxresidence) | **PUT** /v1/taxResidences/{id} | Update Tax Residence
*TreezorClient::VirtualibansApi* | [**getvirtualiban**](docs/VirtualibansApi.md#getvirtualiban) | **GET** /virtualibans/{id} | get a virtualiban by Id
*TreezorClient::VirtualibansApi* | [**getvirtualibans**](docs/VirtualibansApi.md#getvirtualibans) | **GET** /virtualibans | search virtualibans
*TreezorClient::VirtualibansApi* | [**post_virtual_iban**](docs/VirtualibansApi.md#post_virtual_iban) | **POST** /virtualibans | create a virtual IBAN
*TreezorClient::VirtualibansApi* | [**put_virtual_iban**](docs/VirtualibansApi.md#put_virtual_iban) | **PUT** /virtualibans/{id} | update a Virtual IBAN
*TreezorClient::WalletApi* | [**delete_wallet**](docs/WalletApi.md#delete_wallet) | **DELETE** /wallets/{id} | delete a wallet
*TreezorClient::WalletApi* | [**get_wallet**](docs/WalletApi.md#get_wallet) | **GET** /wallets/{id} | get a wallet
*TreezorClient::WalletApi* | [**get_wallets**](docs/WalletApi.md#get_wallets) | **GET** /wallets | search wallets
*TreezorClient::WalletApi* | [**post_wallets**](docs/WalletApi.md#post_wallets) | **POST** /wallets | create a wallet
*TreezorClient::WalletApi* | [**put_wallet**](docs/WalletApi.md#put_wallet) | **PUT** /wallets/{id} | update a wallet


## Documentation for Models

 - [TreezorClient::Balance](docs/Balance.md)
 - [TreezorClient::Bankaccount](docs/Bankaccount.md)
 - [TreezorClient::BeneficiariesSddB2bWhitelist](docs/BeneficiariesSddB2bWhitelist.md)
 - [TreezorClient::Beneficiary](docs/Beneficiary.md)
 - [TreezorClient::Body](docs/Body.md)
 - [TreezorClient::Body1](docs/Body1.md)
 - [TreezorClient::Body10](docs/Body10.md)
 - [TreezorClient::Body11](docs/Body11.md)
 - [TreezorClient::Body12](docs/Body12.md)
 - [TreezorClient::Body2](docs/Body2.md)
 - [TreezorClient::Body3](docs/Body3.md)
 - [TreezorClient::Body4](docs/Body4.md)
 - [TreezorClient::Body5](docs/Body5.md)
 - [TreezorClient::Body6](docs/Body6.md)
 - [TreezorClient::Body7](docs/Body7.md)
 - [TreezorClient::Body8](docs/Body8.md)
 - [TreezorClient::Body9](docs/Body9.md)
 - [TreezorClient::BusinesssearchsBusinessinformations](docs/BusinesssearchsBusinessinformations.md)
 - [TreezorClient::Card](docs/Card.md)
 - [TreezorClient::CardDigitalization](docs/CardDigitalization.md)
 - [TreezorClient::CountryRestrictionGroup](docs/CountryRestrictionGroup.md)
 - [TreezorClient::Document](docs/Document.md)
 - [TreezorClient::Error](docs/Error.md)
 - [TreezorClient::InlineResponse200](docs/InlineResponse200.md)
 - [TreezorClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [TreezorClient::InlineResponse20010](docs/InlineResponse20010.md)
 - [TreezorClient::InlineResponse20010Cardtransactions](docs/InlineResponse20010Cardtransactions.md)
 - [TreezorClient::InlineResponse20011](docs/InlineResponse20011.md)
 - [TreezorClient::InlineResponse20012](docs/InlineResponse20012.md)
 - [TreezorClient::InlineResponse20013](docs/InlineResponse20013.md)
 - [TreezorClient::InlineResponse20014](docs/InlineResponse20014.md)
 - [TreezorClient::InlineResponse20015](docs/InlineResponse20015.md)
 - [TreezorClient::InlineResponse20016](docs/InlineResponse20016.md)
 - [TreezorClient::InlineResponse20017](docs/InlineResponse20017.md)
 - [TreezorClient::InlineResponse20018](docs/InlineResponse20018.md)
 - [TreezorClient::InlineResponse20019](docs/InlineResponse20019.md)
 - [TreezorClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [TreezorClient::InlineResponse20020](docs/InlineResponse20020.md)
 - [TreezorClient::InlineResponse20021](docs/InlineResponse20021.md)
 - [TreezorClient::InlineResponse20022](docs/InlineResponse20022.md)
 - [TreezorClient::InlineResponse20023](docs/InlineResponse20023.md)
 - [TreezorClient::InlineResponse20024](docs/InlineResponse20024.md)
 - [TreezorClient::InlineResponse20025](docs/InlineResponse20025.md)
 - [TreezorClient::InlineResponse20026](docs/InlineResponse20026.md)
 - [TreezorClient::InlineResponse20027](docs/InlineResponse20027.md)
 - [TreezorClient::InlineResponse20028](docs/InlineResponse20028.md)
 - [TreezorClient::InlineResponse20029](docs/InlineResponse20029.md)
 - [TreezorClient::InlineResponse20029TaxResidences](docs/InlineResponse20029TaxResidences.md)
 - [TreezorClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [TreezorClient::InlineResponse20030](docs/InlineResponse20030.md)
 - [TreezorClient::InlineResponse20030TaxResidences](docs/InlineResponse20030TaxResidences.md)
 - [TreezorClient::InlineResponse20031](docs/InlineResponse20031.md)
 - [TreezorClient::InlineResponse20031TaxResidences](docs/InlineResponse20031TaxResidences.md)
 - [TreezorClient::InlineResponse20032](docs/InlineResponse20032.md)
 - [TreezorClient::InlineResponse20032TaxResidences](docs/InlineResponse20032TaxResidences.md)
 - [TreezorClient::InlineResponse20033](docs/InlineResponse20033.md)
 - [TreezorClient::InlineResponse20033TaxResidences](docs/InlineResponse20033TaxResidences.md)
 - [TreezorClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [TreezorClient::InlineResponse2004Businessinformations](docs/InlineResponse2004Businessinformations.md)
 - [TreezorClient::InlineResponse2004Users](docs/InlineResponse2004Users.md)
 - [TreezorClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [TreezorClient::InlineResponse2006](docs/InlineResponse2006.md)
 - [TreezorClient::InlineResponse2006Cardimages](docs/InlineResponse2006Cardimages.md)
 - [TreezorClient::InlineResponse2007](docs/InlineResponse2007.md)
 - [TreezorClient::InlineResponse2008](docs/InlineResponse2008.md)
 - [TreezorClient::InlineResponse2009](docs/InlineResponse2009.md)
 - [TreezorClient::InlineResponse2009Cardtransactions](docs/InlineResponse2009Cardtransactions.md)
 - [TreezorClient::InlineResponseDefault](docs/InlineResponseDefault.md)
 - [TreezorClient::IssuerInitiatedDigitizationData](docs/IssuerInitiatedDigitizationData.md)
 - [TreezorClient::IssuerInitiatedDigitizationDatasAdditionnalData](docs/IssuerInitiatedDigitizationDatasAdditionnalData.md)
 - [TreezorClient::Mandate](docs/Mandate.md)
 - [TreezorClient::MccRestrictionGroup](docs/MccRestrictionGroup.md)
 - [TreezorClient::MerchantIdRestrictionGroup](docs/MerchantIdRestrictionGroup.md)
 - [TreezorClient::Payin](docs/Payin.md)
 - [TreezorClient::Payinrefund](docs/Payinrefund.md)
 - [TreezorClient::Payout](docs/Payout.md)
 - [TreezorClient::PayoutRefund](docs/PayoutRefund.md)
 - [TreezorClient::SepaSctrInst](docs/SepaSctrInst.md)
 - [TreezorClient::TaxResidence](docs/TaxResidence.md)
 - [TreezorClient::TaxResidenceBody](docs/TaxResidenceBody.md)
 - [TreezorClient::Transaction](docs/Transaction.md)
 - [TreezorClient::Transfer](docs/Transfer.md)
 - [TreezorClient::Transferrefund](docs/Transferrefund.md)
 - [TreezorClient::User](docs/User.md)
 - [TreezorClient::Virtualiban](docs/Virtualiban.md)
 - [TreezorClient::Wallet](docs/Wallet.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

