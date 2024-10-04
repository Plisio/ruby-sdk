=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class CurrenciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List of supported cryptocurrencies
    # @param fiat one of the 168 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
    # @param [Hash] opts the optional parameters
    # @return [CryptocurrencyApiResponseDto]
    def currencies_fiat_get(fiat, opts = {})
      data, _status_code, _headers = currencies_fiat_get_with_http_info(fiat, opts)
      data
    end

    # List of supported cryptocurrencies
    # @param fiat one of the 168 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
    # @param [Hash] opts the optional parameters
    # @return [Array<(CryptocurrencyApiResponseDto, Integer, Hash)>] CryptocurrencyApiResponseDto data, response status code and response headers
    def currencies_fiat_get_with_http_info(fiat, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrenciesApi.currencies_fiat_get ...'
      end
      # verify the required parameter 'fiat' is set
      if @api_client.config.client_side_validation && fiat.nil?
        fail ArgumentError, "Missing the required parameter 'fiat' when calling CurrenciesApi.currencies_fiat_get"
      end
      # resource path
      local_var_path = '/currencies/{fiat}'.sub('{' + 'fiat' + '}', fiat.to_s)

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

      return_type = opts[:return_type] || 'CryptocurrencyApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#currencies_fiat_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
