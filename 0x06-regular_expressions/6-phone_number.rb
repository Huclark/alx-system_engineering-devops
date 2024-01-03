#!/usr/bin/env ruby

# This script accepts one argument and 
# passes it to a regular expression matching method
# The regular expression must match a 10 digit phone number

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/^\d{10}$/).join
