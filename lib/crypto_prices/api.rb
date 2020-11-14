require 'pry'

class CryptoPrices::API 
  
  def self.get_cryptos
    resp = HTTParty.get("GET https://api.coinbase.com/v2/exchange-rates")
    binding.pry 
    cryptos = resp["name"]
    CryptoPrices::Crypto.new_from_collection(cryptos)
  end
  
  def self.get_status
    stat = HTTParty.get("GET https://api.coinbase.com/v2/prices/:currency_pair/spot")
    prices = stat["open", "high", "low", "last"]
    CryptoPrices::Crypto.new_stat_from_collection(prices)
  end
  
end