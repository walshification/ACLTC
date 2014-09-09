# Playing with Arrays in the Console

x = [1,2,3,4]		# Creates a new array named x
x					#=> [1,2,3,4]
x[3]				#=> 4

x.push(5)			# Adds 5 to the end of the array x
x					#=> [1,2,3,4,5]

x.push([2,4,6])		# Adds an array to the end of x
x					#=> [1,2,3,4,5,[2,4,6]]

y = [1,3,5]			# Creates a new array named y
x.push(y)			# Adds the array y to the end of the array x
x					#=> [1,2,3,4,5,[2,4,6],[1,3,5]]

x[5][0]				#=> 2
