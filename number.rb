class Number
	attr_reader :number
def initialize (number)
	@number = number
end

def convert_to_string
	[	:0 => "zero",
		:1 => "one"
		:2 => "two"

	]


	@number = @number.to_s
	puts @number
end
end

b = Number.new(8)
b.convert_to_string