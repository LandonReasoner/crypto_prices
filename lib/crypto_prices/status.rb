class CryptoPrices::Status
  
  attr_accessor :opened, :high, :low, :last 

  def initialize(opened, high, low, last)
    @opened = opened
    @high = high
    @low = low 
    @last = last 
    save 
  end 

  def self.status(new_pair)
   CryptoPrices::API.get_status(new_pair)
  end 
end 
