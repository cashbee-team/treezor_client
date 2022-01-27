=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

# Common files
require 'treezor_client/api_client'
require 'treezor_client/api_error'
require 'treezor_client/version'
require 'treezor_client/configuration'

# Models
require 'treezor_client/models/balance'
require 'treezor_client/models/bankaccount'
require 'treezor_client/models/beneficiaries_sdd_b2b_whitelist'
require 'treezor_client/models/beneficiary'
require 'treezor_client/models/body'
require 'treezor_client/models/body_1'
require 'treezor_client/models/body_10'
require 'treezor_client/models/body_11'
require 'treezor_client/models/body_2'
require 'treezor_client/models/body_3'
require 'treezor_client/models/body_4'
require 'treezor_client/models/body_5'
require 'treezor_client/models/body_6'
require 'treezor_client/models/body_7'
require 'treezor_client/models/body_8'
require 'treezor_client/models/body_9'
require 'treezor_client/models/businesssearchs_businessinformations'
require 'treezor_client/models/card'
require 'treezor_client/models/card_digitalization'
require 'treezor_client/models/country_restriction_group'
require 'treezor_client/models/document'
require 'treezor_client/models/error'
require 'treezor_client/models/inline_response_200'
require 'treezor_client/models/inline_response_200_1'
require 'treezor_client/models/inline_response_200_10'
require 'treezor_client/models/inline_response_200_10_cardtransactions'
require 'treezor_client/models/inline_response_200_11'
require 'treezor_client/models/inline_response_200_12'
require 'treezor_client/models/inline_response_200_13'
require 'treezor_client/models/inline_response_200_14'
require 'treezor_client/models/inline_response_200_15'
require 'treezor_client/models/inline_response_200_16'
require 'treezor_client/models/inline_response_200_17'
require 'treezor_client/models/inline_response_200_18'
require 'treezor_client/models/inline_response_200_19'
require 'treezor_client/models/inline_response_200_2'
require 'treezor_client/models/inline_response_200_20'
require 'treezor_client/models/inline_response_200_21'
require 'treezor_client/models/inline_response_200_22'
require 'treezor_client/models/inline_response_200_23'
require 'treezor_client/models/inline_response_200_24'
require 'treezor_client/models/inline_response_200_25'
require 'treezor_client/models/inline_response_200_26'
require 'treezor_client/models/inline_response_200_27'
require 'treezor_client/models/inline_response_200_28'
require 'treezor_client/models/inline_response_200_3'
require 'treezor_client/models/inline_response_200_4'
require 'treezor_client/models/inline_response_200_4_businessinformations'
require 'treezor_client/models/inline_response_200_4_users'
require 'treezor_client/models/inline_response_200_5'
require 'treezor_client/models/inline_response_200_6'
require 'treezor_client/models/inline_response_200_6_cardimages'
require 'treezor_client/models/inline_response_200_7'
require 'treezor_client/models/inline_response_200_8'
require 'treezor_client/models/inline_response_200_9'
require 'treezor_client/models/inline_response_200_9_cardtransactions'
require 'treezor_client/models/inline_response_default'
require 'treezor_client/models/issuer_initiated_digitization_data'
require 'treezor_client/models/issuer_initiated_digitization_datas_additionnal_data'
require 'treezor_client/models/mandate'
require 'treezor_client/models/mcc_restriction_group'
require 'treezor_client/models/merchant_id_restriction_group'
require 'treezor_client/models/payin'
require 'treezor_client/models/payinrefund'
require 'treezor_client/models/payout'
require 'treezor_client/models/payout_refund'
require 'treezor_client/models/tax_residence'
require 'treezor_client/models/transaction'
require 'treezor_client/models/transfer'
require 'treezor_client/models/transferrefund'
require 'treezor_client/models/user'
require 'treezor_client/models/virtualiban'
require 'treezor_client/models/wallet'

# APIs
require 'treezor_client/api/balance_api'
require 'treezor_client/api/bankaccount_api'
require 'treezor_client/api/beneficiaries_api'
require 'treezor_client/api/business_api'
require 'treezor_client/api/card_api'
require 'treezor_client/api/card_digitalizations_api'
require 'treezor_client/api/card_reserve_api'
require 'treezor_client/api/cardtransaction_api'
require 'treezor_client/api/country_restriction_groups_api'
require 'treezor_client/api/document_api'
require 'treezor_client/api/heartbeat_api'
require 'treezor_client/api/issuer_initiated_digitization_data_api'
require 'treezor_client/api/mandate_api'
require 'treezor_client/api/mcc_restriction_groups_api'
require 'treezor_client/api/merchant_id_restriction_groups_api'
require 'treezor_client/api/payin_api'
require 'treezor_client/api/payinrefund_api'
require 'treezor_client/api/payout_api'
require 'treezor_client/api/payout_refunds_api'
require 'treezor_client/api/tax_residence_api'
require 'treezor_client/api/transaction_api'
require 'treezor_client/api/transfer_api'
require 'treezor_client/api/transferrefund_api'
require 'treezor_client/api/user_api'
require 'treezor_client/api/virtualibans_api'
require 'treezor_client/api/wallet_api'

module TreezorClient
  class << self
    # Customize default settings for the SDK using block.
    #   TreezorClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
