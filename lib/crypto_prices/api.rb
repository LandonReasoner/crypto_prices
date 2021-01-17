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
  
  #binding.pry
  #def self.parsed(pairs)
   # pairs.map{ |pair| pair.dig('id') }
  #end
  
  def self.get_status
    HTTParty.get("https://api.pro.coinbase.com/products/#{@options[:pair]}/stats")
  end 
  
end