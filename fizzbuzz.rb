def fizzbuzz(num)
	if num % 3 == 0 && num % 5 == 0
		puts "FizzBuzz"
		"FizzBuzz"
	elsif num % 5 == 0
		puts "Buzz"
		"Buzz"
	elsif num % 3 == 0
		puts "Fizz"
		"Fizz"
	else
	end
end

def group_fizzbuzz_to(last, first=1)
	fizzed = []
	buzzed = []
	fizzbuzzed = []

	(first..last).each do |i|
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
end

# FizzBuzz 1 through 50
(1..50).each { |i| fizzbuzz(i) }

# Group numbers by fizz, buzz and fizzbuzz. Then print to screen.
group_fizzbuzz_to(50)