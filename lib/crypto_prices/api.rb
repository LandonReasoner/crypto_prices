require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    pairs = HTTParty.get("https://api.pro.coinbase.com/products")
    self.parsed_resp(pairs)
  end
  
  def self.parsed_resp(pairs)
    pairs.each do |pair|
      cryptos = pairs.dig(:id)
    end 
  end
  
  binding.pry
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:pair]}/stats")
  end 
  
end