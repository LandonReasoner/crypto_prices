class CryptoPrices::Pairs
  
  attr_accessor :id 
  @@all = []
  
  def initialize(id)
    @id = id 
    save 
  end 
  
  def self.all
     CryptoPrices::API.get_pairs if @@all.empty?
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 