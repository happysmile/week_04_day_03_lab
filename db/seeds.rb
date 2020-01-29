require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

# create houses
gryffindor = House.new({
  'name' => 'Gryffindor',
  'url' => ''
})

gryffindor.save()

slytherin = House.new({
  'name' => 'Slytherin',
  'url' => ''
})

slytherin.save()

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => ''
})

ravenclaw.save()

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => ''
})

hufflepuff.save()


# create students
harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house_id' => 1
  });

harry.save()

hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house_id' => 1
  });

hermione.save()

draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house_id' => 2
  });

draco.save()






binding.pry
nil
