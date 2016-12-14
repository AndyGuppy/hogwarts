require( 'sinatra' )
require( 'pry' )
require( 'sinatra/contrib/all' ) if development?
require_relative('./models/student.rb')
require_relative('./models/house.rb')

get '/students' do
@students = Student.all()

erb(:index)

  end

  #new pizza form
  get '/students/admin' do
    @houses = House.all()
  erb(:new)

  end

  #actually make a pizza
  post '/students' do
  # binding.pry
  @student = Student.new(params)
  @student.save()
  erb(:create)
  end