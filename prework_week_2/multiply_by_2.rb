# Multiply by 2

n = 1

while n <= 100000
	puts n
	n *= 2
end

puts n

n = 1

until n > 100000
	puts n
	n *= 2
end

puts n

# I wasn't sure if I should include in the output the number above 100,000 or
# if I should stop with the last number under 100,000. I decided to throw in
# the extra doubling for kicks.
