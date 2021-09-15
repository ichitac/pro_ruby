print "text?:"
text = gets.chomp

begin
    print "pattern?"
    pattern = gets.chomp
    regexp = Regexp.new(pattern)
rescue RegexpError => ex
    puts "invalid pattern: #{ex.message}"
    retry
end

matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(',')}"
else
    puts "Nothing matched"
end
