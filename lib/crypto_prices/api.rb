require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    pairs = HTTParty.get("https://api.pro.coinbase.com/products")
    parsed(pairs)
  end
  
  
    #addresses.map { |address| address.dig(:location, :latitude) }
  def self.parsed(pairs)
    pairs.map{ |pair| pair.dig([],:id) }
  end
  
  binding.pry
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:pair]}/stats")
  end 
  
end