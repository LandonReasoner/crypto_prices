class CryptoPrices::Pairs
  
  attr_accessor :id, :status 
  @@all = []
  
  def initialize(id)
    @id = id 
    @status = {}
    save 
  end 
  
  def self.all
     CryptoPrices::API.get_pairs if @@all.empty?
    @@all
  end 
  
  def get_status
    CryptoPrices::API.get_status(self) if @status.empty?
  end 
  
  def save 
    @@all << self 
  end
  
  def self.find_by_id(input)
    all.find{ |c| c.id == @input }
  end 
end 