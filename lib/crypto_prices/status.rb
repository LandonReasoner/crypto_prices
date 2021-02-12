class CryptoPrices::Status
  
  attr_accessor :opened, :high, :low, :last 
  attr_reader :id

  @@all = {}

  def initialize(opened, high, low, last)
    @opened = opened
    @high = high
    @low = low 
    @last = last 
    @id = id 
    save 
  end 

  def self.status(id)
   CryptoPrices::API.get_status(@id)
  end 
  
  def self.all
    CryptoPrices::API.get_status(@input) if @@all.empty?
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 
