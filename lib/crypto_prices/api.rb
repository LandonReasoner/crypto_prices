require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    pairs_list = HTTParty.get("https://api.pro.coinbase.com/products")
    pairs_list.dig('id')
  end
  binding.pry
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:pair]}/stats")
  end 
  
end