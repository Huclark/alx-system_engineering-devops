#!/usr/bin/env ruby

# This script accepts one argument and 
# passes it to a regular expression matching method
# The regular expression must be only matching: capital letters

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/[A-Z]/).join
