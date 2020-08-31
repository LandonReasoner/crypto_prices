class CryptoPrices::CLI 
  
  def call 
    puts "Welcome to CryptoPrices!"
    while @input != 'exit'
      list_cryptos
      get_user_input
      validate(@input)
      options 
    end 
    goodbye
  end
  
  def list_cryptos
    puts "Select a currency to see prices for the day or you can exit"
    CryptoPrices::Crypto.all.each.with_index{|ind, c| puts "#{ind}. #{c.name}"}
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
  
  def show_status(crypto)
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
        