# reverse string while leaving special characters in the same place

def reverse_string_special(string)
	# conver string into array of chars
	string_arr = string.chars
	temp = string.chars
	# init answer array the length of number of chars
	final_arr = Array.new(string_arr.length)
	final = Array.new(string_arr.length)

	# iterate array and save positions of special chars
	string_arr.each_with_index do |value, index|
		# check for 65 - 90 and 97 - 122
		if value.ord < 65 || value.ord > 90 && value.ord < 97 || value.ord > 122
				temp[index] = nil
				final_arr[index] = value
		end
	end

	temp = temp.compact
	temp = temp.reverse
	count = 0
	temp_count = 0
	final_arr.count.times do 
		if final_arr[count] == nil
			final_arr[count] = temp[temp_count]
			temp_count += 1
		end
		count += 1
	end

	string = ""
	final_arr.each { |s| string += s}

	return string

end


string = "lad$kfjs#lkjdas"

p reverse_string_special(string)


