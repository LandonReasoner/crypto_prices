class CryptoPrices::CLI 
  
  def call 
    puts "Welcome to CryptoPrices!"
    while @input != 'exit'
    sleep(1)
      get_pairs
      list_cryptos
      get_user_input
      validate(@input)
      show_status
      options 
    end 
    goodbye
  end
  
  def get_pairs
   @pairs = CryptoPrices::Pairs.all
  end 
  
  def list_cryptos
    @pairs.each.with_index(1) do |pair, index| 
      puts "#{index}. #{pair.id}"
    end 
  end 
  
  def get_user_input
    @input = gets.strip
  end
  
  def validate(input)
    new_pair = CryptoPrices::Pairs.find_by_name(input)
    new_pair ? show_status(new_pair) : invalid_input
  end
  
  def invalid_input
    puts "Sorry I didn't understand that"
    sleep(1)
      list_cryptos
  end
  
  def show_status
    CryptoPrices::Crypto.status
  end
  
  def options 
    puts "Would you like to see the list again or exit"
      get_user_input
    end
    
  def goodbye
    puts "Thank You and Good Luck Trading!!"
  end
  
end 
        