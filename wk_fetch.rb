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

BASE_URL = "https://www.wanikani.com/api/user/#{API_KEY}"
DEBUG = false

puts "BASE_URL = #{BASE_URL}" if DEBUG

response = RestClient.get("#{BASE_URL}/study-queue")
data = JSON.parse(response)

puts "response = #{response}" if DEBUG

puts "#{data['user_information']['username']}"
puts "Level: #{data['user_information']['level']}"
puts "Reviews due: #{data['requested_information']['reviews_available']}"
puts "Reviews due next hour: #{data['requested_information']['reviews_available_next_hour']}"
puts "Lessons available: #{data['requested_information']['lessons_available']}"


