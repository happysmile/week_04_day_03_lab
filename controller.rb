require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry' )
require_relative( './models/student.rb' )
require_relative( './models/house.rb' )
also_reload('./models/*')

get '/' do
  @page_id ="home"
  erb(:index)
end

get '/students' do
  @students = Student.all()
  erb(:students)
end

get '/students/new' do
  @houses = House.all()
  erb(:new)
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:created)
end

get '/students/:id' do
  student_id = params[:id]
  @student = Student.find_by_id(student_id)
  erb(:student)
end

get '/houses' do
  @houses = House.all()
  erb(:houses)
end

get '/houses/:id' do
  house_id = params[:id]
  @house = House.find_by_id(house_id)
  @students = @house.students()
  erb(:house)
end

post '/students/delete/:id' do
  student_id = params[:id]
  student = Student.find_by_id(student_id)
  student.delete()
  redirect '/students'
end

get '/students/edit/:id' do
  @houses = House.all()
  student_id = params[:id]
  @student = Student.find_by_id(student_id)
  erb(:edit)
end

post '/students/:id' do
  @student = Student.new(params)
  @student.update()
  erb(:updated)
end
