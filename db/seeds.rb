require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

# create houses
gryffindor = House.new({
  'name' => 'Gryffindor',
  'url' => '/images/gryffindor.png'
})

gryffindor.save()

slytherin = House.new({
  'name' => 'Slytherin',
  'url' => '/images/slytherin.png'
})

slytherin.save()

ravenclaw = House.new({
  'name' => 'Ravenclaw',
  'url' => '/images/ravenclaw.png'
})

ravenclaw.save()

hufflepuff = House.new({
  'name' => 'Hufflepuff',
  'url' => '/images/hufflepuff.png'
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
