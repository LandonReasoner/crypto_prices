require 'pry'
require 'httparty'

require_relative "./crypto_prices/version"
require_relative "./crypto_prices/cli"
require_relative "./crypto_prices/api"
require_relative "./crypto_prices/pairs"
require_relative "./crypto_prices/status"

module CryptoPrices
  class Error < StandardError; end
  # Your code goes here...
end
