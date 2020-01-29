require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( './models/student.rb' )
require_relative( './models/house.rb' )
also_reload('./models/*')

get '/' do
  erb(:index)
end

get '/students' do
  @students = Student.all()
  erb(:students)
end

get '/students/new' do
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:created)
end

get '/houses' do
  @houses = House.all()
  erb(:houses)
end
