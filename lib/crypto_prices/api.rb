require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    HTTParty.get("https://api.coinbase.com/v2/currencies")
  end 
  
  def self.get_price
    HTTParty.get("https://api.coinbase.com/v2/prices/:currency_pair/spot")
  end
  
end