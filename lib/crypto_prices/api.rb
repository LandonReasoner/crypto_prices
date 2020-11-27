require 'pry'
require 'HTTParty'

class CryptoPrices::API 
  
  def self.get_price
    HTTParty.get("https://api.coinbase.com/v2/prices/:currency_pair/spot")
  end
  
end