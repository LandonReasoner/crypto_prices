class CryptoPrices::CLI 
  
  def call 
    puts "Welcome to CryptoPrices!"
    while @input != 'exit'
      list_pairs
      get_user_input
      validate(@input)
      show_status
      options 
    end 
    goodbye
  end
  
  def list_cryptos
    puts "1. Bitcoin  (btc)"
    puts "2. Litecoin (ltc)"
    puts "3. Ethereum (eth)"
    puts "4. Ripple   (xrp)"
    puts "Please select from the list above and input the pair or symbol you wish to see."
  end 
  
  def get_user_input
    @input = gets.strip
  end
  
  def validate(input)
    crypto = CryptoPrices::Crypto.find_by_name(input)
    crypto ? show_status(crypto) : invalid_input
  end
  
  def invalid_input
    puts "Sorry I didn't understand that"
    sleep(2)
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
        