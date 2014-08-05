class Array
	#insert sort
	def insert_sort!
		(0...self.length).to_a.each do |j|
			key=self[j]
			i=j-1
			while i>=0 and self[i]>key
				self[i+1]=self[i]
				i=i-1
			end
			self[i+1]=key
		end

	end

	#bubble sort
	def bubble_sort!
		f = 1
		while f<self.length
			(0...(self.length-f)).to_a.each do |i|
				self[i],self[i+1]=self[i+1],self[i] if self[i]>self[i+1]
			end
		end
		f+=1
	end
end

p b=((1..100).to_a+(20..80).to_a).shuffle.sample(19)
p b.insert_sort!