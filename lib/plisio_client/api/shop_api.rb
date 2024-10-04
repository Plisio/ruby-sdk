=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class ShopApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get shop info by api_key
    # @param [Hash] opts the optional parameters
    # @return [ShopResponseDto]
    def shops_get(opts = {})
      data, _status_code, _headers = shops_get_with_http_info(opts)
      data
    end

    # Get shop info by api_key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ShopResponseDto, Integer, Hash)>] ShopResponseDto data, response status code and response headers
    def shops_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShopApi.shops_get ...'
      end
      # resource path
      local_var_path = '/shops'

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

      return_type = opts[:return_type] || 'ShopResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShopApi#shops_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
