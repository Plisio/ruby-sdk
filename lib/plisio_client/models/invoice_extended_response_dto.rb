=begin
#Plisio API

#Plisio payment gateway API

=end

require 'date'

module PlisioAPIClient
  class InvoiceExtendedResponseDto
    # Plisio’s intertnal ID (copy of txn_id)
    attr_accessor :id

    # Invoice amount in the selected cryptocurrency
    attr_accessor :amount

    # Received and approved amount in the selected cryptocurrency
    attr_accessor :received_amount

    # Pending (not approve) amount in the selected cryptocurrency
    attr_accessor :pending_amount

    # Remaining amount in the selected cryptocurrency
    attr_accessor :remaining_amount

    # Invoice hash
    attr_accessor :wallet_hash

    # ID column from https://plisio.net/documentation/appendices/supported-cryptocurrencies
    attr_accessor :psys_cid

    # Code column from https://plisio.net/documentation/appendices/supported-cryptocurrencies
    attr_accessor :currency

    # Fiat currency - only USD available for the moment
    attr_accessor :source_currency

    # Exchange rate from the “psys_cid” to the “source_currency” at the moment of transfer
    attr_accessor :source_rate

    # How many confirmations expected to mark invoice completed
    attr_accessor :expected_confirmations

    # Plisio commission
    attr_accessor :invoice_commission

    # shop pays commission: invoice amount - invoice_commission client pays commission: invoice amount
    attr_accessor :invoice_sum

    # shop pays commission: invoice amount client pays commission: invoice_commission + invoice_sum
    attr_accessor :invoice_total_sum

    # If email has been set
    attr_accessor :email_already_set

    # link to the cryptocurrency block explorer
    attr_accessor :tx_url

    # array of transaction ids
    attr_accessor :tx_id

    # Initial invoice ID
    attr_accessor :switch_id

    # ID of invoice that has money
    attr_accessor :paid_id

    attr_accessor :params

    # invoice read-only view key
    attr_accessor :view_key

    # Plisio’s intertnal ID
    attr_accessor :txn_id

    # Invoice URL
    attr_accessor :invoice_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'amount' => :'amount',
        :'received_amount' => :'received_amount',
        :'pending_amount' => :'pending_amount',
        :'remaining_amount' => :'remaining_amount',
        :'wallet_hash' => :'wallet_hash',
        :'psys_cid' => :'psys_cid',
        :'currency' => :'currency',
        :'source_currency' => :'source_currency',
        :'source_rate' => :'source_rate',
        :'expected_confirmations' => :'expected_confirmations',
        :'invoice_commission' => :'invoice_commission',
        :'invoice_sum' => :'invoice_sum',
        :'invoice_total_sum' => :'invoice_total_sum',
        :'email_already_set' => :'email_already_set',
        :'tx_url' => :'tx_url',
        :'tx_id' => :'tx_id',
        :'switch_id' => :'switch_id',
        :'paid_id' => :'paid_id',
        :'params' => :'params',
        :'view_key' => :'view_key',
        :'txn_id' => :'txn_id',
        :'invoice_url' => :'invoice_url'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'',
        :'amount' => :'',
        :'received_amount' => :'',
        :'pending_amount' => :'',
        :'remaining_amount' => :'',
        :'wallet_hash' => :'',
        :'psys_cid' => :'',
        :'currency' => :'',
        :'source_currency' => :'',
        :'source_rate' => :'',
        :'expected_confirmations' => :'',
        :'invoice_commission' => :'',
        :'invoice_sum' => :'',
        :'invoice_total_sum' => :'',
        :'email_already_set' => :'',
        :'tx_url' => :'',
        :'tx_id' => :'',
        :'switch_id' => :'',
        :'paid_id' => :'',
        :'params' => :'',
        :'view_key' => :'',
        :'txn_id' => :'',
        :'invoice_url' => :''
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'switch_id',
        :'paid_id',
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PlisioAPIClient::InvoiceExtendedResponseDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PlisioAPIClient::InvoiceExtendedResponseDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'received_amount')
        self.received_amount = attributes[:'received_amount']
      end

      if attributes.key?(:'pending_amount')
        self.pending_amount = attributes[:'pending_amount']
      end

      if attributes.key?(:'remaining_amount')
        self.remaining_amount = attributes[:'remaining_amount']
      end

      if attributes.key?(:'wallet_hash')
        self.wallet_hash = attributes[:'wallet_hash']
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

      if attributes.key?(:'expected_confirmations')
        self.expected_confirmations = attributes[:'expected_confirmations']
      end

      if attributes.key?(:'invoice_commission')
        self.invoice_commission = attributes[:'invoice_commission']
      end

      if attributes.key?(:'invoice_sum')
        self.invoice_sum = attributes[:'invoice_sum']
      end

      if attributes.key?(:'invoice_total_sum')
        self.invoice_total_sum = attributes[:'invoice_total_sum']
      end

      if attributes.key?(:'email_already_set')
        self.email_already_set = attributes[:'email_already_set']
      end

      if attributes.key?(:'tx_url')
        self.tx_url = attributes[:'tx_url']
      end

      if attributes.key?(:'tx_id')
        if (value = attributes[:'tx_id']).is_a?(Array)
          self.tx_id = value
        end
      end

      if attributes.key?(:'switch_id')
        self.switch_id = attributes[:'switch_id']
      end

      if attributes.key?(:'paid_id')
        self.paid_id = attributes[:'paid_id']
      end

      if attributes.key?(:'params')
        self.params = attributes[:'params']
      end

      if attributes.key?(:'view_key')
        self.view_key = attributes[:'view_key']
      end

      if attributes.key?(:'txn_id')
        self.txn_id = attributes[:'txn_id']
      end

      if attributes.key?(:'invoice_url')
        self.invoice_url = attributes[:'invoice_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
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
          id == o.id &&
          amount == o.amount &&
          received_amount == o.received_amount &&
          pending_amount == o.pending_amount &&
          remaining_amount == o.remaining_amount &&
          wallet_hash == o.wallet_hash &&
          psys_cid == o.psys_cid &&
          currency == o.currency &&
          source_currency == o.source_currency &&
          source_rate == o.source_rate &&
          expected_confirmations == o.expected_confirmations &&
          invoice_commission == o.invoice_commission &&
          invoice_sum == o.invoice_sum &&
          invoice_total_sum == o.invoice_total_sum &&
          email_already_set == o.email_already_set &&
          tx_url == o.tx_url &&
          tx_id == o.tx_id &&
          switch_id == o.switch_id &&
          paid_id == o.paid_id &&
          params == o.params &&
          view_key == o.view_key &&
          txn_id == o.txn_id &&
          invoice_url == o.invoice_url && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, amount, received_amount, pending_amount, remaining_amount, wallet_hash, psys_cid, currency, source_currency, source_rate, expected_confirmations, invoice_commission, invoice_sum, invoice_total_sum, email_already_set, tx_url, tx_id, switch_id, paid_id, params, view_key, txn_id, invoice_url].hash
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
      super(attributes)
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
      hash = super
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
