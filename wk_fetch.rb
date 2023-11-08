#!/usr/bin/env ruby

#------------------------------------------------------------------------------
#
# Name: wk_fetch.rb
# Desc: Fetch current user status (current level, reviews due, etc.) from Wani
#       Kani and print to stdout.
#
#------------------------------------------------------------------------------

require "rest-client"
require "json"
require_relative "api_key"

BASE_URL = "https://api.wanikani.com/v2"
DEBUG = false

if DEBUG
  puts "BASE_URL = #{BASE_URL}"
  puts "API_KEY = #{API_KEY}"
  puts
end

response = RestClient.get("#{BASE_URL}/user",
                          {:Authorization => "Bearer #{API_KEY}"})
data = JSON.parse(response)

if DEBUG
  puts "response = #{response}"
  puts
end

puts "Username: #{data['data']['username']}"
puts "Level: #{data['data']['level']}"
puts "Subscription active: #{data['data']['subscription']['active']}"
if data['data']['subscription']['active'] == true
  puts "Subscription type: #{data['data']['subscription']['type']}"
end
