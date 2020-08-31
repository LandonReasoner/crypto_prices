class CryptoPrices::API 
  
  def self.get_cryptos
    resp = HTTParty.get("https://api.coinbase.com/v2/currencies")
    cryptos = resp["name"]
    CryptoPrices::Crypto.new_from_collection(cryptos)
  end
  
  def self.get_status
    stat = HTTParty.get("https://api.coinbase.com/v2/products/<product-id>/stats")
    prices = stat["open", "high", "low", "last"]
    CryptoPrices::Crypto.new_stat_from_collection(prices)
  end
  
end