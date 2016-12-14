require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('./models/student.rb')

get '/students' do
@students = Student.all()
erb(:index)

  end

  #new pizza form
  get '/students/new' do
  erb(:new)

  end

  #actually make a pizza
  post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
  end