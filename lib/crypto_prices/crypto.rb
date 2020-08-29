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
  
  def self.get_status
    CryptoPrices::API.get_status
    all
  end 
  
  def self.find_by_name(input)
    all.find{|c| c.name = name}
  end 
  
  def self.find_by_symbol(input)
    all.find{|c| c.sym = sym}
  end 
    
  
end
