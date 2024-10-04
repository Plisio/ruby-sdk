=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class TransactionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Estimate cryptocurrency fee and Plisio commission
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
    # @param amounts amount or comma separated amount that will be send in case of mass withdraw
    # @param type operation type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
    # @return [CommissionApiResponseDto]
    def operations_commission_psys_cid_get(psys_cid, addresses, amounts, type, opts = {})
      data, _status_code, _headers = operations_commission_psys_cid_get_with_http_info(psys_cid, addresses, amounts, type, opts)
      data
    end

    # Estimate cryptocurrency fee and Plisio commission
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
    # @param amounts amount or comma separated amount that will be send in case of mass withdraw
    # @param type operation type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
    # @return [Array<(CommissionApiResponseDto, Integer, Hash)>] CommissionApiResponseDto data, response status code and response headers
    def operations_commission_psys_cid_get_with_http_info(psys_cid, addresses, amounts, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_commission_psys_cid_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling TransactionApi.operations_commission_psys_cid_get"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling TransactionApi.operations_commission_psys_cid_get"
      end
      # verify the required parameter 'amounts' is set
      if @api_client.config.client_side_validation && amounts.nil?
        fail ArgumentError, "Missing the required parameter 'amounts' when calling TransactionApi.operations_commission_psys_cid_get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling TransactionApi.operations_commission_psys_cid_get"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['cash_out', 'mass_cash_out'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of cash_out, mass_cash_out"
      end
      if @api_client.config.client_side_validation && opts[:'fee_plan'] && !['normal', 'priority'].include?(opts[:'fee_plan'])
        fail ArgumentError, 'invalid value for "fee_plan", must be one of normal, priority'
      end
      # resource path
      local_var_path = '/operations/commission/{psys_cid}'.sub('{' + 'psys_cid' + '}', psys_cid.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'addresses'] = addresses
      query_params[:'amounts'] = amounts
      query_params[:'type'] = type
      query_params[:'feePlan'] = opts[:'fee_plan'] if !opts[:'fee_plan'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CommissionApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_commission_psys_cid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Plisio fee plans
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param [Hash] opts the optional parameters
    # @return [FeePlanApiResponseDto]
    def operations_fee_plan_psys_cid_get(psys_cid, opts = {})
      data, _status_code, _headers = operations_fee_plan_psys_cid_get_with_http_info(psys_cid, opts)
      data
    end

    # Get Plisio fee plans
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeePlanApiResponseDto, Integer, Hash)>] FeePlanApiResponseDto data, response status code and response headers
    def operations_fee_plan_psys_cid_get_with_http_info(psys_cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_fee_plan_psys_cid_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling TransactionApi.operations_fee_plan_psys_cid_get"
      end
      # resource path
      local_var_path = '/operations/fee-plan/{psys_cid}'.sub('{' + 'psys_cid' + '}', psys_cid.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'FeePlanApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_fee_plan_psys_cid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Estimate fee
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
    # @param amounts amount or comma separated amount that will be send in case of mass withdraw
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
    # @return [FeeApiResponseDto]
    def operations_fee_psys_cid_get(psys_cid, addresses, amounts, opts = {})
      data, _status_code, _headers = operations_fee_psys_cid_get_with_http_info(psys_cid, addresses, amounts, opts)
      data
    end

    # Estimate fee
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param addresses wallet address or comma separated addresses when estimating fee for mass withdrawal
    # @param amounts amount or comma separated amount that will be send in case of mass withdraw
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan normal or priority (https://plisio.net/documentation/endpoints/fee-plans)
    # @return [Array<(FeeApiResponseDto, Integer, Hash)>] FeeApiResponseDto data, response status code and response headers
    def operations_fee_psys_cid_get_with_http_info(psys_cid, addresses, amounts, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_fee_psys_cid_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling TransactionApi.operations_fee_psys_cid_get"
      end
      # verify the required parameter 'addresses' is set
      if @api_client.config.client_side_validation && addresses.nil?
        fail ArgumentError, "Missing the required parameter 'addresses' when calling TransactionApi.operations_fee_psys_cid_get"
      end
      # verify the required parameter 'amounts' is set
      if @api_client.config.client_side_validation && amounts.nil?
        fail ArgumentError, "Missing the required parameter 'amounts' when calling TransactionApi.operations_fee_psys_cid_get"
      end
      if @api_client.config.client_side_validation && opts[:'fee_plan'] && !['normal', 'priority'].include?(opts[:'fee_plan'])
        fail ArgumentError, 'invalid value for "fee_plan", must be one of normal, priority'
      end
      # resource path
      local_var_path = '/operations/fee/{psys_cid}'.sub('{' + 'psys_cid' + '}', psys_cid.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'addresses'] = addresses
      query_params[:'amounts'] = amounts
      query_params[:'feePlan'] = opts[:'fee_plan'] if !opts[:'fee_plan'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'FeeApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_fee_psys_cid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List of all user transactions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page page number
    # @option opts [Integer] :limit number of elements on the page
    # @option opts [String] :shop_id Filter operation by shop
    # @option opts [String] :type Transaction type
    # @option opts [String] :status Transaction status
    # @option opts [String] :currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @option opts [String] :search text search by the transaction id (txid), invoice’s order number or customer email from invoice
    # @return [OperationsApiResponseDto]
    def operations_get(opts = {})
      data, _status_code, _headers = operations_get_with_http_info(opts)
      data
    end

    # List of all user transactions
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page page number
    # @option opts [Integer] :limit number of elements on the page
    # @option opts [String] :shop_id Filter operation by shop
    # @option opts [String] :type Transaction type
    # @option opts [String] :status Transaction status
    # @option opts [String] :currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @option opts [String] :search text search by the transaction id (txid), invoice’s order number or customer email from invoice
    # @return [Array<(OperationsApiResponseDto, Integer, Hash)>] OperationsApiResponseDto data, response status code and response headers
    def operations_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_get ...'
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['cash_in', 'cash_out', 'mass_cash_out', 'invoice'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of cash_in, cash_out, mass_cash_out, invoice'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['pending', 'completed', 'error', 'new', 'expired', 'mismatch', 'cancelled'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of pending, completed, error, new, expired, mismatch, cancelled'
      end
      # resource path
      local_var_path = '/operations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'shop_id'] = opts[:'shop_id'] if !opts[:'shop_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'OperationsApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Transaction details
    # @param id transactoion id
    # @param [Hash] opts the optional parameters
    # @return [OperationApiResponseDto]
    def operations_id_get(id, opts = {})
      data, _status_code, _headers = operations_id_get_with_http_info(id, opts)
      data
    end

    # Transaction details
    # @param id transactoion id
    # @param [Hash] opts the optional parameters
    # @return [Array<(OperationApiResponseDto, Integer, Hash)>] OperationApiResponseDto data, response status code and response headers
    def operations_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TransactionApi.operations_id_get"
      end
      # resource path
      local_var_path = '/operations/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'OperationApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create new invoice
    # @param psys_cid one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @param to hash or multiple comma separated hashes pooled for the &#x27;mass_cash_out&#x27;
    # @param amount any comma separated float values for the “ mass_cash_out” in the order that hashes are in “to” parameter
    # @param type &#x27;cash_out&#x27; or &#x27;mass_cash_out&#x27; to send to single or multiple comma separated hashes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan  normal or priority (https://plisio.net/documentation/endpoints/fee-plan)
    # @return [WithdrawApiResponseDto]
    def operations_withdraw_get(psys_cid, to, amount, type, opts = {})
      data, _status_code, _headers = operations_withdraw_get_with_http_info(psys_cid, to, amount, type, opts)
      data
    end

    # Create new invoice
    # @param psys_cid one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @param to hash or multiple comma separated hashes pooled for the &#x27;mass_cash_out&#x27;
    # @param amount any comma separated float values for the “ mass_cash_out” in the order that hashes are in “to” parameter
    # @param type &#x27;cash_out&#x27; or &#x27;mass_cash_out&#x27; to send to single or multiple comma separated hashes
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fee_plan  normal or priority (https://plisio.net/documentation/endpoints/fee-plan)
    # @return [Array<(WithdrawApiResponseDto, Integer, Hash)>] WithdrawApiResponseDto data, response status code and response headers
    def operations_withdraw_get_with_http_info(psys_cid, to, amount, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionApi.operations_withdraw_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling TransactionApi.operations_withdraw_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling TransactionApi.operations_withdraw_get"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransactionApi.operations_withdraw_get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling TransactionApi.operations_withdraw_get"
      end
      # resource path
      local_var_path = '/operations/withdraw'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'psys_cid'] = psys_cid
      query_params[:'to'] = to
      query_params[:'amount'] = amount
      query_params[:'type'] = type
      query_params[:'feePlan'] = opts[:'fee_plan'] if !opts[:'fee_plan'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'WithdrawApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionApi#operations_withdraw_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
