=begin
#Plisio API

#Plisio payment gateway API

=end

require 'date'

module PlisioAPIClient
  class PaysysDto
    # Cryptocurrency name
    attr_accessor :name

    # Cryptocurrency Plisio Abbr
    attr_accessor :cid

    # Cryptocurrency Abbr
    attr_accessor :currency

    # Cryptocurrency icon
    attr_accessor :icon

    # Cryptocurrency USD rate
    attr_accessor :rate_usd

    # Cryptocurrency USD price
    attr_accessor :price_usd

    # Cryptocurrency precision
    attr_accessor :precision

    # Cryptocurrency output precision
    attr_accessor :output_precision

    # Fiat abbr
    attr_accessor :fiat

    # Cryptocurrency fiat rate (default USD)
    attr_accessor :fiat_rate

    # Invoice amount minimum
    attr_accessor :min_sum_in

    # Plisio commission percentage
    attr_accessor :invoice_commission_percentage

    # Is cryptocurrency enabled (1 - disable, 0 - enabled)
    attr_accessor :hidden

    # Cryptocurrency node temporary on maintenance
    attr_accessor :maintenance

    # Pay fee from another crypto
    attr_accessor :contract_of

    # Standard of contract
    attr_accessor :contract_standard

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'cid' => :'cid',
        :'currency' => :'currency',
        :'icon' => :'icon',
        :'rate_usd' => :'rate_usd',
        :'price_usd' => :'price_usd',
        :'precision' => :'precision',
        :'output_precision' => :'output_precision',
        :'fiat' => :'fiat',
        :'fiat_rate' => :'fiat_rate',
        :'min_sum_in' => :'min_sum_in',
        :'invoice_commission_percentage' => :'invoice_commission_percentage',
        :'hidden' => :'hidden',
        :'maintenance' => :'maintenance',
        :'contract_of' => :'contractOf',
        :'contract_standard' => :'contractStandard'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'cid' => :'Object',
        :'currency' => :'Object',
        :'icon' => :'Object',
        :'rate_usd' => :'Object',
        :'price_usd' => :'Object',
        :'precision' => :'Object',
        :'output_precision' => :'Object',
        :'fiat' => :'Object',
        :'fiat_rate' => :'Object',
        :'min_sum_in' => :'Object',
        :'invoice_commission_percentage' => :'Object',
        :'hidden' => :'Object',
        :'maintenance' => :'Object',
        :'contract_of' => :'Object',
        :'contract_standard' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PlisioAPIClient::PaysysDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PlisioAPIClient::PaysysDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'icon')
        self.icon = attributes[:'icon']
      end

      if attributes.key?(:'rate_usd')
        self.rate_usd = attributes[:'rate_usd']
      end

      if attributes.key?(:'price_usd')
        self.price_usd = attributes[:'price_usd']
      end

      if attributes.key?(:'precision')
        self.precision = attributes[:'precision']
      end

      if attributes.key?(:'output_precision')
        self.output_precision = attributes[:'output_precision']
      end

      if attributes.key?(:'fiat')
        self.fiat = attributes[:'fiat']
      end

      if attributes.key?(:'fiat_rate')
        self.fiat_rate = attributes[:'fiat_rate']
      end

      if attributes.key?(:'min_sum_in')
        self.min_sum_in = attributes[:'min_sum_in']
      end

      if attributes.key?(:'invoice_commission_percentage')
        self.invoice_commission_percentage = attributes[:'invoice_commission_percentage']
      end

      if attributes.key?(:'hidden')
        self.hidden = attributes[:'hidden']
      end

      if attributes.key?(:'maintenance')
        self.maintenance = attributes[:'maintenance']
      end

      if attributes.key?(:'contract_of')
        self.contract_of = attributes[:'contract_of']
      end

      if attributes.key?(:'contract_standard')
        self.contract_standard = attributes[:'contract_standard']
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
          name == o.name &&
          cid == o.cid &&
          currency == o.currency &&
          icon == o.icon &&
          rate_usd == o.rate_usd &&
          price_usd == o.price_usd &&
          precision == o.precision &&
          output_precision == o.output_precision &&
          fiat == o.fiat &&
          fiat_rate == o.fiat_rate &&
          min_sum_in == o.min_sum_in &&
          invoice_commission_percentage == o.invoice_commission_percentage &&
          hidden == o.hidden &&
          maintenance == o.maintenance &&
          contract_of == o.contract_of &&
          contract_standard == o.contract_standard
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, cid, currency, icon, rate_usd, price_usd, precision, output_precision, fiat, fiat_rate, min_sum_in, invoice_commission_percentage, hidden, maintenance, contract_of, contract_standard].hash
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
