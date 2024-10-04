=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class WithdrawApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
        @api_client.config.logger.debug 'Calling API: WithdrawApi.operations_withdraw_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling WithdrawApi.operations_withdraw_get"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling WithdrawApi.operations_withdraw_get"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling WithdrawApi.operations_withdraw_get"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling WithdrawApi.operations_withdraw_get"
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
        @api_client.config.logger.debug "API called: WithdrawApi#operations_withdraw_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
