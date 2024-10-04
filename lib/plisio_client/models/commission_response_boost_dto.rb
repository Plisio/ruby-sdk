=begin
#Plisio API

#Plisio payment gateway API

=end

require 'date'

module PlisioAPIClient
  class CommissionResponseBoostDto
    # Minimal fee rate for boost
    attr_accessor :min_fee_rate

    # Maximum fee rate for boost
    attr_accessor :max_fee_rate

    # Plisio commission value
    attr_accessor :commission

    # Cryptocurrency fee value
    attr_accessor :fee

    # Cryptocurrency feeUnit value
    attr_accessor :fee_unit

    # Cryptocurrency fee value in selected fiat currency
    attr_accessor :fee_fiat

    # Selected fiat currency
    attr_accessor :fee_fiat_unit

    # Maximum allowed amount to withdrawal
    attr_accessor :max_amount

    # Plisio's cryptocurrency fee estimation plan
    attr_accessor :plan

    # Pay fee from wallet
    attr_accessor :use_wallet

    # Balance of wallet that will be used to pay fee
    attr_accessor :use_wallet_balance

    attr_accessor :plans

    # Cryptocurrency fee limits
    attr_accessor :custom

    attr_accessor :errors

    attr_accessor :custom_fee_rate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'min_fee_rate' => :'minFeeRate',
        :'max_fee_rate' => :'maxFeeRate',
        :'commission' => :'commission',
        :'fee' => :'fee',
        :'fee_unit' => :'feeUnit',
        :'fee_fiat' => :'feeFiat',
        :'fee_fiat_unit' => :'feeFiatUnit',
        :'max_amount' => :'maxAmount',
        :'plan' => :'plan',
        :'use_wallet' => :'useWallet',
        :'use_wallet_balance' => :'useWalletBalance',
        :'plans' => :'plans',
        :'custom' => :'custom',
        :'errors' => :'errors',
        :'custom_fee_rate' => :'customFeeRate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'min_fee_rate' => :'',
        :'max_fee_rate' => :'',
        :'commission' => :'',
        :'fee' => :'',
        :'fee_unit' => :'',
        :'fee_fiat' => :'',
        :'fee_fiat_unit' => :'',
        :'max_amount' => :'',
        :'plan' => :'',
        :'use_wallet' => :'',
        :'use_wallet_balance' => :'',
        :'plans' => :'',
        :'custom' => :'',
        :'errors' => :'',
        :'custom_fee_rate' => :''
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'min_fee_rate',
        :'max_fee_rate',
        :'use_wallet',
        :'use_wallet_balance',
        :'errors',
        :'custom_fee_rate'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PlisioAPIClient::CommissionResponseBoostDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PlisioAPIClient::CommissionResponseBoostDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'min_fee_rate')
        self.min_fee_rate = attributes[:'min_fee_rate']
      end

      if attributes.key?(:'max_fee_rate')
        self.max_fee_rate = attributes[:'max_fee_rate']
      end

      if attributes.key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'fee_unit')
        self.fee_unit = attributes[:'fee_unit']
      end

      if attributes.key?(:'fee_fiat')
        self.fee_fiat = attributes[:'fee_fiat']
      end

      if attributes.key?(:'fee_fiat_unit')
        self.fee_fiat_unit = attributes[:'fee_fiat_unit']
      end

      if attributes.key?(:'max_amount')
        self.max_amount = attributes[:'max_amount']
      end

      if attributes.key?(:'plan')
        self.plan = attributes[:'plan']
      end

      if attributes.key?(:'use_wallet')
        self.use_wallet = attributes[:'use_wallet']
      end

      if attributes.key?(:'use_wallet_balance')
        self.use_wallet_balance = attributes[:'use_wallet_balance']
      end

      if attributes.key?(:'plans')
        self.plans = attributes[:'plans']
      end

      if attributes.key?(:'custom')
        if (value = attributes[:'custom']).is_a?(Array)
          self.custom = value
        end
      end

      if attributes.key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.key?(:'custom_fee_rate')
        self.custom_fee_rate = attributes[:'custom_fee_rate']
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
          min_fee_rate == o.min_fee_rate &&
          max_fee_rate == o.max_fee_rate &&
          commission == o.commission &&
          fee == o.fee &&
          fee_unit == o.fee_unit &&
          fee_fiat == o.fee_fiat &&
          fee_fiat_unit == o.fee_fiat_unit &&
          max_amount == o.max_amount &&
          plan == o.plan &&
          use_wallet == o.use_wallet &&
          use_wallet_balance == o.use_wallet_balance &&
          plans == o.plans &&
          custom == o.custom &&
          errors == o.errors &&
          custom_fee_rate == o.custom_fee_rate && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [min_fee_rate, max_fee_rate, commission, fee, fee_unit, fee_fiat, fee_fiat_unit, max_amount, plan, use_wallet, use_wallet_balance, plans, custom, errors, custom_fee_rate].hash
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
