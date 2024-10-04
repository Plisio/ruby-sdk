=begin
#Plisio API

#Plisio payment gateway API

=end

require 'date'

module PlisioAPIClient
  class OperationDto
    # Profile ID
    attr_accessor :user_id

    # Shop ID
    attr_accessor :shop_id

    # cash_in, cash_out, mass_cash_out, invoice
    attr_accessor :type

    # pending, completed, error, new, expired, mismatch, cancelled
    attr_accessor :status

    # unconfirmed amount (mempool)
    attr_accessor :pending_sum

    # ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies
    attr_accessor :psys_cid

    # Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies
    attr_accessor :currency

    # fiat currency - USD by default or source_currency was set
    attr_accessor :source_currency

    # Exchange rate from the “psys_cid” to the “source_currency” at the moment of transfer
    attr_accessor :source_rate

    # transaction fee stated in the transfer
    attr_accessor :fee

    # destination hash (type=cash_out) or invoice hash
    attr_accessor :wallet_hash

    # Pairs of hashes and values (type=mass_cash_out)
    attr_accessor :sendmany

    attr_accessor :params

    # timestamp in UTC timezone; it may need to be divided by 1000
    attr_accessor :expire_at_utc

    # timestamp in the UTC timezone; it may need to be divided by 1000
    attr_accessor :created_at_utc

    # amount received/transferred by an operation (invoice, cash-in/cash-out)
    attr_accessor :amount

    # Invoice: params.amount + Plisio commission (if customer pays commission) or params.amount (if merchant pays commission) Cash-out: transfer amount + network fee Cash-in: received amount
    attr_accessor :sum

    # Plisio commission
    attr_accessor :commission

    # link to the cryptocurrency block explorer
    attr_accessor :tx_url

    # array of transaction ids
    attr_accessor :tx_id

    # internal Plisio operation ID
    attr_accessor :id

    # Real incoming amount
    attr_accessor :actual_sum

    # Plisio commission taken
    attr_accessor :actual_commission

    # Network fee (move invoice to wallet)
    attr_accessor :actual_fee

    # actual_sum - actual_commis_sim - actual_fee
    attr_accessor :actual_invoice_sum

    # array of transaction payment items
    attr_accessor :tx

    # Number of confirmations of this transaction. We don't update confirmation after operation is confirmed
    attr_accessor :confirmations

    # Status code
    attr_accessor :status_code

    # ID of parent invoice
    attr_accessor :parent_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'user_id' => :'user_id',
        :'shop_id' => :'shop_id',
        :'type' => :'type',
        :'status' => :'status',
        :'pending_sum' => :'pending_sum',
        :'psys_cid' => :'psys_cid',
        :'currency' => :'currency',
        :'source_currency' => :'source_currency',
        :'source_rate' => :'source_rate',
        :'fee' => :'fee',
        :'wallet_hash' => :'wallet_hash',
        :'sendmany' => :'sendmany',
        :'params' => :'params',
        :'expire_at_utc' => :'expire_at_utc',
        :'created_at_utc' => :'created_at_utc',
        :'amount' => :'amount',
        :'sum' => :'sum',
        :'commission' => :'commission',
        :'tx_url' => :'tx_url',
        :'tx_id' => :'tx_id',
        :'id' => :'id',
        :'actual_sum' => :'actual_sum',
        :'actual_commission' => :'actual_commission',
        :'actual_fee' => :'actual_fee',
        :'actual_invoice_sum' => :'actual_invoice_sum',
        :'tx' => :'tx',
        :'confirmations' => :'confirmations',
        :'status_code' => :'status_code',
        :'parent_id' => :'parent_id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'user_id' => :'Object',
        :'shop_id' => :'Object',
        :'type' => :'Object',
        :'status' => :'Object',
        :'pending_sum' => :'Object',
        :'psys_cid' => :'Object',
        :'currency' => :'Object',
        :'source_currency' => :'Object',
        :'source_rate' => :'Object',
        :'fee' => :'Object',
        :'wallet_hash' => :'Object',
        :'sendmany' => :'Object',
        :'params' => :'Object',
        :'expire_at_utc' => :'Object',
        :'created_at_utc' => :'Object',
        :'amount' => :'Object',
        :'sum' => :'Object',
        :'commission' => :'Object',
        :'tx_url' => :'Object',
        :'tx_id' => :'Object',
        :'id' => :'Object',
        :'actual_sum' => :'Object',
        :'actual_commission' => :'Object',
        :'actual_fee' => :'Object',
        :'actual_invoice_sum' => :'Object',
        :'tx' => :'Object',
        :'confirmations' => :'Object',
        :'status_code' => :'Object',
        :'parent_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PlisioAPIClient::OperationDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PlisioAPIClient::OperationDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'shop_id')
        self.shop_id = attributes[:'shop_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'pending_sum')
        self.pending_sum = attributes[:'pending_sum']
      end

      if attributes.key?(:'psys_cid')
        self.psys_cid = attributes[:'psys_cid']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'source_currency')
        self.source_currency = attributes[:'source_currency']
      end

      if attributes.key?(:'source_rate')
        self.source_rate = attributes[:'source_rate']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'wallet_hash')
        self.wallet_hash = attributes[:'wallet_hash']
      end

      if attributes.key?(:'sendmany')
        if (value = attributes[:'sendmany']).is_a?(Array)
          self.sendmany = value
        end
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'expire_at_utc')
        self.expire_at_utc = attributes[:'expire_at_utc']
      end

      if attributes.key?(:'created_at_utc')
        self.created_at_utc = attributes[:'created_at_utc']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'sum')
        self.sum = attributes[:'sum']
      end

      if attributes.key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.key?(:'tx_url')
        self.tx_url = attributes[:'tx_url']
      end

      if attributes.key?(:'tx_id')
        if (value = attributes[:'tx_id']).is_a?(Array)
          self.tx_id = value
        end
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'actual_sum')
        self.actual_sum = attributes[:'actual_sum']
      end

      if attributes.key?(:'actual_commission')
        self.actual_commission = attributes[:'actual_commission']
      end

      if attributes.key?(:'actual_fee')
        self.actual_fee = attributes[:'actual_fee']
      end

      if attributes.key?(:'actual_invoice_sum')
        self.actual_invoice_sum = attributes[:'actual_invoice_sum']
      end

      if attributes.key?(:'tx')
        if (value = attributes[:'tx']).is_a?(Array)
          self.tx = value
        end
      end

      if attributes.key?(:'confirmations')
        self.confirmations = attributes[:'confirmations']
      end

      if attributes.key?(:'status_code')
        self.status_code = attributes[:'status_code']
      end

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          user_id == o.user_id &&
          shop_id == o.shop_id &&
          type == o.type &&
          status == o.status &&
          pending_sum == o.pending_sum &&
          psys_cid == o.psys_cid &&
          currency == o.currency &&
          source_currency == o.source_currency &&
          source_rate == o.source_rate &&
          fee == o.fee &&
          wallet_hash == o.wallet_hash &&
          sendmany == o.sendmany &&
          params == o.params &&
          expire_at_utc == o.expire_at_utc &&
          created_at_utc == o.created_at_utc &&
          amount == o.amount &&
          sum == o.sum &&
          commission == o.commission &&
          tx_url == o.tx_url &&
          tx_id == o.tx_id &&
          id == o.id &&
          actual_sum == o.actual_sum &&
          actual_commission == o.actual_commission &&
          actual_fee == o.actual_fee &&
          actual_invoice_sum == o.actual_invoice_sum &&
          tx == o.tx &&
          confirmations == o.confirmations &&
          status_code == o.status_code &&
          parent_id == o.parent_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [user_id, shop_id, type, status, pending_sum, psys_cid, currency, source_currency, source_rate, fee, wallet_hash, sendmany, params, expire_at_utc, created_at_utc, amount, sum, commission, tx_url, tx_id, id, actual_sum, actual_commission, actual_fee, actual_invoice_sum, tx, confirmations, status_code, parent_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        PlisioAPIClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
