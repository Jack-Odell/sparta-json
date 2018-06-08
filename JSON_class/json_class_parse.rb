require 'json'

class ParseJson

  attr_accessor :json_file
  attr_accessor :values_arr

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
    @values_arr = []
  end

  def get_base
    @json_file['base']
  end

  def get_date
    @json_file['date']
  end

  def count_rates
    @json_file['rates'].keys.count
  end

  def get_floats
    @json_file['rates'].each do |key, value|
      @values_arr << value
    end
  end
end

# p_json = ParseJson.new('json_exchange_rates.json')
#
# p p_json.get_floats.values
#
# p @values_arr
