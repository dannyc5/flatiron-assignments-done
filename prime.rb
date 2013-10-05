# def prime?(number)
# 	(2...number).each do |i|
# 		if number % i == 0
# 			puts "#{number} isn't prime"
# 			return false
# 		else
# 			puts "#{number} is prime"
# 			return true
# 		end
# 	end
# end

def prime?(number) 
  tries = 0
  i = 3
  prime = true
  return false if number < 2 || number.even? || number % 3 == 0

  while (i*i) < number
    tries += 1
    prime = false and break if number % i == 0
    i += 2
  end

  prime_in_words = prime ? "prime" : "not prime"

  prime
  puts "#{number} is #{prime_in_words}"  
  puts "... solved in #{tries} tries."
end

prime?(4)
prime? 8
prime?(123)
prime?(10007)
prime?(335)

