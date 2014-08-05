class Person
	# def initialize(name,gender,age)
	# 	@name=name
	# 	@gender=gender
	# 	@age=age
	# end
  def name
   @name
  end
  def gender
   @gender
  end
  def age
   @age
  end
end
people = Person.new("zd","dsfa","sdf")
puts people.name
puts people.gender
puts people.age