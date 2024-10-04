=begin
#Plisio API

#Plisio payment gateway API

=end

require 'date'

module PlisioAPIClient
  class DonateDto
    # Donate name
    attr_accessor :name

    # Donate info name
    attr_accessor :info_name

    # Donate description
    attr_accessor :info_description

    # Donate info image url
    attr_accessor :info_image

    # Donate allowed_psys_name
    attr_accessor :allowed_psys_name

    # Donate $allowed_psys_cids
    attr_accessor :allowed_psys_cids

    # Donate $completed_name
    attr_accessor :completed_name

    # Donate $completed_text
    attr_accessor :completed_text

    # Donate $color_background_first
    attr_accessor :color_background_first

    # Donate $color_background_second
    attr_accessor :color_background_second

    # Donate $color_title
    attr_accessor :color_title

    # Donate $color_description
    attr_accessor :color_description

    # Donate $color_link_button
    attr_accessor :color_link_button

    # Donate $color_text
    attr_accessor :color_text

    # Donate $button_color
    attr_accessor :button_color

    # Donate $button_type
    attr_accessor :button_type

    # Donate $url_donate
    attr_accessor :url_donate

    # Model DonateBlockDto
    attr_accessor :block_info

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'info_name' => :'info_name',
        :'info_description' => :'info_description',
        :'info_image' => :'info_image',
        :'allowed_psys_name' => :'allowed_psys_name',
        :'allowed_psys_cids' => :'allowed_psys_cids',
        :'completed_name' => :'completed_name',
        :'completed_text' => :'completed_text',
        :'color_background_first' => :'color_background_first',
        :'color_background_second' => :'color_background_second',
        :'color_title' => :'color_title',
        :'color_description' => :'color_description',
        :'color_link_button' => :'color_link_button',
        :'color_text' => :'color_text',
        :'button_color' => :'button_color',
        :'button_type' => :'button_type',
        :'url_donate' => :'url_donate',
        :'block_info' => :'block_info'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'Object',
        :'info_name' => :'Object',
        :'info_description' => :'Object',
        :'info_image' => :'Object',
        :'allowed_psys_name' => :'Object',
        :'allowed_psys_cids' => :'Object',
        :'completed_name' => :'Object',
        :'completed_text' => :'Object',
        :'color_background_first' => :'Object',
        :'color_background_second' => :'Object',
        :'color_title' => :'Object',
        :'color_description' => :'Object',
        :'color_link_button' => :'Object',
        :'color_text' => :'Object',
        :'button_color' => :'Object',
        :'button_type' => :'Object',
        :'url_donate' => :'Object',
        :'block_info' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PlisioAPIClient::DonateDto` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PlisioAPIClient::DonateDto`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'info_name')
        self.info_name = attributes[:'info_name']
      end

      if attributes.key?(:'info_description')
        self.info_description = attributes[:'info_description']
      end

      if attributes.key?(:'info_image')
        self.info_image = attributes[:'info_image']
      end

      if attributes.key?(:'allowed_psys_name')
        self.allowed_psys_name = attributes[:'allowed_psys_name']
      end

      if attributes.key?(:'allowed_psys_cids')
        self.allowed_psys_cids = attributes[:'allowed_psys_cids']
      end

      if attributes.key?(:'completed_name')
        self.completed_name = attributes[:'completed_name']
      end

      if attributes.key?(:'completed_text')
        self.completed_text = attributes[:'completed_text']
      end

      if attributes.key?(:'color_background_first')
        self.color_background_first = attributes[:'color_background_first']
      end

      if attributes.key?(:'color_background_second')
        self.color_background_second = attributes[:'color_background_second']
      end

      if attributes.key?(:'color_title')
        self.color_title = attributes[:'color_title']
      end

      if attributes.key?(:'color_description')
        self.color_description = attributes[:'color_description']
      end

      if attributes.key?(:'color_link_button')
        self.color_link_button = attributes[:'color_link_button']
      end

      if attributes.key?(:'color_text')
        self.color_text = attributes[:'color_text']
      end

      if attributes.key?(:'button_color')
        self.button_color = attributes[:'button_color']
      end

      if attributes.key?(:'button_type')
        self.button_type = attributes[:'button_type']
      end

      if attributes.key?(:'url_donate')
        self.url_donate = attributes[:'url_donate']
      end

      if attributes.key?(:'block_info')
        self.block_info = attributes[:'block_info']
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
          info_name == o.info_name &&
          info_description == o.info_description &&
          info_image == o.info_image &&
          allowed_psys_name == o.allowed_psys_name &&
          allowed_psys_cids == o.allowed_psys_cids &&
          completed_name == o.completed_name &&
          completed_text == o.completed_text &&
          color_background_first == o.color_background_first &&
          color_background_second == o.color_background_second &&
          color_title == o.color_title &&
          color_description == o.color_description &&
          color_link_button == o.color_link_button &&
          color_text == o.color_text &&
          button_color == o.button_color &&
          button_type == o.button_type &&
          url_donate == o.url_donate &&
          block_info == o.block_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, info_name, info_description, info_image, allowed_psys_name, allowed_psys_cids, completed_name, completed_text, color_background_first, color_background_second, color_title, color_description, color_link_button, color_text, button_color, button_type, url_donate, block_info].hash
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
