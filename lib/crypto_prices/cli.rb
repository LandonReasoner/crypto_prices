class CryptoPrices::CLI 
  
  def call
    @input = " "
    puts "Welcome to CryptoPrices!"
    while @input != 'exit'
    sleep(1)
      get_pairs
      list_cryptos
      get_user_input
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
    chosen_pair = gets.strip.to_i
    if valid_input(chosen_pair, @pairs) 
      return show_status(chosen_pair)
    else
      invalid_input
    end 
  end
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end
  
  def invalid_input
    puts "Sorry I didn't understand that"
    sleep(1)
      list_cryptos
  end
  
  def show_status(chosen_pair)
    pair = @pairs[chosen_pair - 1]
    #pair.get_status
    puts "Here is the 24 hour status of #{pair.id}"
    get_status(pair)
  end
  
  def get_status(pair)
    CryptoPrices::Status.status(pair)
  end 
  
  def options 
    puts "Would you like to see the list again or exit"
      get_user_input
    end
    
  def goodbye
    puts "Thank You and Good Luck Trading!!"
  end
  
end 
        