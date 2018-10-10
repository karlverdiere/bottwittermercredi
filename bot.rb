require 'dotenv'
require 'twitter'

Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN_KEY"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
end
p client

client.update('Mon premier tweet en ruby  via un bot !!!!')
