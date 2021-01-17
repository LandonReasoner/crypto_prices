class CryptoPrices::Pairs
  
  attr_accessor :id 
  @@all = []
  
  def initialize(id)
    @id = id 
    save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 