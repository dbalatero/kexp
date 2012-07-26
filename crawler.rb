#!/usr/bin/env ruby

require_relative 'shared'

start_time = Time.local(2012, 7, 14, 1, 0, 0)
current_time = start_time

while current_time < Time.now
  if Kexp.cached?(current_time)
    puts "Already have a cache file for #{Kexp.url_key(current_time)}."
  else
    Kexp.save_time_to_cache(current_time)
    puts "Cached #{Kexp.url_key(current_time)}."
  end

  # move to the next hour
  current_time = current_time + 3600
end
