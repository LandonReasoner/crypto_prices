class CryptoPrices::Crypto 
  
  attr_accessor :name, :symbol, :open, :high, :low, :last 
  
  @@all = []
  
  def initialize(name, symbol, open, high, low, last = nil)
    save 
    
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def self.get_cryptos
    CryptoPrices::API.get_cryptos
    all
  end
  
  def self.find_by_name(input)
    all.find{|c| c.name = name}
  end 
    
  
end
