#!/usr/bin/env ruby

require "fileutils"
include FileUtils
if ARGV.count == 0 then
  puts "No parameters"
  exit 1
end
puts "Params: #{ARGV[0]}\n"

puts Dir['*.rb']
puts Dir['**/*.m']

puts File.expand_path("../")
puts File.expand_path("~/Development/github")
#Dir.chdir("~/Development/github")
#puts File.dirname
