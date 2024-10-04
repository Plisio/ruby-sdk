=begin
#Plisio API

#Plisio payment gateway API

=end

module PlisioAPIClient
  class InvoiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Invoice details
    # @param id invoice id
    # @param email payer&#x27;s email
    # @param [Hash] opts the optional parameters
    # @return [InvoiceDetailsApiResponseDto]
    def invoices_email_id_get(id, email, opts = {})
      data, _status_code, _headers = invoices_email_id_get_with_http_info(id, email, opts)
      data
    end

    # Invoice details
    # @param id invoice id
    # @param email payer&#x27;s email
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceDetailsApiResponseDto, Integer, Hash)>] InvoiceDetailsApiResponseDto data, response status code and response headers
    def invoices_email_id_get_with_http_info(id, email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoices_email_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceApi.invoices_email_id_get"
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling InvoiceApi.invoices_email_id_get"
      end
      # resource path
      local_var_path = '/invoices/email/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'email'] = email

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InvoiceDetailsApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoices_email_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoice details
    # @param id invoice id
    # @param [Hash] opts the optional parameters
    # @return [InvoiceDetailsApiResponseDto]
    def invoices_id_get(id, opts = {})
      data, _status_code, _headers = invoices_id_get_with_http_info(id, opts)
      data
    end

    # Invoice details
    # @param id invoice id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceDetailsApiResponseDto, Integer, Hash)>] InvoiceDetailsApiResponseDto data, response status code and response headers
    def invoices_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoices_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceApi.invoices_id_get"
      end
      # resource path
      local_var_path = '/invoices/{id}'.sub('{' + 'id' + '}', id.to_s)

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

      return_type = opts[:return_type] || 'InvoiceDetailsApiResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoices_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create new invoice
    # @param currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @param order_name merchant internal order name
    # @param order_number merchant internal order number. Must be unique number in your store for each new store&#x60;s order!!!
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount any cryptocurrency float value. !!! Please, skip this field If you want to convert a fiat currency and use source_currency and source_amount fields instead
    # @option opts [String] :source_currency one of the 167 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
    # @option opts [String] :source_amount any float value
    # @option opts [String] :allowed_psys_cids comma-separated list of cryptocurrencies that allowed for payment. Customer will be able to select one of them. Example: BTC,ETH,TZEC
    # @option opts [String] :description merchant invoice description
    # @option opts [String] :callback_url merchant full URL to get invoice updates. The “POST” request will be sent to this URL (example). If this parameter isn’t set, Plisio will send a callback to URL that can be set under profile API » API settings » ”Status URL” field
    # @option opts [String] :email an auto-fill invoice email. The customer will be asked to insert their email where a notification will be sent
    # @option opts [String] :language en_US (we support EN language only)
    # @option opts [String] :plugin Plisio’s internal field to determine integration plugin
    # @option opts [String] :version Plisio’s internal field to determine integration plugin version 
    # @option opts [BOOLEAN] :redirect_to_invoice Instead of JSON response user will be redirected to the Plisio&#x27;s invoice page (is not working for a white-label shop)
    # @option opts [String] :expire_min Interval in minutes when invoice will be expired
    # @return [InvoiceWhiteLabelResponseDto]
    def invoices_new_get(currency, order_name, order_number, opts = {})
      data, _status_code, _headers = invoices_new_get_with_http_info(currency, order_name, order_number, opts)
      data
    end

    # Create new invoice
    # @param currency one of the cryptocurrencies supported by Plisio (ID column from supported cryptocurrencies https://plisio.net/documentation/appendices/supported-cryptocurrencies)
    # @param order_name merchant internal order name
    # @param order_number merchant internal order number. Must be unique number in your store for each new store&#x60;s order!!!
    # @param [Hash] opts the optional parameters
    # @option opts [String] :amount any cryptocurrency float value. !!! Please, skip this field If you want to convert a fiat currency and use source_currency and source_amount fields instead
    # @option opts [String] :source_currency one of the 167 fiat currencies https://plisio.net/documentation/appendices/supported-fiat-currencies
    # @option opts [String] :source_amount any float value
    # @option opts [String] :allowed_psys_cids comma-separated list of cryptocurrencies that allowed for payment. Customer will be able to select one of them. Example: BTC,ETH,TZEC
    # @option opts [String] :description merchant invoice description
    # @option opts [String] :callback_url merchant full URL to get invoice updates. The “POST” request will be sent to this URL (example). If this parameter isn’t set, Plisio will send a callback to URL that can be set under profile API » API settings » ”Status URL” field
    # @option opts [String] :email an auto-fill invoice email. The customer will be asked to insert their email where a notification will be sent
    # @option opts [String] :language en_US (we support EN language only)
    # @option opts [String] :plugin Plisio’s internal field to determine integration plugin
    # @option opts [String] :version Plisio’s internal field to determine integration plugin version 
    # @option opts [BOOLEAN] :redirect_to_invoice Instead of JSON response user will be redirected to the Plisio&#x27;s invoice page (is not working for a white-label shop)
    # @option opts [String] :expire_min Interval in minutes when invoice will be expired
    # @return [Array<(InvoiceWhiteLabelResponseDto, Integer, Hash)>] InvoiceWhiteLabelResponseDto data, response status code and response headers
    def invoices_new_get_with_http_info(currency, order_name, order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoices_new_get ...'
      end
      # verify the required parameter 'currency' is set
      if @api_client.config.client_side_validation && currency.nil?
        fail ArgumentError, "Missing the required parameter 'currency' when calling InvoiceApi.invoices_new_get"
      end
      # verify the required parameter 'order_name' is set
      if @api_client.config.client_side_validation && order_name.nil?
        fail ArgumentError, "Missing the required parameter 'order_name' when calling InvoiceApi.invoices_new_get"
      end
      # verify the required parameter 'order_number' is set
      if @api_client.config.client_side_validation && order_number.nil?
        fail ArgumentError, "Missing the required parameter 'order_number' when calling InvoiceApi.invoices_new_get"
      end
      # resource path
      local_var_path = '/invoices/new'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'currency'] = currency
      query_params[:'order_name'] = order_name
      query_params[:'order_number'] = order_number
      query_params[:'amount'] = opts[:'amount'] if !opts[:'amount'].nil?
      query_params[:'source_currency'] = opts[:'source_currency'] if !opts[:'source_currency'].nil?
      query_params[:'source_amount'] = opts[:'source_amount'] if !opts[:'source_amount'].nil?
      query_params[:'allowed_psys_cids'] = opts[:'allowed_psys_cids'] if !opts[:'allowed_psys_cids'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?
      query_params[:'callback_url'] = opts[:'callback_url'] if !opts[:'callback_url'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'language'] = opts[:'language'] if !opts[:'language'].nil?
      query_params[:'plugin'] = opts[:'plugin'] if !opts[:'plugin'].nil?
      query_params[:'version'] = opts[:'version'] if !opts[:'version'].nil?
      query_params[:'redirect_to_invoice'] = opts[:'redirect_to_invoice'] if !opts[:'redirect_to_invoice'].nil?
      query_params[:'expire_min'] = opts[:'expire_min'] if !opts[:'expire_min'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InvoiceWhiteLabelResponseDto' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoices_new_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Invoice details
    # @param id invoice id
    # @param psys_cid destination cryptocurrency id
    # @param [Hash] opts the optional parameters
    # @return [InvoiceDetailsApiResponseDto]
    def invoices_switch_id_get(id, psys_cid, opts = {})
      data, _status_code, _headers = invoices_switch_id_get_with_http_info(id, psys_cid, opts)
      data
    end

    # Invoice details
    # @param id invoice id
    # @param psys_cid destination cryptocurrency id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InvoiceDetailsApiResponseDto, Integer, Hash)>] InvoiceDetailsApiResponseDto data, response status code and response headers
    def invoices_switch_id_get_with_http_info(id, psys_cid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InvoiceApi.invoices_switch_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceApi.invoices_switch_id_get"
      end
      # verify the required parameter 'psys_cid' is set
      if @api_client.config.client_side_validation && psys_cid.nil?
        fail ArgumentError, "Missing the required parameter 'psys_cid' when calling InvoiceApi.invoices_switch_id_get"
      end
      # resource path
      local_var_path = '/invoices/switch/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'psys_cid'] = psys_cid

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InvoiceDetailsApiResponseDto' 

      auth_names = opts[:auth_names] || ['view_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceApi#invoices_switch_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
