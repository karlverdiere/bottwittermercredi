require 'dotenv'
require 'twitter'

Dotenv.load
# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::Streaming::Client.new do |config|
 config.consumer_key        = ENV["TWITTER_API_KEY"]
  config.consumer_secret     = ENV["TWITTER_API_SECRET"]
  config.access_token        = ENV["TWITTER_TOKEN_KEY"]
  config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
end
p client

topics = ["verdiere"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
