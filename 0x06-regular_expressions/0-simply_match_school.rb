#!/usr/bin/env ruby

# This script accepts one argument and
# uses a regular expression matching method
# to match the string, `School`

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/School/).join
