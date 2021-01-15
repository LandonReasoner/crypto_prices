require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def get_pairs
    pairs = HTTParty.get("https://api.pro.coinbase.com/products")
    parsed(pairs)
  end
  
  def parsed(pairs)
    pairs.each do |pairs|
      cryptos = pairs.dig([],:id)
    end 
  end
  
  binding.pry
  def get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:pair]}/stats")
  end 
  
end