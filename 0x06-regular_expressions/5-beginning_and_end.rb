#!/usr/bin/env ruby

# This script accepts one argument and 
# passes it to a regular expression matching method
# The regular expression must be exactly matching a string
# that starts with `h` ends with `n` and can have any single 
# character in between

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/^h.n$/).join
