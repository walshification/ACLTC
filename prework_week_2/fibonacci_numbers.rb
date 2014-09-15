# Fibonacci Numbers

fibby = [0, 1]

while fibby.length <= 100
	fibby << fibby[-1] + fibby[-2]	# Took me a minute to remember negative indices!
end

puts fibby
# I <3 math.
