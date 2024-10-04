=begin
#Plisio API

#Plisio payment gateway API

=end

# Common files
require 'plisio_client/api_client'
require 'plisio_client/api_error'
require 'plisio_client/version'
require 'plisio_client/configuration'

# Models
require 'plisio_client/models/balance_api_response_dto'
require 'plisio_client/models/balance_response_dto'
require 'plisio_client/models/commission_api_response_dto'
require 'plisio_client/models/commission_response_boost_dto'
require 'plisio_client/models/commission_response_dto'
require 'plisio_client/models/commission_response_simple_dto'
require 'plisio_client/models/commission_response_simple_error_dto'
require 'plisio_client/models/cryptocurrency_api_response_dto'
require 'plisio_client/models/donate_block_dto'
require 'plisio_client/models/donate_dto'
require 'plisio_client/models/error_dto'
require 'plisio_client/models/error_response_dto'
require 'plisio_client/models/fee_api_response_dto'
require 'plisio_client/models/fee_params_dto'
require 'plisio_client/models/fee_plan_api_response_dto'
require 'plisio_client/models/fee_plan_btc_dto'
require 'plisio_client/models/fee_plan_common_dto'
require 'plisio_client/models/fee_plan_custom_dto'
require 'plisio_client/models/fee_plan_dto'
require 'plisio_client/models/fee_plan_eth_dto'
require 'plisio_client/models/fee_plan_limits_btc_dto'
require 'plisio_client/models/fee_plan_limits_eth_dto'
require 'plisio_client/models/fee_plan_ton_dto'
require 'plisio_client/models/fee_plan_trx_dto'
require 'plisio_client/models/fee_plan_xmr_dto'
require 'plisio_client/models/fee_response_dto'
require 'plisio_client/models/fee_simple_plan_dto'
require 'plisio_client/models/fee_simple_plan_item_dto'
require 'plisio_client/models/hateoas_link_dto'
require 'plisio_client/models/hateoas_links_dto'
require 'plisio_client/models/hateoas_meta_dto'
require 'plisio_client/models/invoice_callback_extended_response_dto'
require 'plisio_client/models/invoice_details_api_response_dto'
require 'plisio_client/models/invoice_details_response_dto'
require 'plisio_client/models/invoice_extended_response_dto'
require 'plisio_client/models/invoice_form_response_dto'
require 'plisio_client/models/invoice_paysys_contracts_group_dto'
require 'plisio_client/models/invoice_paysys_dto'
require 'plisio_client/models/invoice_response_dto'
require 'plisio_client/models/invoice_simple_response_dto'
require 'plisio_client/models/invoice_switch_api_response_dto'
require 'plisio_client/models/invoice_update_email_api_response_dto'
require 'plisio_client/models/invoice_update_email_response_dto'
require 'plisio_client/models/invoice_white_label_response_dto'
require 'plisio_client/models/operation_api_response_dto'
require 'plisio_client/models/operation_dto'
require 'plisio_client/models/operation_params_dto'
require 'plisio_client/models/operation_simple_dto'
require 'plisio_client/models/operations_api_response_dto'
require 'plisio_client/models/operations_hateoas_response_dto'
require 'plisio_client/models/paysys_dto'
require 'plisio_client/models/shop_dto'
require 'plisio_client/models/shop_info_dto'
require 'plisio_client/models/shop_response_dto'
require 'plisio_client/models/success_response_dto'
require 'plisio_client/models/withdraw_api_response_dto'
require 'plisio_client/models/withdraw_response_dto'

# APIs
require 'plisio_client/api/balance_api'
require 'plisio_client/api/currencies_api'
require 'plisio_client/api/invoice_api'
require 'plisio_client/api/shop_api'
require 'plisio_client/api/transaction_api'
require 'plisio_client/api/withdraw_api'

module PlisioAPIClient
  class << self
    # Customize default settings for the SDK using block.
    #   PlisioAPIClient.configure do |config|
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
