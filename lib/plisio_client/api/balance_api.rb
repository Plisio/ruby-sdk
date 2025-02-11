=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class BalanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get cryptocurrency balance
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param [Hash] opts the optional parameters
    # @return [BalanceApiResponseDto]
    def balances_psys_cid_get(psys_cid, opts = {})
      data, _status_code, _headers = balances_psys_cid_get_with_http_info(psys_cid, opts)
      data
    end

    # Get cryptocurrency balance
    # @param psys_cid ID column from one of the supported cryptocurrencies supported by Plisio
    # @param [Hash] opts the optional parameters
    # @return [Array<(BalanceApiResponseDto, Integer, Hash)>] BalanceApiResponseDto data, response status code and response headers
    def balances_psys_cid_get_with_http_info(psys_cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BalanceApi.balances_psys_cid_get ...'
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling BalanceApi.balances_psys_cid_get"
      end
      # resource path
      local_var_path = '/balances/{psys_cid}'.sub('{' + 'psys_cid' + '}', psys_cid.to_s)

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

      return_type = opts[:return_type] || 'BalanceApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BalanceApi#balances_psys_cid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
