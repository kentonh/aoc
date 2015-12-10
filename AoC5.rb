#!/usr/bin/env ruby
print "What file?"
which = gets.chomp

lines = File.readlines(which.chomp)
nice = 0

lines.each do |c|
  if c =~ /[aeiou].*[aeiou].*[aeiou]/
    if c =~ /aa|bb|cc|dd|ee|ff|gg|hh|ii|jj|kk|ll|mm|nn|oo|pp|qq|rr|ss|tt|uu|vv|ww|xx|yy|zz/
      if c !~ /ab|cd|pq|xy/
        nice += 1
      end
    end
  end
end

puts nice
