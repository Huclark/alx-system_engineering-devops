#!/usr/bin/env ruby

# This script accepts one argument and 
# passes it to a regular expression matching method
# to catch `hbtn` or `htn`

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/hb?tn/).join
