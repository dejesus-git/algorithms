class Array
	def quicksort
		return [] if empty?

		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))
		return *left.quicksort, pivot, *right.quicksort
	end
end

arr = [1, 10, 3, 4, 3, 6, 9, 4]

p arr.quicksort