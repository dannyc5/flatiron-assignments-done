# MAIN IDEA: fizzbuzz is composed of two elements: fizz and buzz

# ELEGANCE
def fizzbuzz(i)
	[("fizz" if i % 3 == 0), ("buzz" if i % 5 == 0)].join
end

# PRETTY GOOD SOLUTION
# 
# def fizzbuzz(number)
# 	result = ""
# 	answer += "fizz" if number % 3 == 0
# 	answer += "buzz" if number % 5 == 0
# 	result
# end

# GROUP DATA
fizzed = []
buzzed = []
fizzbuzzed = []

(1..50).each do |i|
	if fizzbuzz(i) == "FizzBuzz"
		fizzbuzzed << i
	elsif fizzbuzz(i) == "Fizz"
		fizzed << i
	elsif fizzbuzz(i) == "Buzz"
		buzzed << i
	end
end

puts "Fizz: " + fizzed.to_s
puts "Buzz: " + buzzed.to_s
puts "FizzBuzz " + fizzbuzzed.to_s
