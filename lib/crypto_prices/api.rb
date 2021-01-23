require 'httparty'
require 'pry'

class CryptoPrices::API 
  
  def self.get_pairs
    pairs_list = HTTParty.get("https://api.pro.coinbase.com/products")
    pairs = pairs_list.map{ |pair| pair.dig('id') }
    pairs.each do |pair|
      id = pair 
      CryptoPrices::Pairs.new(id)
    end
  end
  
  def self.get_status(input)
    status = HTTParty.get("https://api.pro.coinbase.com/products/#{@input}/stats")
    
      CryptoPrices::Status.new(opened, high, low, last)
    end 
  end 
  
end