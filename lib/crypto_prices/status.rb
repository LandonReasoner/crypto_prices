class CryptoPrices::Status
  
  attr_accessor :opened, :high, :low, :last 
  attr_reader :input

  @@all = []

  def initialize(opened, high, low, last)
    @opened = opened
    @high = high
    @low = low 
    @last = last 
    @input = input 
    save 
  end 

  def self.status(input)
   CryptoPrices::API.get_status(@input)
  end 
  
  def self.all
     CryptoPrices::API.get_status(@input) if @@all.empty?
    @@all
  end 
  
  def save 
    @@all << self 
  end 
end 
