require "sinatra"
require "faker"

$db = {"rock" => "lee", "chris" => "rock", "scooby" => "doo"}

get "/" do
  @person = Faker::Name.name
  erb :home
end

get "/about" do
  erb :about
end

get '/skills' do
  erb :skills
end

get '/results' do
  require 'googlebooks'

@books = GoogleBooks.search(params[:search]) 
@first_book = books.first

  # def getResults
  #   @result = $db[params[:search]]
  #   if @result == nil
  #     @result = "Please provide valid search"
  #   end
  end
getResults()
erb :results
end
