require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/btc-usd/stats")
  end 
  
  def self.get_price
    HTTParty.get("https://api.pro.coinbase.com/products")
  end
  binding.pry
end