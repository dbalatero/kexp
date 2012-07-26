#!/usr/bin/env ruby

require 'bundler/setup'
require_relative 'shared'

require 'nokogiri'
require 'json'

if ARGV.size != 1
  abort "Usage: ./artist.rb [name of artist]"
end

plays = []

files = Dir.glob("cache/*")
files.each do |file|
  html = Nokogiri::HTML(File.read(file))
  html.css('.Play').each do |play|
    plays << JSON.parse(play.attr('data-playlistitem'))
  end
end

by_artist = plays.group_by { |p| p['ArtistName'] }

artist_plays = by_artist[ARGV[0]]
dates = artist_plays.map do |play|
  Time.at(play['AirDate'].match(/\d+/)[0].to_i / 1000.0)
end

puts "Total plays: #{artist_plays.size}"
puts "Dates:"
puts "----------------------"
dates.sort.each { |d| puts d }
