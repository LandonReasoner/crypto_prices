class CryptoPrices::API 
  
  def self.get_cryptos
    resp = HTTParty.get(https://api.coinbase.com/v2/currencies)
    crypto = resp["name"]
  end
  
  def self.get_status
    stat = HTTParty.get(https://api.coinbase.com/v2/products/<product-id>/stats)
    prices = stat["open", "high", "low", "last"]
  end
  
end