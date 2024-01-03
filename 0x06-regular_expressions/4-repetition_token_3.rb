#!/usr/bin/env ruby

# This script accepts one argument and 
# passes it to a regular expression matching method
# to catch `hbn` or the same string with at least one `t`
# character before `n`character and after `b` character

# Check if exactly one argument is passes
if ARGV.length != 1
	exit 1
end

# Print the match to stdout
puts ARGV[0].scan(/hbt*n/).join
