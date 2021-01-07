require 'pry'
require 'httparty'

class CryptoPrices::API 
  
  def self.get_pairs
    HTTParty.get("https://api.pro.coinbase.com/products")
  end
  
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:symbol]}/stats")
  end 
  
end