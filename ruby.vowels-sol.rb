# ORIGINAL SOLUTION:

# def is_a_vowel?(letter)
# 	"aeiou".include?(letter)
# end

# DRY: Don't reiterate the or statement using if / elsif
# Using case / when / then is more elegant.

def is_a_vowel?(letter)
	case letter
	when "a", "e", "i", "o", "u"
		true
	else
		"Not a vowel"
	end
end