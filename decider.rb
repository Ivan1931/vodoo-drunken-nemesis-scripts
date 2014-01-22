#!/usr/bin/env ruby

def convert_to_hash(options)
  options_hash = {}
  options.each do |opt|
    options_hash[opt] = 0
  end
  options_hash
end

def decide(trials, options)
  puts "Deciding how with the following options #{options.inspect}"
  option_frequency = convert_to_hash(options)
  trials.to_i.times do
    option_frequency[options.sample] += 1
  end
  option_frequency
end

puts decide(ARGV[0], ARGV[1..-1]).sort_by(&:last).reverse
