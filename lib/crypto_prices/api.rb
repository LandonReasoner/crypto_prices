require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    HTTParty.get("https://api.coinbase.com/v2/base")
  end 
  binding.pry 
  
  def self.get_price
    HTTParty.get("https://api.coinbase.com/v2/prices/btc-usd/spot")
  end
  
end