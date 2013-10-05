def my_while

end

def my_each(array)
	i = 0
	while i < array.length
		yield
	end
end

array = ["Dan", "Sam", "Kim"]

my_each(array) {|i| puts "I am #{i}"}

def my_collect(array)
	i = 0
	collect = []
	while i < array.length
			if (yield(array[i]))
			collect << array[1]
		end
		i += 1
	end
	collect
end

def my_select(array)
	i = 0
	select = []
	while i < array.length
		if (yield(array[i]))
			select << array[1]
		end
		i += 1
	end
	select
		
end

def my_none?(array) do |i|
	i = 0
	while i < array.length
		if (yield(array[i]))
			return false
		end
	end
	true
end
end