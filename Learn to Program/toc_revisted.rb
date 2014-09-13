# Table of contents with an array

line_width = 52

toc = [
	"Table of Contents\n".center(line_width),
	"Chapter 1: Getting Started".ljust(line_width/2),
	"page  1".rjust(line_width/2),
	"Chapter 2: Numbers".ljust(line_width/2),
	"page  9".rjust(line_width/2),
	"Chapter 3: Letters".ljust(line_width/2),
	"page 13".rjust(line_width/2)
]

puts	toc[0]
puts	toc[1] + toc[2]
puts	toc[3] + toc[4]
puts	toc[5] + toc[6]

# I tried to figure out a way to automate the printing of the array, but I
# couldn't elegantly get the chapter titles and pages to look write, so I settled.