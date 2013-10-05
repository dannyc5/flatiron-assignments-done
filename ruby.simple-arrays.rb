# Construct an array with your favorite foods.
# It should have at least 5 elements.
# Write a puts which returns your most favorite food out of the array.
# Construct an array with the colors of the rainbow (ROYGBIV)
# Slice the colors Red, Orange, and Yellow out of the array.
# Create an empty array.
# Assign values to the the second and 6th position.

favfoods = ["pizza", 
	"fried chicken",
	"grilled cheese",
	"chips",
	"kombucha"
]

puts favfoods[0]

colors = ["red",
	"orange",
	"yellow",
	"green",
	"blue",
	"indigo",
	"violet"
]

colors.slice!(0..2)

empty = []

empty[1] = "val1"
empty[5] = "val2"